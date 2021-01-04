package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothGatt;
import android.support.annotation.RequiresApi;
import bleshadow.javax.inject.Inject;
import com.polidea.rxandroidble2.exceptions.BleGattCannotStartException;
import com.polidea.rxandroidble2.exceptions.BleGattOperationType;
import com.polidea.rxandroidble2.internal.SingleResponseOperation;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import io.reactivex.Scheduler;
import io.reactivex.Single;
import java.util.concurrent.TimeUnit;

public class ConnectionPriorityChangeOperation extends SingleResponseOperation<Long> {
    private final int connectionPriority;
    private final Scheduler delayScheduler;
    private final long operationTimeout;
    private final TimeUnit timeUnit;

    @Inject
    ConnectionPriorityChangeOperation(RxBleGattCallback rxBleGattCallback, BluetoothGatt bluetoothGatt, TimeoutConfiguration timeoutConfiguration, int i, long j, TimeUnit timeUnit2, Scheduler scheduler) {
        super(bluetoothGatt, rxBleGattCallback, BleGattOperationType.CONNECTION_PRIORITY_CHANGE, timeoutConfiguration);
        this.connectionPriority = i;
        this.operationTimeout = j;
        this.timeUnit = timeUnit2;
        this.delayScheduler = scheduler;
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.SingleResponseOperation
    public Single<Long> getCallback(RxBleGattCallback rxBleGattCallback) {
        return Single.timer(this.operationTimeout, this.timeUnit, this.delayScheduler);
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.SingleResponseOperation
    @RequiresApi(api = 21)
    public boolean startOperation(BluetoothGatt bluetoothGatt) throws IllegalArgumentException, BleGattCannotStartException {
        return bluetoothGatt.requestConnectionPriority(this.connectionPriority);
    }
}
