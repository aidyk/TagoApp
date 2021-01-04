package com.polidea.rxandroidble2.internal.serialization;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import io.reactivex.Scheduler;

public final class ClientOperationQueueImpl_Factory implements Factory<ClientOperationQueueImpl> {
    private final Provider<Scheduler> callbackSchedulerProvider;

    public ClientOperationQueueImpl_Factory(Provider<Scheduler> provider) {
        this.callbackSchedulerProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public ClientOperationQueueImpl get() {
        return new ClientOperationQueueImpl(this.callbackSchedulerProvider.get());
    }

    public static ClientOperationQueueImpl_Factory create(Provider<Scheduler> provider) {
        return new ClientOperationQueueImpl_Factory(provider);
    }
}
