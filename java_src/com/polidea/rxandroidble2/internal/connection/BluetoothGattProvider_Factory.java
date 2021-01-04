package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;

public final class BluetoothGattProvider_Factory implements Factory<BluetoothGattProvider> {
    private static final BluetoothGattProvider_Factory INSTANCE = new BluetoothGattProvider_Factory();

    @Override // bleshadow.javax.inject.Provider
    public BluetoothGattProvider get() {
        return new BluetoothGattProvider();
    }

    public static BluetoothGattProvider_Factory create() {
        return INSTANCE;
    }

    public static BluetoothGattProvider newBluetoothGattProvider() {
        return new BluetoothGattProvider();
    }
}
