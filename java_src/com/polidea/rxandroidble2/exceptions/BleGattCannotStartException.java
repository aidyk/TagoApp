package com.polidea.rxandroidble2.exceptions;

import android.bluetooth.BluetoothGatt;

public class BleGattCannotStartException extends BleGattException {
    @Deprecated
    public BleGattCannotStartException(BleGattOperationType bleGattOperationType) {
        super((BluetoothGatt) null, bleGattOperationType);
    }

    public BleGattCannotStartException(BluetoothGatt bluetoothGatt, BleGattOperationType bleGattOperationType) {
        super(bluetoothGatt, bleGattOperationType);
    }
}
