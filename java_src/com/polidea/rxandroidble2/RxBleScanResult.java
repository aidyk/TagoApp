package com.polidea.rxandroidble2;

public class RxBleScanResult {
    private final RxBleDevice bleDevice;
    private final int rssi;
    private final byte[] scanRecord;

    public RxBleScanResult(RxBleDevice rxBleDevice, int i, byte[] bArr) {
        this.bleDevice = rxBleDevice;
        this.rssi = i;
        this.scanRecord = bArr;
    }

    public RxBleDevice getBleDevice() {
        return this.bleDevice;
    }

    public int getRssi() {
        return this.rssi;
    }

    public byte[] getScanRecord() {
        return this.scanRecord;
    }
}
