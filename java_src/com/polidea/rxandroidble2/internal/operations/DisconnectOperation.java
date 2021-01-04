package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothManager;
import android.os.DeadObjectException;
import android.support.annotation.RestrictTo;
import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.exceptions.BleDisconnectedException;
import com.polidea.rxandroidble2.exceptions.BleException;
import com.polidea.rxandroidble2.internal.QueueOperation;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.connection.BluetoothGattProvider;
import com.polidea.rxandroidble2.internal.connection.ConnectionStateChangeListener;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import com.polidea.rxandroidble2.internal.serialization.QueueReleaseInterface;
import io.reactivex.Emitter;
import io.reactivex.ObservableEmitter;
import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;

public class DisconnectOperation extends QueueOperation<Void> {
    private final BluetoothGattProvider bluetoothGattProvider;
    private final Scheduler bluetoothInteractionScheduler;
    private final BluetoothManager bluetoothManager;
    private final ConnectionStateChangeListener connectionStateChangeListener;
    private final String macAddress;
    private final RxBleGattCallback rxBleGattCallback;
    private final TimeoutConfiguration timeoutConfiguration;

    @Inject
    DisconnectOperation(RxBleGattCallback rxBleGattCallback2, BluetoothGattProvider bluetoothGattProvider2, @Named("mac-address") String str, BluetoothManager bluetoothManager2, @Named("bluetooth_interaction") Scheduler scheduler, @Named("disconnect-timeout") TimeoutConfiguration timeoutConfiguration2, ConnectionStateChangeListener connectionStateChangeListener2) {
        this.rxBleGattCallback = rxBleGattCallback2;
        this.bluetoothGattProvider = bluetoothGattProvider2;
        this.macAddress = str;
        this.bluetoothManager = bluetoothManager2;
        this.bluetoothInteractionScheduler = scheduler;
        this.timeoutConfiguration = timeoutConfiguration2;
        this.connectionStateChangeListener = connectionStateChangeListener2;
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.QueueOperation
    public void protectedRun(final ObservableEmitter<Void> observableEmitter, final QueueReleaseInterface queueReleaseInterface) {
        this.connectionStateChangeListener.onConnectionStateChange(RxBleConnection.RxBleConnectionState.DISCONNECTING);
        BluetoothGatt bluetoothGatt = this.bluetoothGattProvider.getBluetoothGatt();
        if (bluetoothGatt == null) {
            RxBleLog.w("Disconnect operation has been executed but GATT instance was null - considering disconnected.", new Object[0]);
            considerGattDisconnected(observableEmitter, queueReleaseInterface);
            return;
        }
        disconnectIfRequired(bluetoothGatt).observeOn(this.bluetoothInteractionScheduler).subscribe(new SingleObserver<BluetoothGatt>() {
            /* class com.polidea.rxandroidble2.internal.operations.DisconnectOperation.AnonymousClass1 */

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
            }

            public void onSuccess(BluetoothGatt bluetoothGatt) {
                bluetoothGatt.close();
                DisconnectOperation.this.considerGattDisconnected(observableEmitter, queueReleaseInterface);
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                RxBleLog.w(th, "Disconnect operation has been executed but finished with an error - considering disconnected.", new Object[0]);
                DisconnectOperation.this.considerGattDisconnected(observableEmitter, queueReleaseInterface);
            }
        });
    }

    private Single<BluetoothGatt> disconnectIfRequired(BluetoothGatt bluetoothGatt) {
        if (isDisconnected(bluetoothGatt)) {
            return Single.just(bluetoothGatt);
        }
        return disconnect(bluetoothGatt);
    }

    /* access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.SUBCLASSES})
    public void considerGattDisconnected(Emitter<Void> emitter, QueueReleaseInterface queueReleaseInterface) {
        this.connectionStateChangeListener.onConnectionStateChange(RxBleConnection.RxBleConnectionState.DISCONNECTED);
        queueReleaseInterface.release();
        emitter.onComplete();
    }

    private boolean isDisconnected(BluetoothGatt bluetoothGatt) {
        return this.bluetoothManager.getConnectionState(bluetoothGatt.getDevice(), 7) == 0;
    }

    private Single<BluetoothGatt> disconnect(BluetoothGatt bluetoothGatt) {
        return new DisconnectGattObservable(bluetoothGatt, this.rxBleGattCallback, this.bluetoothInteractionScheduler).timeout(this.timeoutConfiguration.timeout, this.timeoutConfiguration.timeoutTimeUnit, this.timeoutConfiguration.timeoutScheduler, Single.just(bluetoothGatt));
    }

    /* access modifiers changed from: private */
    public static class DisconnectGattObservable extends Single<BluetoothGatt> {
        private final BluetoothGatt bluetoothGatt;
        private final Scheduler disconnectScheduler;
        private final RxBleGattCallback rxBleGattCallback;

        DisconnectGattObservable(BluetoothGatt bluetoothGatt2, RxBleGattCallback rxBleGattCallback2, Scheduler scheduler) {
            this.bluetoothGatt = bluetoothGatt2;
            this.rxBleGattCallback = rxBleGattCallback2;
            this.disconnectScheduler = scheduler;
        }

        /* access modifiers changed from: protected */
        @Override // io.reactivex.Single
        public void subscribeActual(SingleObserver<? super BluetoothGatt> singleObserver) {
            this.rxBleGattCallback.getOnConnectionStateChange().filter(new Predicate<RxBleConnection.RxBleConnectionState>() {
                /* class com.polidea.rxandroidble2.internal.operations.DisconnectOperation.DisconnectGattObservable.AnonymousClass2 */

                public boolean test(RxBleConnection.RxBleConnectionState rxBleConnectionState) {
                    return rxBleConnectionState == RxBleConnection.RxBleConnectionState.DISCONNECTED;
                }
            }).firstOrError().map(new Function<RxBleConnection.RxBleConnectionState, BluetoothGatt>() {
                /* class com.polidea.rxandroidble2.internal.operations.DisconnectOperation.DisconnectGattObservable.AnonymousClass1 */

                public BluetoothGatt apply(RxBleConnection.RxBleConnectionState rxBleConnectionState) {
                    return DisconnectGattObservable.this.bluetoothGatt;
                }
            }).subscribe((SingleObserver<? super R>) singleObserver);
            this.disconnectScheduler.createWorker().schedule(new Runnable() {
                /* class com.polidea.rxandroidble2.internal.operations.DisconnectOperation.DisconnectGattObservable.AnonymousClass3 */

                public void run() {
                    DisconnectGattObservable.this.bluetoothGatt.disconnect();
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.QueueOperation
    public BleException provideException(DeadObjectException deadObjectException) {
        return new BleDisconnectedException(deadObjectException, this.macAddress, -1);
    }
}
