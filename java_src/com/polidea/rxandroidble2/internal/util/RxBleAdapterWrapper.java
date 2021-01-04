package com.polidea.rxandroidble2.internal.util;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanSettings;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import bleshadow.javax.inject.Inject;
import com.polidea.rxandroidble2.internal.RxBleLog;
import java.util.List;
import java.util.Set;

public class RxBleAdapterWrapper {
    private final BluetoothAdapter bluetoothAdapter;

    @Inject
    public RxBleAdapterWrapper(@Nullable BluetoothAdapter bluetoothAdapter2) {
        this.bluetoothAdapter = bluetoothAdapter2;
    }

    public BluetoothDevice getRemoteDevice(String str) {
        return this.bluetoothAdapter.getRemoteDevice(str);
    }

    public boolean hasBluetoothAdapter() {
        return this.bluetoothAdapter != null;
    }

    public boolean isBluetoothEnabled() {
        return this.bluetoothAdapter != null && this.bluetoothAdapter.isEnabled();
    }

    public boolean startLegacyLeScan(BluetoothAdapter.LeScanCallback leScanCallback) {
        return this.bluetoothAdapter.startLeScan(leScanCallback);
    }

    public void stopLegacyLeScan(BluetoothAdapter.LeScanCallback leScanCallback) {
        this.bluetoothAdapter.stopLeScan(leScanCallback);
    }

    @TargetApi(21)
    public void startLeScan(List<ScanFilter> list, ScanSettings scanSettings, ScanCallback scanCallback) {
        this.bluetoothAdapter.getBluetoothLeScanner().startScan(list, scanSettings, scanCallback);
    }

    @RequiresApi(26)
    public int startLeScan(List<ScanFilter> list, ScanSettings scanSettings, PendingIntent pendingIntent) {
        return this.bluetoothAdapter.getBluetoothLeScanner().startScan(list, scanSettings, pendingIntent);
    }

    @RequiresApi(26)
    public void stopLeScan(PendingIntent pendingIntent) {
        this.bluetoothAdapter.getBluetoothLeScanner().stopScan(pendingIntent);
    }

    @TargetApi(21)
    public void stopLeScan(ScanCallback scanCallback) {
        BluetoothLeScanner bluetoothLeScanner = this.bluetoothAdapter.getBluetoothLeScanner();
        if (bluetoothLeScanner == null) {
            RxBleLog.d("Cannot perform BluetoothLeScanner.stopScan(ScanCallback) because scanner is unavailable (Probably adapter is off)", new Object[0]);
        } else {
            bluetoothLeScanner.stopScan(scanCallback);
        }
    }

    public Set<BluetoothDevice> getBondedDevices() {
        return this.bluetoothAdapter.getBondedDevices();
    }
}
