package com.polidea.rxandroidble2;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import com.polidea.rxandroidble2.ClientComponent;
import java.util.concurrent.ExecutorService;

public final class ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory implements Factory<ExecutorService> {
    private static final ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory INSTANCE = new ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory();

    @Override // bleshadow.javax.inject.Provider
    public ExecutorService get() {
        return (ExecutorService) Preconditions.checkNotNull(ClientComponent.ClientModule.provideConnectionQueueExecutorService(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory create() {
        return INSTANCE;
    }

    public static ExecutorService proxyProvideConnectionQueueExecutorService() {
        return (ExecutorService) Preconditions.checkNotNull(ClientComponent.ClientModule.provideConnectionQueueExecutorService(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
