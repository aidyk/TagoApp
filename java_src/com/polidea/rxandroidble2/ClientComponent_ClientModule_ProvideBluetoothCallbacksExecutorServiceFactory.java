package com.polidea.rxandroidble2;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import com.polidea.rxandroidble2.ClientComponent;
import java.util.concurrent.ExecutorService;

public final class ClientComponent_ClientModule_ProvideBluetoothCallbacksExecutorServiceFactory implements Factory<ExecutorService> {
    private static final ClientComponent_ClientModule_ProvideBluetoothCallbacksExecutorServiceFactory INSTANCE = new ClientComponent_ClientModule_ProvideBluetoothCallbacksExecutorServiceFactory();

    @Override // bleshadow.javax.inject.Provider
    public ExecutorService get() {
        return (ExecutorService) Preconditions.checkNotNull(ClientComponent.ClientModule.provideBluetoothCallbacksExecutorService(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideBluetoothCallbacksExecutorServiceFactory create() {
        return INSTANCE;
    }

    public static ExecutorService proxyProvideBluetoothCallbacksExecutorService() {
        return (ExecutorService) Preconditions.checkNotNull(ClientComponent.ClientModule.provideBluetoothCallbacksExecutorService(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
