package com.polidea.rxandroidble2.internal.util;

import android.os.ParcelUuid;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.util.SparseArray;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.scan.ScanRecordImplCompat;
import com.polidea.rxandroidble2.scan.ScanRecord;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import kotlin.UByte;

@Deprecated
public class UUIDUtil {
    public static final ParcelUuid BASE_UUID = ParcelUuid.fromString("00000000-0000-1000-8000-00805F9B34FB");
    private static final int DATA_TYPE_FLAGS = 1;
    private static final int DATA_TYPE_LOCAL_NAME_COMPLETE = 9;
    private static final int DATA_TYPE_LOCAL_NAME_SHORT = 8;
    private static final int DATA_TYPE_MANUFACTURER_SPECIFIC_DATA = 255;
    private static final int DATA_TYPE_SERVICE_DATA = 22;
    private static final int DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE = 7;
    private static final int DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL = 6;
    private static final int DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE = 3;
    private static final int DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL = 2;
    private static final int DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE = 5;
    private static final int DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL = 4;
    private static final int DATA_TYPE_TX_POWER_LEVEL = 10;
    private static final String UUID_BASE_FORMAT = "%08x-0000-1000-8000-00805f9b34fb";
    public static final int UUID_BYTES_128_BIT = 16;
    public static final int UUID_BYTES_16_BIT = 2;
    public static final int UUID_BYTES_32_BIT = 4;

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    public List<UUID> extractUUIDs(byte[] bArr) {
        int i;
        ArrayList arrayList = new ArrayList();
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        while (order.remaining() > 2 && (i = order.get() & UByte.MAX_VALUE) != 0) {
            switch (order.get()) {
                case 2:
                case 3:
                    while (i >= 2) {
                        arrayList.add(UUID.fromString(String.format(UUID_BASE_FORMAT, Short.valueOf(order.getShort()))));
                        i -= 2;
                    }
                    break;
                case 4:
                case 5:
                    while (i >= 4) {
                        arrayList.add(UUID.fromString(String.format(UUID_BASE_FORMAT, Integer.valueOf(order.getInt()))));
                        i -= 4;
                    }
                    break;
                case 6:
                case 7:
                    while (i >= 16) {
                        arrayList.add(new UUID(order.getLong(), order.getLong()));
                        i -= 16;
                    }
                    break;
                default:
                    order.position(order.position() + Math.min(i - 1, order.remaining()));
                    break;
            }
        }
        return arrayList;
    }

    @NonNull
    public Set<UUID> toDistinctSet(@Nullable UUID[] uuidArr) {
        if (uuidArr == null) {
            uuidArr = new UUID[0];
        }
        return new HashSet(Arrays.asList(uuidArr));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ScanRecord parseFromBytes(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        SparseArray sparseArray = new SparseArray();
        HashMap hashMap = new HashMap();
        String str = null;
        int i = 0;
        int i2 = -1;
        byte b = -2147483648;
        while (true) {
            try {
                if (i < bArr.length) {
                    int i3 = i + 1;
                    int i4 = bArr[i] & UByte.MAX_VALUE;
                    if (i4 != 0) {
                        int i5 = i4 - 1;
                        int i6 = i3 + 1;
                        int i7 = bArr[i3] & UByte.MAX_VALUE;
                        if (i7 == 22) {
                            hashMap.put(parseUuidFrom(extractBytes(bArr, i6, 2)), extractBytes(bArr, i6 + 2, i5 - 2));
                        } else if (i7 != 255) {
                            switch (i7) {
                                case 1:
                                    i2 = bArr[i6] & UByte.MAX_VALUE;
                                    continue;
                                case 2:
                                case 3:
                                    parseServiceUuid(bArr, i6, i5, 2, arrayList);
                                    continue;
                                case 4:
                                case 5:
                                    parseServiceUuid(bArr, i6, i5, 4, arrayList);
                                    continue;
                                case 6:
                                case 7:
                                    parseServiceUuid(bArr, i6, i5, 16, arrayList);
                                    continue;
                                case 8:
                                case 9:
                                    str = new String(extractBytes(bArr, i6, i5));
                                    continue;
                                case 10:
                                    b = bArr[i6];
                                    continue;
                                default:
                                    continue;
                            }
                        } else {
                            sparseArray.put(((bArr[i6 + 1] & UByte.MAX_VALUE) << 8) + (255 & bArr[i6]), extractBytes(bArr, i6 + 2, i5 - 2));
                        }
                        i = i5 + i6;
                    }
                }
            } catch (Exception e) {
                RxBleLog.e(e, "unable to parse scan record: " + Arrays.toString(bArr), new Object[0]);
                return new ScanRecordImplCompat(null, null, null, -1, Integer.MIN_VALUE, null, bArr);
            }
        }
        return new ScanRecordImplCompat(arrayList.isEmpty() ? null : arrayList, sparseArray, hashMap, i2, b, str, bArr);
    }

    private static ParcelUuid parseUuidFrom(byte[] bArr) {
        long j;
        if (bArr != null) {
            int length = bArr.length;
            if (length != 2 && length != 4 && length != 16) {
                throw new IllegalArgumentException("uuidBytes length invalid - " + length);
            } else if (length == 16) {
                ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                return new ParcelUuid(new UUID(order.getLong(8), order.getLong(0)));
            } else {
                if (length == 2) {
                    j = ((long) (bArr[0] & UByte.MAX_VALUE)) + ((long) ((bArr[1] & UByte.MAX_VALUE) << 8));
                } else {
                    j = ((long) ((bArr[3] & UByte.MAX_VALUE) << 24)) + ((long) (bArr[0] & UByte.MAX_VALUE)) + ((long) ((bArr[1] & UByte.MAX_VALUE) << 8)) + ((long) ((bArr[2] & UByte.MAX_VALUE) << 16));
                }
                return new ParcelUuid(new UUID(BASE_UUID.getUuid().getMostSignificantBits() + (j << 32), BASE_UUID.getUuid().getLeastSignificantBits()));
            }
        } else {
            throw new IllegalArgumentException("uuidBytes cannot be null");
        }
    }

    private static int parseServiceUuid(byte[] bArr, int i, int i2, int i3, List<ParcelUuid> list) {
        while (i2 > 0) {
            list.add(parseUuidFrom(extractBytes(bArr, i, i3)));
            i2 -= i3;
            i += i3;
        }
        return i;
    }

    private static byte[] extractBytes(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }
}
