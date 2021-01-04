package com.polidea.rxandroidble2.internal.scan;

import android.os.ParcelUuid;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.util.SparseArray;
import com.polidea.rxandroidble2.scan.ScanRecord;
import java.util.List;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ScanRecordImplCompat implements ScanRecord {
    private final int advertiseFlags;
    private final byte[] bytes;
    private final String deviceName;
    private final SparseArray<byte[]> manufacturerSpecificData;
    private final Map<ParcelUuid, byte[]> serviceData;
    @Nullable
    private final List<ParcelUuid> serviceUuids;
    private final int txPowerLevel;

    public ScanRecordImplCompat(@Nullable List<ParcelUuid> list, SparseArray<byte[]> sparseArray, Map<ParcelUuid, byte[]> map, int i, int i2, String str, byte[] bArr) {
        this.serviceUuids = list;
        this.manufacturerSpecificData = sparseArray;
        this.serviceData = map;
        this.deviceName = str;
        this.advertiseFlags = i;
        this.txPowerLevel = i2;
        this.bytes = bArr;
    }

    @Override // com.polidea.rxandroidble2.scan.ScanRecord
    public int getAdvertiseFlags() {
        return this.advertiseFlags;
    }

    @Override // com.polidea.rxandroidble2.scan.ScanRecord
    @Nullable
    public List<ParcelUuid> getServiceUuids() {
        return this.serviceUuids;
    }

    @Override // com.polidea.rxandroidble2.scan.ScanRecord
    public SparseArray<byte[]> getManufacturerSpecificData() {
        return this.manufacturerSpecificData;
    }

    @Override // com.polidea.rxandroidble2.scan.ScanRecord
    @Nullable
    public byte[] getManufacturerSpecificData(int i) {
        return this.manufacturerSpecificData.get(i);
    }

    @Override // com.polidea.rxandroidble2.scan.ScanRecord
    public Map<ParcelUuid, byte[]> getServiceData() {
        return this.serviceData;
    }

    @Override // com.polidea.rxandroidble2.scan.ScanRecord
    @Nullable
    public byte[] getServiceData(ParcelUuid parcelUuid) {
        if (parcelUuid == null) {
            return null;
        }
        return this.serviceData.get(parcelUuid);
    }

    @Override // com.polidea.rxandroidble2.scan.ScanRecord
    public int getTxPowerLevel() {
        return this.txPowerLevel;
    }

    @Override // com.polidea.rxandroidble2.scan.ScanRecord
    @Nullable
    public String getDeviceName() {
        return this.deviceName;
    }

    @Override // com.polidea.rxandroidble2.scan.ScanRecord
    public byte[] getBytes() {
        return this.bytes;
    }
}
