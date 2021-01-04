package com.polidea.rxandroidble2;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.ClientComponent;
import java.util.concurrent.ExecutorService;

public final class ClientComponent_ClientModule_ProvideFinalizationCloseableFactory implements Factory<ClientComponent.ClientComponentFinalizer> {
    private final Provider<ExecutorService> callbacksExecutorServiceProvider;
    private final Provider<ExecutorService> connectionQueueExecutorServiceProvider;
    private final Provider<ExecutorService> interactionExecutorServiceProvider;

    public ClientComponent_ClientModule_ProvideFinalizationCloseableFactory(Provider<ExecutorService> provider, Provider<ExecutorService> provider2, Provider<ExecutorService> provider3) {
        this.interactionExecutorServiceProvider = provider;
        this.callbacksExecutorServiceProvider = provider2;
        this.connectionQueueExecutorServiceProvider = provider3;
    }

    @Override // bleshadow.javax.inject.Provider
    public ClientComponent.ClientComponentFinalizer get() {
        return (ClientComponent.ClientComponentFinalizer) Preconditions.checkNotNull(ClientComponent.ClientModule.provideFinalizationCloseable(this.interactionExecutorServiceProvider.get(), this.callbacksExecutorServiceProvider.get(), this.connectionQueueExecutorServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideFinalizationCloseableFactory create(Provider<ExecutorService> provider, Provider<ExecutorService> provider2, Provider<ExecutorService> provider3) {
        return new ClientComponent_ClientModule_ProvideFinalizationCloseableFactory(provider, provider2, provider3);
    }

    public static ClientComponent.ClientComponentFinalizer proxyProvideFinalizationCloseable(ExecutorService executorService, ExecutorService executorService2, ExecutorService executorService3) {
        return (ClientComponent.ClientComponentFinalizer) Preconditions.checkNotNull(ClientComponent.ClientModule.provideFinalizationCloseable(executorService, executorService2, executorService3), "Cannot return null from a non-@Nullable @Provides method");
    }
}
