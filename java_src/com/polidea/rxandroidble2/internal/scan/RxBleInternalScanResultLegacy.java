package com.polidea.rxandroidble2.internal.scan;

import android.bluetooth.BluetoothDevice;

public class RxBleInternalScanResultLegacy {
    private final BluetoothDevice bluetoothDevice;
    private final int rssi;
    private final byte[] scanRecord;

    public RxBleInternalScanResultLegacy(BluetoothDevice bluetoothDevice2, int i, byte[] bArr) {
        this.bluetoothDevice = bluetoothDevice2;
        this.rssi = i;
        this.scanRecord = bArr;
    }

    public BluetoothDevice getBluetoothDevice() {
        return this.bluetoothDevice;
    }

    public int getRssi() {
        return this.rssi;
    }

    public byte[] getScanRecord() {
        return this.scanRecord;
    }
}
