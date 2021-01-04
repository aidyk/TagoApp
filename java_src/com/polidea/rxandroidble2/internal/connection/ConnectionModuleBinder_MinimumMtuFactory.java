package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;

public final class ConnectionModuleBinder_MinimumMtuFactory implements Factory<Integer> {
    private static final ConnectionModuleBinder_MinimumMtuFactory INSTANCE = new ConnectionModuleBinder_MinimumMtuFactory();

    @Override // bleshadow.javax.inject.Provider
    public Integer get() {
        return Integer.valueOf(ConnectionModuleBinder.minimumMtu());
    }

    public static ConnectionModuleBinder_MinimumMtuFactory create() {
        return INSTANCE;
    }

    public static int proxyMinimumMtu() {
        return ConnectionModuleBinder.minimumMtu();
    }
}
