package com.polidea.rxandroidble2;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.ClientComponent;
import io.reactivex.Scheduler;
import java.util.concurrent.ExecutorService;

public final class ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory implements Factory<Scheduler> {
    private final Provider<ExecutorService> serviceProvider;

    public ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory(Provider<ExecutorService> provider) {
        this.serviceProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public Scheduler get() {
        return (Scheduler) Preconditions.checkNotNull(ClientComponent.ClientModule.provideBluetoothInteractionScheduler(this.serviceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory create(Provider<ExecutorService> provider) {
        return new ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory(provider);
    }

    public static Scheduler proxyProvideBluetoothInteractionScheduler(ExecutorService executorService) {
        return (Scheduler) Preconditions.checkNotNull(ClientComponent.ClientModule.provideBluetoothInteractionScheduler(executorService), "Cannot return null from a non-@Nullable @Provides method");
    }
}
