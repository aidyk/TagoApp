package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.jakewharton.rxrelay2.PublishRelay;
import com.jakewharton.rxrelay2.Relay;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.RxBleDeviceServices;
import com.polidea.rxandroidble2.exceptions.BleDisconnectedException;
import com.polidea.rxandroidble2.exceptions.BleGattCharacteristicException;
import com.polidea.rxandroidble2.exceptions.BleGattDescriptorException;
import com.polidea.rxandroidble2.exceptions.BleGattException;
import com.polidea.rxandroidble2.exceptions.BleGattOperationType;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.util.ByteAssociation;
import com.polidea.rxandroidble2.internal.util.CharacteristicChangedEvent;
import io.reactivex.Observable;
import io.reactivex.Scheduler;
import io.reactivex.functions.Function;
import java.util.UUID;

@ConnectionScope
public class RxBleGattCallback {
    private BluetoothGattCallback bluetoothGattCallback = new BluetoothGattCallback() {
        /* class com.polidea.rxandroidble2.internal.connection.RxBleGattCallback.AnonymousClass2 */

        private boolean isDisconnectedOrDisconnecting(int i) {
            return i == 0 || i == 3;
        }

        public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i, int i2) {
            RxBleLog.d("onConnectionStateChange newState=%d status=%d", Integer.valueOf(i2), Integer.valueOf(i));
            RxBleGattCallback.this.nativeCallbackDispatcher.notifyNativeConnectionStateCallback(bluetoothGatt, i, i2);
            super.onConnectionStateChange(bluetoothGatt, i, i2);
            RxBleGattCallback.this.bluetoothGattProvider.updateBluetoothGatt(bluetoothGatt);
            if (isDisconnectedOrDisconnecting(i2)) {
                RxBleGattCallback.this.disconnectionRouter.onDisconnectedException(new BleDisconnectedException(bluetoothGatt.getDevice().getAddress(), i));
            } else if (i != 0) {
                RxBleGattCallback.this.disconnectionRouter.onGattConnectionStateException(new BleGattException(bluetoothGatt, i, BleGattOperationType.CONNECTION_STATE));
            }
            RxBleGattCallback.this.connectionStatePublishRelay.accept(RxBleGattCallback.this.mapConnectionStateToRxBleConnectionStatus(i2));
        }

