package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothDevice;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.connection.BluetoothGattProvider;
import com.polidea.rxandroidble2.internal.connection.ConnectionStateChangeListener;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import com.polidea.rxandroidble2.internal.util.BleConnectionCompat;

public final class ConnectOperation_Factory implements Factory<ConnectOperation> {
    private final Provider<Boolean> autoConnectProvider;
    private final Provider<BluetoothDevice> bluetoothDeviceProvider;
    private final Provider<BluetoothGattProvider> bluetoothGattProvider;
    private final Provider<TimeoutConfiguration> connectTimeoutProvider;
    private final Provider<BleConnectionCompat> connectionCompatProvider;
    private final Provider<ConnectionStateChangeListener> connectionStateChangedActionProvider;
    private final Provider<RxBleGattCallback> rxBleGattCallbackProvider;

    public ConnectOperation_Factory(Provider<BluetoothDevice> provider, Provider<BleConnectionCompat> provider2, Provider<RxBleGattCallback> provider3, Provider<BluetoothGattProvider> provider4, Provider<TimeoutConfiguration> provider5, Provider<Boolean> provider6, Provider<ConnectionStateChangeListener> provider7) {
        this.bluetoothDeviceProvider = provider;
        this.connectionCompatProvider = provider2;
        this.rxBleGattCallbackProvider = provider3;
        this.bluetoothGattProvider = provider4;
        this.connectTimeoutProvider = provider5;
        this.autoConnectProvider = provider6;
        this.connectionStateChangedActionProvider = provider7;
    }

    @Override // bleshadow.javax.inject.Provider
    public ConnectOperation get() {
        return new ConnectOperation(this.bluetoothDeviceProvider.get(), this.connectionCompatProvider.get(), this.rxBleGattCallbackProvider.get(), this.bluetoothGattProvider.get(), this.connectTimeoutProvider.get(), this.autoConnectProvider.get().booleanValue(), this.connectionStateChangedActionProvider.get());
    }

    public static ConnectOperation_Factory create(Provider<BluetoothDevice> provider, Provider<BleConnectionCompat> provider2, Provider<RxBleGattCallback> provider3, Provider<BluetoothGattProvider> provider4, Provider<TimeoutConfiguration> provider5, Provider<Boolean> provider6, Provider<ConnectionStateChangeListener> provider7) {
        return new ConnectOperation_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static ConnectOperation newConnectOperation(BluetoothDevice bluetoothDevice, BleConnectionCompat bleConnectionCompat, RxBleGattCallback rxBleGattCallback, BluetoothGattProvider bluetoothGattProvider2, TimeoutConfiguration timeoutConfiguration, boolean z, ConnectionStateChangeListener connectionStateChangeListener) {
        return new ConnectOperation(bluetoothDevice, bleConnectionCompat, rxBleGattCallback, bluetoothGattProvider2, timeoutConfiguration, z, connectionStateChangeListener);
    }
}
