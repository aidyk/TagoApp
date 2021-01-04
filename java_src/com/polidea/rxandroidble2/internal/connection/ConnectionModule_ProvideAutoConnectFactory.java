package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;

public final class ConnectionModule_ProvideAutoConnectFactory implements Factory<Boolean> {
    private final ConnectionModule module;

    public ConnectionModule_ProvideAutoConnectFactory(ConnectionModule connectionModule) {
        this.module = connectionModule;
    }

    @Override // bleshadow.javax.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(this.module.provideAutoConnect());
    }

    public static ConnectionModule_ProvideAutoConnectFactory create(ConnectionModule connectionModule) {
        return new ConnectionModule_ProvideAutoConnectFactory(connectionModule);
    }

    public static boolean proxyProvideAutoConnect(ConnectionModule connectionModule) {
        return connectionModule.provideAutoConnect();
    }
}
