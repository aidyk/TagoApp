package com.polidea.rxandroidble2;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import com.polidea.rxandroidble2.ClientComponent;
import java.util.concurrent.ExecutorService;

public final class ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory implements Factory<ExecutorService> {
    private static final ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory INSTANCE = new ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory();

    @Override // bleshadow.javax.inject.Provider
    public ExecutorService get() {
        return (ExecutorService) Preconditions.checkNotNull(ClientComponent.ClientModule.provideBluetoothInteractionExecutorService(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory create() {
        return INSTANCE;
    }

    public static ExecutorService proxyProvideBluetoothInteractionExecutorService() {
        return (ExecutorService) Preconditions.checkNotNull(ClientComponent.ClientModule.provideBluetoothInteractionExecutorService(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
