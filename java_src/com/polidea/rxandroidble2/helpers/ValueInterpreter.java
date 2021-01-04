package com.polidea.rxandroidble2.helpers;

import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import com.polidea.rxandroidble2.internal.RxBleLog;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.UByte;

public class ValueInterpreter {
    public static final int FORMAT_FLOAT = 52;
    public static final int FORMAT_SFLOAT = 50;
    public static final int FORMAT_SINT16 = 34;
    public static final int FORMAT_SINT32 = 36;
    public static final int FORMAT_SINT8 = 33;
    public static final int FORMAT_UINT16 = 18;
    public static final int FORMAT_UINT32 = 20;
    public static final int FORMAT_UINT8 = 17;

    @Retention(RetentionPolicy.SOURCE)
    public @interface FloatFormatType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface IntFormatType {
    }

    private static int getTypeLen(int i) {
        return i & 15;
    }

    private static int unsignedByteToInt(byte b) {
        return b & UByte.MAX_VALUE;
    }

    private static int unsignedToSigned(int i, int i2) {
        int i3 = 1 << (i2 - 1);
        return (i & i3) != 0 ? (i3 - (i & (i3 - 1))) * -1 : i;
    }

    private ValueInterpreter() {
    }

    public static Integer getIntValue(@NonNull byte[] bArr, int i, @IntRange(from = 0) int i2) {
        if (getTypeLen(i) + i2 > bArr.length) {
            RxBleLog.w("Int formatType (0x%x) is longer than remaining bytes (%d) - returning null", Integer.valueOf(i), Integer.valueOf(bArr.length - i2));
            return null;
        }
        switch (i) {
            case 17:
                return Integer.valueOf(unsignedByteToInt(bArr[i2]));
            case 18:
                return Integer.valueOf(unsignedBytesToInt(bArr[i2], bArr[i2 + 1]));
            case 20:
                return Integer.valueOf(unsignedBytesToInt(bArr[i2], bArr[i2 + 1], bArr[i2 + 2], bArr[i2 + 3]));
            case 33:
                return Integer.valueOf(unsignedToSigned(unsignedByteToInt(bArr[i2]), 8));
            case 34:
                return Integer.valueOf(unsignedToSigned(unsignedBytesToInt(bArr[i2], bArr[i2 + 1]), 16));
            case 36:
                return Integer.valueOf(unsignedToSigned(unsignedBytesToInt(bArr[i2], bArr[i2 + 1], bArr[i2 + 2], bArr[i2 + 3]), 32));
            default:
                RxBleLog.w("Passed an invalid integer formatType (0x%x) - returning null", Integer.valueOf(i));
                return null;
        }
    }

    public static Float getFloatValue(@NonNull byte[] bArr, int i, @IntRange(from = 0) int i2) {
        if (getTypeLen(i) + i2 > bArr.length) {
            RxBleLog.w("Float formatType (0x%x) is longer than remaining bytes (%d) - returning null", Integer.valueOf(i), Integer.valueOf(bArr.length - i2));
            return null;
        } else if (i == 50) {
            return Float.valueOf(bytesToFloat(bArr[i2], bArr[i2 + 1]));
        } else {
            if (i == 52) {
                return Float.valueOf(bytesToFloat(bArr[i2], bArr[i2 + 1], bArr[i2 + 2], bArr[i2 + 3]));
            }
            RxBleLog.w("Passed an invalid float formatType (0x%x) - returning null", Integer.valueOf(i));
            return null;
        }
    }

    public static String getStringValue(@NonNull byte[] bArr, @IntRange(from = 0) int i) {
        if (i > bArr.length) {
            RxBleLog.w("Passed offset that exceeds the length of the byte array - returning null", new Object[0]);
            return null;
        }
        byte[] bArr2 = new byte[(bArr.length - i)];
        for (int i2 = 0; i2 != bArr.length - i; i2++) {
            bArr2[i2] = bArr[i + i2];
        }
        return new String(bArr2);
    }

    private static int unsignedBytesToInt(byte b, byte b2) {
        return unsignedByteToInt(b) + (unsignedByteToInt(b2) << 8);
    }

    private static int unsignedBytesToInt(byte b, byte b2, byte b3, byte b4) {
        return unsignedByteToInt(b) + (unsignedByteToInt(b2) << 8) + (unsignedByteToInt(b3) << 16) + (unsignedByteToInt(b4) << 24);
    }

    private static float bytesToFloat(byte b, byte b2) {
        double unsignedToSigned = (double) unsignedToSigned(unsignedByteToInt(b) + ((unsignedByteToInt(b2) & 15) << 8), 12);
        double pow = Math.pow(10.0d, (double) unsignedToSigned(unsignedByteToInt(b2) >> 4, 4));
        Double.isNaN(unsignedToSigned);
        return (float) (unsignedToSigned * pow);
    }

    private static float bytesToFloat(byte b, byte b2, byte b3, byte b4) {
        double unsignedToSigned = (double) unsignedToSigned(unsignedByteToInt(b) + (unsignedByteToInt(b2) << 8) + (unsignedByteToInt(b3) << 16), 24);
        double pow = Math.pow(10.0d, (double) b4);
        Double.isNaN(unsignedToSigned);
        return (float) (unsignedToSigned * pow);
    }
}
