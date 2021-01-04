package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGatt;
import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import bleshadow.javax.inject.Provider;

public final class ConnectionModuleBinder_ProvideBluetoothGattFactory implements Factory<BluetoothGatt> {
    private final Provider<BluetoothGattProvider> bluetoothGattProvider;

    public ConnectionModuleBinder_ProvideBluetoothGattFactory(Provider<BluetoothGattProvider> provider) {
        this.bluetoothGattProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public BluetoothGatt get() {
        return (BluetoothGatt) Preconditions.checkNotNull(ConnectionModuleBinder.provideBluetoothGatt(this.bluetoothGattProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ConnectionModuleBinder_ProvideBluetoothGattFactory create(Provider<BluetoothGattProvider> provider) {
        return new ConnectionModuleBinder_ProvideBluetoothGattFactory(provider);
    }

    public static BluetoothGatt proxyProvideBluetoothGatt(BluetoothGattProvider bluetoothGattProvider2) {
        return (BluetoothGatt) Preconditions.checkNotNull(ConnectionModuleBinder.provideBluetoothGatt(bluetoothGattProvider2), "Cannot return null from a non-@Nullable @Provides method");
    }
}
