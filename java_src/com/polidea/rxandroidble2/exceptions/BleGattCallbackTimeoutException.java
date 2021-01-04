package com.polidea.rxandroidble2.exceptions;

import android.bluetooth.BluetoothGatt;

public class BleGattCallbackTimeoutException extends BleGattException {
    public BleGattCallbackTimeoutException(BluetoothGatt bluetoothGatt, BleGattOperationType bleGattOperationType) {
        super(bluetoothGatt, bleGattOperationType);
    }
}
