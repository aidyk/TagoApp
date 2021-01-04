package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGattCharacteristic;
import android.support.annotation.Nullable;
import com.polidea.rxandroidble2.internal.BleIllegalOperationException;

public abstract class IllegalOperationHandler {
    protected IllegalOperationMessageCreator messageCreator;

    @Nullable
    public abstract BleIllegalOperationException handleMismatchData(BluetoothGattCharacteristic bluetoothGattCharacteristic, int i);

    IllegalOperationHandler(IllegalOperationMessageCreator illegalOperationMessageCreator) {
        this.messageCreator = illegalOperationMessageCreator;
    }
}
