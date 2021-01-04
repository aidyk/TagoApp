package com.polidea.rxandroidble2.internal;

import android.bluetooth.BluetoothGatt;
import android.os.DeadObjectException;
import com.polidea.rxandroidble2.exceptions.BleDisconnectedException;
import com.polidea.rxandroidble2.exceptions.BleException;
import com.polidea.rxandroidble2.exceptions.BleGattCallbackTimeoutException;
import com.polidea.rxandroidble2.exceptions.BleGattCannotStartException;
import com.polidea.rxandroidble2.exceptions.BleGattOperationType;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import com.polidea.rxandroidble2.internal.operations.TimeoutConfiguration;
import com.polidea.rxandroidble2.internal.serialization.QueueReleaseInterface;
import com.polidea.rxandroidble2.internal.util.QueueReleasingEmitterWrapper;
import io.reactivex.ObservableEmitter;
import io.reactivex.Scheduler;
import io.reactivex.Single;

public abstract class SingleResponseOperation<T> extends QueueOperation<T> {
    private final BluetoothGatt bluetoothGatt;
    private final BleGattOperationType operationType;
    private final RxBleGattCallback rxBleGattCallback;
    private final TimeoutConfiguration timeoutConfiguration;

    /* access modifiers changed from: protected */
    public abstract Single<T> getCallback(RxBleGattCallback rxBleGattCallback2);

    /* access modifiers changed from: protected */
    public abstract boolean startOperation(BluetoothGatt bluetoothGatt2);

    public SingleResponseOperation(BluetoothGatt bluetoothGatt2, RxBleGattCallback rxBleGattCallback2, BleGattOperationType bleGattOperationType, TimeoutConfiguration timeoutConfiguration2) {
        this.bluetoothGatt = bluetoothGatt2;
        this.rxBleGattCallback = rxBleGattCallback2;
        this.operationType = bleGattOperationType;
        this.timeoutConfiguration = timeoutConfiguration2;
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.QueueOperation
    public final void protectedRun(ObservableEmitter<T> observableEmitter, QueueReleaseInterface queueReleaseInterface) throws Throwable {
        QueueReleasingEmitterWrapper queueReleasingEmitterWrapper = new QueueReleasingEmitterWrapper(observableEmitter, queueReleaseInterface);
        getCallback(this.rxBleGattCallback).timeout(this.timeoutConfiguration.timeout, this.timeoutConfiguration.timeoutTimeUnit, this.timeoutConfiguration.timeoutScheduler, timeoutFallbackProcedure(this.bluetoothGatt, this.rxBleGattCallback, this.timeoutConfiguration.timeoutScheduler)).toObservable().subscribe(queueReleasingEmitterWrapper);
        if (!startOperation(this.bluetoothGatt)) {
            queueReleasingEmitterWrapper.cancel();
            queueReleasingEmitterWrapper.onError(new BleGattCannotStartException(this.bluetoothGatt, this.operationType));
        }
    }

    /* access modifiers changed from: protected */
    public Single<T> timeoutFallbackProcedure(BluetoothGatt bluetoothGatt2, RxBleGattCallback rxBleGattCallback2, Scheduler scheduler) {
        return Single.error(new BleGattCallbackTimeoutException(this.bluetoothGatt, this.operationType));
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.QueueOperation
    public BleException provideException(DeadObjectException deadObjectException) {
        return new BleDisconnectedException(deadObjectException, this.bluetoothGatt.getDevice().getAddress(), -1);
    }
}
