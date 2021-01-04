package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGattCharacteristic;
import bleshadow.javax.inject.Inject;
import com.polidea.rxandroidble2.internal.BleIllegalOperationException;
import com.polidea.rxandroidble2.internal.RxBleLog;

public class LoggingIllegalOperationHandler extends IllegalOperationHandler {
    @Inject
    public LoggingIllegalOperationHandler(IllegalOperationMessageCreator illegalOperationMessageCreator) {
        super(illegalOperationMessageCreator);
    }

    @Override // com.polidea.rxandroidble2.internal.connection.IllegalOperationHandler
    public BleIllegalOperationException handleMismatchData(BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        RxBleLog.w(this.messageCreator.createMismatchMessage(bluetoothGattCharacteristic, i), new Object[0]);
        return null;
    }
}
