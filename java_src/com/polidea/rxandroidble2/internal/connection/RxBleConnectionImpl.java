package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.os.DeadObjectException;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.NotificationSetupMode;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.RxBleCustomOperation;
import com.polidea.rxandroidble2.RxBleDeviceServices;
import com.polidea.rxandroidble2.exceptions.BleDisconnectedException;
import com.polidea.rxandroidble2.exceptions.BleException;
import com.polidea.rxandroidble2.internal.Priority;
import com.polidea.rxandroidble2.internal.QueueOperation;
import com.polidea.rxandroidble2.internal.operations.OperationsProvider;
import com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueue;
import com.polidea.rxandroidble2.internal.serialization.QueueReleaseInterface;
import com.polidea.rxandroidble2.internal.util.ByteAssociation;
import com.polidea.rxandroidble2.internal.util.QueueReleasingEmitterWrapper;
import io.reactivex.Completable;
import io.reactivex.CompletableSource;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableSource;
import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.SingleSource;
import io.reactivex.functions.Action;
import io.reactivex.functions.Function;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

@ConnectionScope
public class RxBleConnectionImpl implements RxBleConnection {
    private final BluetoothGatt bluetoothGatt;
    private final Scheduler callbackScheduler;
    private final DescriptorWriter descriptorWriter;
    private final RxBleGattCallback gattCallback;
    private final IllegalOperationChecker illegalOperationChecker;
    private final Provider<RxBleConnection.LongWriteOperationBuilder> longWriteOperationBuilderProvider;
    private final MtuProvider mtuProvider;
    private final NotificationAndIndicationManager notificationIndicationManager;
    private final ConnectionOperationQueue operationQueue;
    private final OperationsProvider operationsProvider;
    private final ServiceDiscoveryManager serviceDiscoveryManager;

