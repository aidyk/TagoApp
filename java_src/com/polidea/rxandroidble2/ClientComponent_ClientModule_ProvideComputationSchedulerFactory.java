package com.polidea.rxandroidble2;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import com.polidea.rxandroidble2.ClientComponent;
import io.reactivex.Scheduler;

public final class ClientComponent_ClientModule_ProvideComputationSchedulerFactory implements Factory<Scheduler> {
    private static final ClientComponent_ClientModule_ProvideComputationSchedulerFactory INSTANCE = new ClientComponent_ClientModule_ProvideComputationSchedulerFactory();

    @Override // bleshadow.javax.inject.Provider
    public Scheduler get() {
        return (Scheduler) Preconditions.checkNotNull(ClientComponent.ClientModule.provideComputationScheduler(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideComputationSchedulerFactory create() {
        return INSTANCE;
    }

    public static Scheduler proxyProvideComputationScheduler() {
        return (Scheduler) Preconditions.checkNotNull(ClientComponent.ClientModule.provideComputationScheduler(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
