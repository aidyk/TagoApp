package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.os.DeadObjectException;
import android.support.annotation.NonNull;
import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.exceptions.BleDisconnectedException;
import com.polidea.rxandroidble2.exceptions.BleException;
import com.polidea.rxandroidble2.exceptions.BleGattCallbackTimeoutException;
import com.polidea.rxandroidble2.exceptions.BleGattOperationType;
import com.polidea.rxandroidble2.internal.QueueOperation;
import com.polidea.rxandroidble2.internal.connection.BluetoothGattProvider;
import com.polidea.rxandroidble2.internal.connection.ConnectionStateChangeListener;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import com.polidea.rxandroidble2.internal.serialization.QueueReleaseInterface;
import com.polidea.rxandroidble2.internal.util.BleConnectionCompat;
import com.polidea.rxandroidble2.internal.util.DisposableUtil;
import io.reactivex.ObservableEmitter;
import io.reactivex.Single;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.SingleSource;
import io.reactivex.SingleTransformer;
import io.reactivex.functions.Action;
import io.reactivex.functions.Predicate;
import io.reactivex.observers.DisposableSingleObserver;
import java.util.concurrent.Callable;

public class ConnectOperation extends QueueOperation<BluetoothGatt> {
    private final boolean autoConnect;
    private final BluetoothDevice bluetoothDevice;
    private final BluetoothGattProvider bluetoothGattProvider;
    private final TimeoutConfiguration connectTimeout;
    private final BleConnectionCompat connectionCompat;
    private final ConnectionStateChangeListener connectionStateChangedAction;
    private final RxBleGattCallback rxBleGattCallback;

    @Inject
    ConnectOperation(BluetoothDevice bluetoothDevice2, BleConnectionCompat bleConnectionCompat, RxBleGattCallback rxBleGattCallback2, BluetoothGattProvider bluetoothGattProvider2, @Named("connect-timeout") TimeoutConfiguration timeoutConfiguration, @Named("autoConnect") boolean z, ConnectionStateChangeListener connectionStateChangeListener) {
        this.bluetoothDevice = bluetoothDevice2;
        this.connectionCompat = bleConnectionCompat;
        this.rxBleGattCallback = rxBleGattCallback2;
        this.bluetoothGattProvider = bluetoothGattProvider2;
        this.connectTimeout = timeoutConfiguration;
        this.autoConnect = z;
        this.connectionStateChangedAction = connectionStateChangeListener;
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.QueueOperation
    public void protectedRun(ObservableEmitter<BluetoothGatt> observableEmitter, final QueueReleaseInterface queueReleaseInterface) {
        observableEmitter.setDisposable((DisposableSingleObserver) getConnectedBluetoothGatt().compose(wrapWithTimeoutWhenNotAutoconnecting()).doFinally(new Action() {
            /* class com.polidea.rxandroidble2.internal.operations.ConnectOperation.AnonymousClass1 */

            @Override // io.reactivex.functions.Action
            public void run() {
                queueReleaseInterface.release();
            }
        }).subscribeWith(DisposableUtil.disposableSingleObserverFromEmitter(observableEmitter)));
        if (this.autoConnect) {
            queueReleaseInterface.release();
        }
    }

    private SingleTransformer<BluetoothGatt, BluetoothGatt> wrapWithTimeoutWhenNotAutoconnecting() {
        return new SingleTransformer<BluetoothGatt, BluetoothGatt>() {
            /* class com.polidea.rxandroidble2.internal.operations.ConnectOperation.AnonymousClass2 */

            /* Return type fixed from 'io.reactivex.Single<android.bluetooth.BluetoothGatt>' to match base method */
            @Override // io.reactivex.SingleTransformer
            public SingleSource<BluetoothGatt> apply(Single<BluetoothGatt> single) {
                return ConnectOperation.this.autoConnect ? single : single.timeout(ConnectOperation.this.connectTimeout.timeout, ConnectOperation.this.connectTimeout.timeoutTimeUnit, ConnectOperation.this.connectTimeout.timeoutScheduler, ConnectOperation.this.prepareConnectionTimeoutError());
            }
        };
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    @NonNull
    private Single<BluetoothGatt> prepareConnectionTimeoutError() {
        return Single.fromCallable(new Callable<BluetoothGatt>() {
            /* class com.polidea.rxandroidble2.internal.operations.ConnectOperation.AnonymousClass3 */

            @Override // java.util.concurrent.Callable
            public BluetoothGatt call() {
                throw new BleGattCallbackTimeoutException(ConnectOperation.this.bluetoothGattProvider.getBluetoothGatt(), BleGattOperationType.CONNECTION_STATE);
            }
        });
    }

    @NonNull
    private Single<BluetoothGatt> getConnectedBluetoothGatt() {
        return Single.create(new SingleOnSubscribe<BluetoothGatt>() {
            /* class com.polidea.rxandroidble2.internal.operations.ConnectOperation.AnonymousClass4 */

            @Override // io.reactivex.SingleOnSubscribe
            public void subscribe(SingleEmitter<BluetoothGatt> singleEmitter) throws Exception {
                singleEmitter.setDisposable((DisposableSingleObserver) ConnectOperation.this.getBluetoothGattAndChangeStatusToConnected().delaySubscription(ConnectOperation.this.rxBleGattCallback.getOnConnectionStateChange().filter(new Predicate<RxBleConnection.RxBleConnectionState>() {
                    /* class com.polidea.rxandroidble2.internal.operations.ConnectOperation.AnonymousClass4.AnonymousClass1 */

                    public boolean test(RxBleConnection.RxBleConnectionState rxBleConnectionState) throws Exception {
                        return rxBleConnectionState == RxBleConnection.RxBleConnectionState.CONNECTED;
                    }
                })).mergeWith(ConnectOperation.this.rxBleGattCallback.observeDisconnect().firstOrError()).firstOrError().subscribeWith(DisposableUtil.disposableSingleObserverFromEmitter(singleEmitter)));
                ConnectOperation.this.connectionStateChangedAction.onConnectionStateChange(RxBleConnection.RxBleConnectionState.CONNECTING);
                ConnectOperation.this.bluetoothGattProvider.updateBluetoothGatt(ConnectOperation.this.connectionCompat.connectGatt(ConnectOperation.this.bluetoothDevice, ConnectOperation.this.autoConnect, ConnectOperation.this.rxBleGattCallback.getBluetoothGattCallback()));
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private Single<BluetoothGatt> getBluetoothGattAndChangeStatusToConnected() {
        return Single.fromCallable(new Callable<BluetoothGatt>() {
            /* class com.polidea.rxandroidble2.internal.operations.ConnectOperation.AnonymousClass5 */

            @Override // java.util.concurrent.Callable
            public BluetoothGatt call() {
                ConnectOperation.this.connectionStateChangedAction.onConnectionStateChange(RxBleConnection.RxBleConnectionState.CONNECTED);
                return ConnectOperation.this.bluetoothGattProvider.getBluetoothGatt();
            }
        });
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.QueueOperation
    public BleException provideException(DeadObjectException deadObjectException) {
        return new BleDisconnectedException(deadObjectException, this.bluetoothDevice.getAddress(), -1);
    }
}
