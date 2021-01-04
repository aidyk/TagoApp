package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothManager;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.connection.BluetoothGattProvider;
import com.polidea.rxandroidble2.internal.connection.ConnectionStateChangeListener;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import io.reactivex.Scheduler;

public final class DisconnectOperation_Factory implements Factory<DisconnectOperation> {
    private final Provider<BluetoothGattProvider> bluetoothGattProvider;
    private final Provider<Scheduler> bluetoothInteractionSchedulerProvider;
    private final Provider<BluetoothManager> bluetoothManagerProvider;
    private final Provider<ConnectionStateChangeListener> connectionStateChangeListenerProvider;
    private final Provider<String> macAddressProvider;
    private final Provider<RxBleGattCallback> rxBleGattCallbackProvider;
    private final Provider<TimeoutConfiguration> timeoutConfigurationProvider;

    public DisconnectOperation_Factory(Provider<RxBleGattCallback> provider, Provider<BluetoothGattProvider> provider2, Provider<String> provider3, Provider<BluetoothManager> provider4, Provider<Scheduler> provider5, Provider<TimeoutConfiguration> provider6, Provider<ConnectionStateChangeListener> provider7) {
        this.rxBleGattCallbackProvider = provider;
        this.bluetoothGattProvider = provider2;
        this.macAddressProvider = provider3;
        this.bluetoothManagerProvider = provider4;
        this.bluetoothInteractionSchedulerProvider = provider5;
        this.timeoutConfigurationProvider = provider6;
        this.connectionStateChangeListenerProvider = provider7;
    }

    @Override // bleshadow.javax.inject.Provider
    public DisconnectOperation get() {
        return new DisconnectOperation(this.rxBleGattCallbackProvider.get(), this.bluetoothGattProvider.get(), this.macAddressProvider.get(), this.bluetoothManagerProvider.get(), this.bluetoothInteractionSchedulerProvider.get(), this.timeoutConfigurationProvider.get(), this.connectionStateChangeListenerProvider.get());
    }

    public static DisconnectOperation_Factory create(Provider<RxBleGattCallback> provider, Provider<BluetoothGattProvider> provider2, Provider<String> provider3, Provider<BluetoothManager> provider4, Provider<Scheduler> provider5, Provider<TimeoutConfiguration> provider6, Provider<ConnectionStateChangeListener> provider7) {
        return new DisconnectOperation_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static DisconnectOperation newDisconnectOperation(RxBleGattCallback rxBleGattCallback, BluetoothGattProvider bluetoothGattProvider2, String str, BluetoothManager bluetoothManager, Scheduler scheduler, TimeoutConfiguration timeoutConfiguration, ConnectionStateChangeListener connectionStateChangeListener) {
        return new DisconnectOperation(rxBleGattCallback, bluetoothGattProvider2, str, bluetoothManager, scheduler, timeoutConfiguration, connectionStateChangeListener);
    }
}
