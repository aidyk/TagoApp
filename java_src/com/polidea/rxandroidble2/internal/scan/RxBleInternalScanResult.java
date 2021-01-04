package com.polidea.rxandroidble2.internal.scan;

import android.bluetooth.BluetoothDevice;
import com.polidea.rxandroidble2.scan.ScanCallbackType;
import com.polidea.rxandroidble2.scan.ScanRecord;

public class RxBleInternalScanResult {
    private final BluetoothDevice bluetoothDevice;
    private final int rssi;
    private final ScanCallbackType scanCallbackType;
    private final ScanRecord scanRecord;
    private final long timestampNanos;

    public RxBleInternalScanResult(BluetoothDevice bluetoothDevice2, int i, long j, ScanRecord scanRecord2, ScanCallbackType scanCallbackType2) {
        this.bluetoothDevice = bluetoothDevice2;
        this.rssi = i;
        this.timestampNanos = j;
        this.scanRecord = scanRecord2;
        this.scanCallbackType = scanCallbackType2;
    }

    public BluetoothDevice getBluetoothDevice() {
        return this.bluetoothDevice;
    }

    public int getRssi() {
        return this.rssi;
    }

    public ScanRecord getScanRecord() {
        return this.scanRecord;
    }

    public long getTimestampNanos() {
        return this.timestampNanos;
    }

    public ScanCallbackType getScanCallbackType() {
        return this.scanCallbackType;
    }
}