    @Inject
    public RxBleConnectionImpl(ConnectionOperationQueue connectionOperationQueue, RxBleGattCallback rxBleGattCallback, BluetoothGatt bluetoothGatt2, ServiceDiscoveryManager serviceDiscoveryManager2, NotificationAndIndicationManager notificationAndIndicationManager, MtuProvider mtuProvider2, DescriptorWriter descriptorWriter2, OperationsProvider operationsProvider2, Provider<RxBleConnection.LongWriteOperationBuilder> provider, @Named("bluetooth_interaction") Scheduler scheduler, IllegalOperationChecker illegalOperationChecker2) {
        this.operationQueue = connectionOperationQueue;
        this.gattCallback = rxBleGattCallback;
        this.bluetoothGatt = bluetoothGatt2;
        this.serviceDiscoveryManager = serviceDiscoveryManager2;
        this.notificationIndicationManager = notificationAndIndicationManager;
        this.mtuProvider = mtuProvider2;
        this.descriptorWriter = descriptorWriter2;
        this.operationsProvider = operationsProvider2;
        this.longWriteOperationBuilderProvider = provider;
        this.callbackScheduler = scheduler;
        this.illegalOperationChecker = illegalOperationChecker2;
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public RxBleConnection.LongWriteOperationBuilder createNewLongWriteBuilder() {
        return this.longWriteOperationBuilderProvider.get();
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    @RequiresApi(api = 21)
    public Completable requestConnectionPriority(int i, long j, @NonNull TimeUnit timeUnit) {
        if (i != 2 && i != 0 && i != 1) {
            return Completable.error(new IllegalArgumentException("Connection priority must have valid value from BluetoothGatt (received " + i + ")"));
        } else if (j <= 0) {
            return Completable.error(new IllegalArgumentException("Delay must be bigger than 0"));
        } else {
            return this.operationQueue.queue(this.operationsProvider.provideConnectionPriorityChangeOperation(i, j, timeUnit)).ignoreElements();
        }
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    @RequiresApi(api = 21)
    public Single<Integer> requestMtu(int i) {
        return this.operationQueue.queue(this.operationsProvider.provideMtuChangeOperation(i)).firstOrError();
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public int getMtu() {
        return this.mtuProvider.getMtu();
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Single<RxBleDeviceServices> discoverServices() {
        return this.serviceDiscoveryManager.getDiscoverServicesSingle(20, TimeUnit.SECONDS);
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Single<RxBleDeviceServices> discoverServices(long j, @NonNull TimeUnit timeUnit) {
        return this.serviceDiscoveryManager.getDiscoverServicesSingle(j, timeUnit);
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    @Deprecated
    public Single<BluetoothGattCharacteristic> getCharacteristic(@NonNull final UUID uuid) {
        return discoverServices().flatMap(new Function<RxBleDeviceServices, Single<? extends BluetoothGattCharacteristic>>() {
            /* class com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl.AnonymousClass1 */

            public Single<? extends BluetoothGattCharacteristic> apply(RxBleDeviceServices rxBleDeviceServices) {
                return rxBleDeviceServices.getCharacteristic(uuid);
            }
        });
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Observable<Observable<byte[]>> setupNotification(@NonNull UUID uuid) {
        return setupNotification(uuid, NotificationSetupMode.DEFAULT);
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Observable<Observable<byte[]>> setupNotification(@NonNull BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        return setupNotification(bluetoothGattCharacteristic, NotificationSetupMode.DEFAULT);
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Observable<Observable<byte[]>> setupNotification(@NonNull UUID uuid, @NonNull final NotificationSetupMode notificationSetupMode) {
        return getCharacteristic(uuid).flatMapObservable(new Function<BluetoothGattCharacteristic, ObservableSource<? extends Observable<byte[]>>>() {
            /* class com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl.AnonymousClass2 */

            public Observable<? extends Observable<byte[]>> apply(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
                return RxBleConnectionImpl.this.setupNotification(bluetoothGattCharacteristic, notificationSetupMode);
            }
        });
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Observable<Observable<byte[]>> setupNotification(@NonNull BluetoothGattCharacteristic bluetoothGattCharacteristic, @NonNull NotificationSetupMode notificationSetupMode) {
        return this.illegalOperationChecker.checkAnyPropertyMatches(bluetoothGattCharacteristic, 16).andThen(this.notificationIndicationManager.setupServerInitiatedCharacteristicRead(bluetoothGattCharacteristic, notificationSetupMode, false));
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Observable<Observable<byte[]>> setupIndication(@NonNull UUID uuid) {
        return setupIndication(uuid, NotificationSetupMode.DEFAULT);
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Observable<Observable<byte[]>> setupIndication(@NonNull BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        return setupIndication(bluetoothGattCharacteristic, NotificationSetupMode.DEFAULT);
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Observable<Observable<byte[]>> setupIndication(@NonNull UUID uuid, @NonNull final NotificationSetupMode notificationSetupMode) {
        return getCharacteristic(uuid).flatMapObservable(new Function<BluetoothGattCharacteristic, ObservableSource<? extends Observable<byte[]>>>() {
            /* class com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl.AnonymousClass3 */

            public Observable<? extends Observable<byte[]>> apply(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
                return RxBleConnectionImpl.this.setupIndication(bluetoothGattCharacteristic, notificationSetupMode);
            }
        });
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Observable<Observable<byte[]>> setupIndication(@NonNull BluetoothGattCharacteristic bluetoothGattCharacteristic, @NonNull NotificationSetupMode notificationSetupMode) {
        return this.illegalOperationChecker.checkAnyPropertyMatches(bluetoothGattCharacteristic, 32).andThen(this.notificationIndicationManager.setupServerInitiatedCharacteristicRead(bluetoothGattCharacteristic, notificationSetupMode, true));
    }

    /* JADX DEBUG: Type inference failed for r2v2. Raw type applied. Possible types: io.reactivex.Single<R>, io.reactivex.Single<byte[]> */
    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Single<byte[]> readCharacteristic(@NonNull UUID uuid) {
        return (Single<R>) getCharacteristic(uuid).flatMap(new Function<BluetoothGattCharacteristic, SingleSource<? extends byte[]>>() {
            /* class com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl.AnonymousClass4 */

            public SingleSource<? extends byte[]> apply(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
                return RxBleConnectionImpl.this.readCharacteristic(bluetoothGattCharacteristic);
            }
        });
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Single<byte[]> readCharacteristic(@NonNull BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        return this.illegalOperationChecker.checkAnyPropertyMatches(bluetoothGattCharacteristic, 2).andThen(this.operationQueue.queue(this.operationsProvider.provideReadCharacteristic(bluetoothGattCharacteristic))).firstOrError();
    }

    /* JADX DEBUG: Type inference failed for r2v2. Raw type applied. Possible types: io.reactivex.Single<R>, io.reactivex.Single<byte[]> */
    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Single<byte[]> writeCharacteristic(@NonNull UUID uuid, @NonNull final byte[] bArr) {
        return (Single<R>) getCharacteristic(uuid).flatMap(new Function<BluetoothGattCharacteristic, SingleSource<? extends byte[]>>() {
            /* class com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl.AnonymousClass5 */

            public SingleSource<? extends byte[]> apply(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
                return RxBleConnectionImpl.this.writeCharacteristic(bluetoothGattCharacteristic, bArr);
            }
        });
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Single<byte[]> writeCharacteristic(@NonNull BluetoothGattCharacteristic bluetoothGattCharacteristic, @NonNull byte[] bArr) {
        return this.illegalOperationChecker.checkAnyPropertyMatches(bluetoothGattCharacteristic, 76).andThen(this.operationQueue.queue(this.operationsProvider.provideWriteCharacteristic(bluetoothGattCharacteristic, bArr))).firstOrError();
    }

    /* JADX DEBUG: Type inference failed for r3v2. Raw type applied. Possible types: io.reactivex.Single<R>, io.reactivex.Single<byte[]> */
    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Single<byte[]> readDescriptor(@NonNull final UUID uuid, @NonNull final UUID uuid2, @NonNull final UUID uuid3) {
        return (Single<R>) discoverServices().flatMap(new Function<RxBleDeviceServices, SingleSource<BluetoothGattDescriptor>>() {
            /* class com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl.AnonymousClass7 */

            public SingleSource<BluetoothGattDescriptor> apply(RxBleDeviceServices rxBleDeviceServices) {
                return rxBleDeviceServices.getDescriptor(uuid, uuid2, uuid3);
            }
        }).flatMap(new Function<BluetoothGattDescriptor, SingleSource<byte[]>>() {
            /* class com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl.AnonymousClass6 */

            public SingleSource<byte[]> apply(BluetoothGattDescriptor bluetoothGattDescriptor) {
                return RxBleConnectionImpl.this.readDescriptor(bluetoothGattDescriptor);
            }
        });
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Single<byte[]> readDescriptor(@NonNull BluetoothGattDescriptor bluetoothGattDescriptor) {
        return this.operationQueue.queue(this.operationsProvider.provideReadDescriptor(bluetoothGattDescriptor)).firstOrError().map(new Function<ByteAssociation<BluetoothGattDescriptor>, byte[]>() {
            /* class com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl.AnonymousClass8 */

            public byte[] apply(ByteAssociation<BluetoothGattDescriptor> byteAssociation) {
                return byteAssociation.second;
            }
        });
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Completable writeDescriptor(@NonNull final UUID uuid, @NonNull final UUID uuid2, @NonNull final UUID uuid3, @NonNull final byte[] bArr) {
        return discoverServices().flatMap(new Function<RxBleDeviceServices, SingleSource<BluetoothGattDescriptor>>() {
            /* class com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl.AnonymousClass10 */

            public SingleSource<BluetoothGattDescriptor> apply(RxBleDeviceServices rxBleDeviceServices) {
                return rxBleDeviceServices.getDescriptor(uuid, uuid2, uuid3);
            }
        }).flatMapCompletable(new Function<BluetoothGattDescriptor, CompletableSource>() {
            /* class com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl.AnonymousClass9 */

            public CompletableSource apply(BluetoothGattDescriptor bluetoothGattDescriptor) {
                return RxBleConnectionImpl.this.writeDescriptor(bluetoothGattDescriptor, bArr);
            }
        });
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Completable writeDescriptor(@NonNull BluetoothGattDescriptor bluetoothGattDescriptor, @NonNull byte[] bArr) {
        return this.descriptorWriter.writeDescriptor(bluetoothGattDescriptor, bArr);
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public Single<Integer> readRssi() {
        return this.operationQueue.queue(this.operationsProvider.provideRssiReadOperation()).firstOrError();
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public <T> Observable<T> queue(@NonNull RxBleCustomOperation<T> rxBleCustomOperation) {
        return queue(rxBleCustomOperation, Priority.NORMAL);
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection
    public <T> Observable<T> queue(@NonNull final RxBleCustomOperation<T> rxBleCustomOperation, @NonNull final Priority priority) {
        return this.operationQueue.queue(new QueueOperation<T>() {
            /* class com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl.AnonymousClass11 */

            /* JADX INFO: finally extract failed */
            /* access modifiers changed from: protected */
            @Override // com.polidea.rxandroidble2.internal.QueueOperation
            public void protectedRun(ObservableEmitter<T> observableEmitter, QueueReleaseInterface queueReleaseInterface) throws Throwable {
                try {
                    Observable asObservable = rxBleCustomOperation.asObservable(RxBleConnectionImpl.this.bluetoothGatt, RxBleConnectionImpl.this.gattCallback, RxBleConnectionImpl.this.callbackScheduler);
                    if (asObservable != null) {
                        asObservable.doOnTerminate(clearNativeCallbackReferenceAction()).subscribe(new QueueReleasingEmitterWrapper(observableEmitter, queueReleaseInterface));
                        return;
                    }
                    queueReleaseInterface.release();
                    throw new IllegalArgumentException("The custom operation asObservable method must return a non-null observable");
                } catch (Throwable th) {
                    queueReleaseInterface.release();
                    throw th;
                }
            }

            private Action clearNativeCallbackReferenceAction() {
                return new Action() {
                    /* class com.polidea.rxandroidble2.internal.connection.RxBleConnectionImpl.AnonymousClass11.AnonymousClass1 */

                    @Override // io.reactivex.functions.Action
                    public void run() {
                        RxBleConnectionImpl.this.gattCallback.setNativeCallback(null);
                    }
                };
            }

            /* access modifiers changed from: protected */
            @Override // com.polidea.rxandroidble2.internal.QueueOperation
            public BleException provideException(DeadObjectException deadObjectException) {
                return new BleDisconnectedException(deadObjectException, RxBleConnectionImpl.this.bluetoothGatt.getDevice().getAddress(), -1);
            }

            @Override // com.polidea.rxandroidble2.internal.QueueOperation, com.polidea.rxandroidble2.internal.operations.Operation
            public Priority definedPriority() {
                return priority;
            }
        });
    }
}