        public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
            RxBleLog.d("onServicesDiscovered status=%d", Integer.valueOf(i));
            RxBleGattCallback.this.nativeCallbackDispatcher.notifyNativeServicesDiscoveredCallback(bluetoothGatt, i);
            super.onServicesDiscovered(bluetoothGatt, i);
            if (RxBleGattCallback.this.servicesDiscoveredOutput.hasObservers() && !RxBleGattCallback.this.propagateErrorIfOccurred(RxBleGattCallback.this.servicesDiscoveredOutput, bluetoothGatt, i, BleGattOperationType.SERVICE_DISCOVERY)) {
                RxBleGattCallback.this.servicesDiscoveredOutput.valueRelay.accept((T) new RxBleDeviceServices(bluetoothGatt.getServices()));
            }
        }

        public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
            RxBleLog.d("onCharacteristicRead characteristic=%s status=%d", bluetoothGattCharacteristic.getUuid(), Integer.valueOf(i));
            RxBleGattCallback.this.nativeCallbackDispatcher.notifyNativeReadCallback(bluetoothGatt, bluetoothGattCharacteristic, i);
            super.onCharacteristicRead(bluetoothGatt, bluetoothGattCharacteristic, i);
            if (RxBleGattCallback.this.readCharacteristicOutput.hasObservers() && !RxBleGattCallback.this.propagateErrorIfOccurred((RxBleGattCallback) RxBleGattCallback.this.readCharacteristicOutput, (Output) bluetoothGatt, (BluetoothGatt) bluetoothGattCharacteristic, (BluetoothGattCharacteristic) i, (int) BleGattOperationType.CHARACTERISTIC_READ)) {
                RxBleGattCallback.this.readCharacteristicOutput.valueRelay.accept((T) new ByteAssociation(bluetoothGattCharacteristic.getUuid(), bluetoothGattCharacteristic.getValue()));
            }
        }

        public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
            RxBleLog.d("onCharacteristicWrite characteristic=%s status=%d", bluetoothGattCharacteristic.getUuid(), Integer.valueOf(i));
            RxBleGattCallback.this.nativeCallbackDispatcher.notifyNativeWriteCallback(bluetoothGatt, bluetoothGattCharacteristic, i);
            super.onCharacteristicWrite(bluetoothGatt, bluetoothGattCharacteristic, i);
            if (RxBleGattCallback.this.writeCharacteristicOutput.hasObservers() && !RxBleGattCallback.this.propagateErrorIfOccurred((RxBleGattCallback) RxBleGattCallback.this.writeCharacteristicOutput, (Output) bluetoothGatt, (BluetoothGatt) bluetoothGattCharacteristic, (BluetoothGattCharacteristic) i, (int) BleGattOperationType.CHARACTERISTIC_WRITE)) {
                RxBleGattCallback.this.writeCharacteristicOutput.valueRelay.accept((T) new ByteAssociation(bluetoothGattCharacteristic.getUuid(), bluetoothGattCharacteristic.getValue()));
            }
        }

        public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
            RxBleLog.d("onCharacteristicChanged characteristic=%s", bluetoothGattCharacteristic.getUuid());
            RxBleGattCallback.this.nativeCallbackDispatcher.notifyNativeChangedCallback(bluetoothGatt, bluetoothGattCharacteristic);
            super.onCharacteristicChanged(bluetoothGatt, bluetoothGattCharacteristic);
            if (RxBleGattCallback.this.changedCharacteristicSerializedPublishRelay.hasObservers()) {
                RxBleGattCallback.this.changedCharacteristicSerializedPublishRelay.accept(new CharacteristicChangedEvent(bluetoothGattCharacteristic.getUuid(), Integer.valueOf(bluetoothGattCharacteristic.getInstanceId()), bluetoothGattCharacteristic.getValue()));
            }
        }

        public void onDescriptorRead(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
            RxBleLog.d("onCharacteristicRead descriptor=%s status=%d", bluetoothGattDescriptor.getUuid(), Integer.valueOf(i));
            RxBleGattCallback.this.nativeCallbackDispatcher.notifyNativeDescriptorReadCallback(bluetoothGatt, bluetoothGattDescriptor, i);
            super.onDescriptorRead(bluetoothGatt, bluetoothGattDescriptor, i);
            if (RxBleGattCallback.this.readDescriptorOutput.hasObservers() && !RxBleGattCallback.this.propagateErrorIfOccurred((RxBleGattCallback) RxBleGattCallback.this.readDescriptorOutput, (Output) bluetoothGatt, (BluetoothGatt) bluetoothGattDescriptor, (BluetoothGattDescriptor) i, (int) BleGattOperationType.DESCRIPTOR_READ)) {
                RxBleGattCallback.this.readDescriptorOutput.valueRelay.accept((T) new ByteAssociation(bluetoothGattDescriptor, bluetoothGattDescriptor.getValue()));
            }
        }

        public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
            RxBleLog.d("onDescriptorWrite descriptor=%s status=%d", bluetoothGattDescriptor.getUuid(), Integer.valueOf(i));
            RxBleGattCallback.this.nativeCallbackDispatcher.notifyNativeDescriptorWriteCallback(bluetoothGatt, bluetoothGattDescriptor, i);
            super.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i);
            if (RxBleGattCallback.this.writeDescriptorOutput.hasObservers() && !RxBleGattCallback.this.propagateErrorIfOccurred((RxBleGattCallback) RxBleGattCallback.this.writeDescriptorOutput, (Output) bluetoothGatt, (BluetoothGatt) bluetoothGattDescriptor, (BluetoothGattDescriptor) i, (int) BleGattOperationType.DESCRIPTOR_WRITE)) {
                RxBleGattCallback.this.writeDescriptorOutput.valueRelay.accept((T) new ByteAssociation(bluetoothGattDescriptor, bluetoothGattDescriptor.getValue()));
            }
        }

        public void onReliableWriteCompleted(BluetoothGatt bluetoothGatt, int i) {
            RxBleLog.d("onReliableWriteCompleted status=%d", Integer.valueOf(i));
            RxBleGattCallback.this.nativeCallbackDispatcher.notifyNativeReliableWriteCallback(bluetoothGatt, i);
            super.onReliableWriteCompleted(bluetoothGatt, i);
        }

        public void onReadRemoteRssi(BluetoothGatt bluetoothGatt, int i, int i2) {
            RxBleLog.d("onReadRemoteRssi rssi=%d status=%d", Integer.valueOf(i), Integer.valueOf(i2));
            RxBleGattCallback.this.nativeCallbackDispatcher.notifyNativeReadRssiCallback(bluetoothGatt, i, i2);
            super.onReadRemoteRssi(bluetoothGatt, i, i2);
            if (RxBleGattCallback.this.readRssiOutput.hasObservers() && !RxBleGattCallback.this.propagateErrorIfOccurred(RxBleGattCallback.this.readRssiOutput, bluetoothGatt, i2, BleGattOperationType.READ_RSSI)) {
                RxBleGattCallback.this.readRssiOutput.valueRelay.accept((T) Integer.valueOf(i));
            }
        }

        public void onMtuChanged(BluetoothGatt bluetoothGatt, int i, int i2) {
            RxBleLog.d("onMtuChanged mtu=%d status=%d", Integer.valueOf(i), Integer.valueOf(i2));
            RxBleGattCallback.this.nativeCallbackDispatcher.notifyNativeMtuChangedCallback(bluetoothGatt, i, i2);
            super.onMtuChanged(bluetoothGatt, i, i2);
            if (RxBleGattCallback.this.changedMtuOutput.hasObservers() && !RxBleGattCallback.this.propagateErrorIfOccurred(RxBleGattCallback.this.changedMtuOutput, bluetoothGatt, i2, BleGattOperationType.ON_MTU_CHANGED)) {
                RxBleGattCallback.this.changedMtuOutput.valueRelay.accept((T) Integer.valueOf(i));
            }
        }
    };
    private final BluetoothGattProvider bluetoothGattProvider;
    private final Scheduler callbackScheduler;
    private final Relay<CharacteristicChangedEvent> changedCharacteristicSerializedPublishRelay = PublishRelay.create().toSerialized();
    private final Output<Integer> changedMtuOutput = new Output<>();
    private final PublishRelay<RxBleConnection.RxBleConnectionState> connectionStatePublishRelay = PublishRelay.create();
    private final DisconnectionRouter disconnectionRouter;
    private final Function<BleGattException, Observable<?>> errorMapper = new Function<BleGattException, Observable<?>>() {
        /* class com.polidea.rxandroidble2.internal.connection.RxBleGattCallback.AnonymousClass1 */

        public Observable<?> apply(BleGattException bleGattException) {
            return Observable.error(bleGattException);
        }
    };
    private final NativeCallbackDispatcher nativeCallbackDispatcher;
    private final Output<ByteAssociation<UUID>> readCharacteristicOutput = new Output<>();
    private final Output<ByteAssociation<BluetoothGattDescriptor>> readDescriptorOutput = new Output<>();
    private final Output<Integer> readRssiOutput = new Output<>();
    private final Output<RxBleDeviceServices> servicesDiscoveredOutput = new Output<>();
    private final Output<ByteAssociation<UUID>> writeCharacteristicOutput = new Output<>();
    private final Output<ByteAssociation<BluetoothGattDescriptor>> writeDescriptorOutput = new Output<>();

    private boolean isException(int i) {
        return i != 0;
    }

    @Inject
    public RxBleGattCallback(@Named("bluetooth_callbacks") Scheduler scheduler, BluetoothGattProvider bluetoothGattProvider2, DisconnectionRouter disconnectionRouter2, NativeCallbackDispatcher nativeCallbackDispatcher2) {
        this.callbackScheduler = scheduler;
        this.bluetoothGattProvider = bluetoothGattProvider2;
        this.disconnectionRouter = disconnectionRouter2;
        this.nativeCallbackDispatcher = nativeCallbackDispatcher2;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private RxBleConnection.RxBleConnectionState mapConnectionStateToRxBleConnectionStatus(int i) {
        switch (i) {
            case 1:
                return RxBleConnection.RxBleConnectionState.CONNECTING;
            case 2:
                return RxBleConnection.RxBleConnectionState.CONNECTED;
            case 3:
                return RxBleConnection.RxBleConnectionState.DISCONNECTING;
            default:
                return RxBleConnection.RxBleConnectionState.DISCONNECTED;
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean propagateErrorIfOccurred(Output output, BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i, BleGattOperationType bleGattOperationType) {
        return isException(i) && propagateStatusError(output, new BleGattCharacteristicException(bluetoothGatt, bluetoothGattCharacteristic, i, bleGattOperationType));
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean propagateErrorIfOccurred(Output output, BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i, BleGattOperationType bleGattOperationType) {
        return isException(i) && propagateStatusError(output, new BleGattDescriptorException(bluetoothGatt, bluetoothGattDescriptor, i, bleGattOperationType));
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean propagateErrorIfOccurred(Output output, BluetoothGatt bluetoothGatt, int i, BleGattOperationType bleGattOperationType) {
        return isException(i) && propagateStatusError(output, new BleGattException(bluetoothGatt, i, bleGattOperationType));
    }

    private boolean propagateStatusError(Output output, BleGattException bleGattException) {
        output.errorRelay.accept(bleGattException);
        return true;
    }

    private <T> Observable<T> withDisconnectionHandling(Output<T> output) {
        return Observable.merge(this.disconnectionRouter.asErrorOnlyObservable(), output.valueRelay, output.errorRelay.flatMap(this.errorMapper));
    }

    public BluetoothGattCallback getBluetoothGattCallback() {
        return this.bluetoothGattCallback;
    }

    public <T> Observable<T> observeDisconnect() {
        return this.disconnectionRouter.asErrorOnlyObservable();
    }

    public Observable<RxBleConnection.RxBleConnectionState> getOnConnectionStateChange() {
        return this.connectionStatePublishRelay.observeOn(this.callbackScheduler);
    }

    public Observable<RxBleDeviceServices> getOnServicesDiscovered() {
        return withDisconnectionHandling(this.servicesDiscoveredOutput).observeOn(this.callbackScheduler);
    }

    public Observable<Integer> getOnMtuChanged() {
        return withDisconnectionHandling(this.changedMtuOutput).observeOn(this.callbackScheduler);
    }

    public Observable<ByteAssociation<UUID>> getOnCharacteristicRead() {
        return withDisconnectionHandling(this.readCharacteristicOutput).observeOn(this.callbackScheduler);
    }

    public Observable<ByteAssociation<UUID>> getOnCharacteristicWrite() {
        return withDisconnectionHandling(this.writeCharacteristicOutput).observeOn(this.callbackScheduler);
    }

    public Observable<CharacteristicChangedEvent> getOnCharacteristicChanged() {
        return Observable.merge(this.disconnectionRouter.asErrorOnlyObservable(), this.changedCharacteristicSerializedPublishRelay).observeOn(this.callbackScheduler);
    }

    public Observable<ByteAssociation<BluetoothGattDescriptor>> getOnDescriptorRead() {
        return withDisconnectionHandling(this.readDescriptorOutput).observeOn(this.callbackScheduler);
    }

    public Observable<ByteAssociation<BluetoothGattDescriptor>> getOnDescriptorWrite() {
        return withDisconnectionHandling(this.writeDescriptorOutput).observeOn(this.callbackScheduler);
    }

    public Observable<Integer> getOnRssiRead() {
        return withDisconnectionHandling(this.readRssiOutput).observeOn(this.callbackScheduler);
    }

    public void setNativeCallback(BluetoothGattCallback bluetoothGattCallback2) {
        this.nativeCallbackDispatcher.setNativeCallback(bluetoothGattCallback2);
    }

    /* access modifiers changed from: private */
    public static class Output<T> {
        final PublishRelay<BleGattException> errorRelay = PublishRelay.create();
        final PublishRelay<T> valueRelay = PublishRelay.create();

        Output() {
        }

        /* access modifiers changed from: package-private */
        public boolean hasObservers() {
            return this.valueRelay.hasObservers() || this.errorRelay.hasObservers();
        }
    }
}
