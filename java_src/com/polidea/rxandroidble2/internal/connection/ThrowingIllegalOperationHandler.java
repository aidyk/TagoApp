package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGattCharacteristic;
import bleshadow.javax.inject.Inject;
import com.polidea.rxandroidble2.internal.BleIllegalOperationException;
import com.polidea.rxandroidble2.internal.RxBleLog;

public class ThrowingIllegalOperationHandler extends IllegalOperationHandler {
    @Inject
    public ThrowingIllegalOperationHandler(IllegalOperationMessageCreator illegalOperationMessageCreator) {
        super(illegalOperationMessageCreator);
    }

    @Override // com.polidea.rxandroidble2.internal.connection.IllegalOperationHandler
    public BleIllegalOperationException handleMismatchData(BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        String createMismatchMessage = this.messageCreator.createMismatchMessage(bluetoothGattCharacteristic, i);
        RxBleLog.e(createMismatchMessage, new Object[0]);
        return new BleIllegalOperationException(createMismatchMessage, bluetoothGattCharacteristic.getUuid(), bluetoothGattCharacteristic.getProperties(), i);
    }
}
