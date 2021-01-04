package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import bleshadow.javax.inject.Provider;

public final class ConnectionModule_ProvideIllegalOperationHandlerFactory implements Factory<IllegalOperationHandler> {
    private final Provider<LoggingIllegalOperationHandler> loggingIllegalOperationHandlerProvider;
    private final ConnectionModule module;
    private final Provider<ThrowingIllegalOperationHandler> throwingIllegalOperationHandlerProvider;

    public ConnectionModule_ProvideIllegalOperationHandlerFactory(ConnectionModule connectionModule, Provider<LoggingIllegalOperationHandler> provider, Provider<ThrowingIllegalOperationHandler> provider2) {
        this.module = connectionModule;
        this.loggingIllegalOperationHandlerProvider = provider;
        this.throwingIllegalOperationHandlerProvider = provider2;
    }

    @Override // bleshadow.javax.inject.Provider
    public IllegalOperationHandler get() {
        return (IllegalOperationHandler) Preconditions.checkNotNull(this.module.provideIllegalOperationHandler(this.loggingIllegalOperationHandlerProvider, this.throwingIllegalOperationHandlerProvider), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ConnectionModule_ProvideIllegalOperationHandlerFactory create(ConnectionModule connectionModule, Provider<LoggingIllegalOperationHandler> provider, Provider<ThrowingIllegalOperationHandler> provider2) {
        return new ConnectionModule_ProvideIllegalOperationHandlerFactory(connectionModule, provider, provider2);
    }

    public static IllegalOperationHandler proxyProvideIllegalOperationHandler(ConnectionModule connectionModule, Provider<LoggingIllegalOperationHandler> provider, Provider<ThrowingIllegalOperationHandler> provider2) {
        return (IllegalOperationHandler) Preconditions.checkNotNull(connectionModule.provideIllegalOperationHandler(provider, provider2), "Cannot return null from a non-@Nullable @Provides method");
    }
}
