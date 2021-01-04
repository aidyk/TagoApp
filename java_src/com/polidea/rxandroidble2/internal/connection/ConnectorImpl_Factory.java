package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.connection.ConnectionComponent;
import com.polidea.rxandroidble2.internal.serialization.ClientOperationQueue;
import io.reactivex.Scheduler;

public final class ConnectorImpl_Factory implements Factory<ConnectorImpl> {
    private final Provider<Scheduler> callbacksSchedulerProvider;
    private final Provider<ClientOperationQueue> clientOperationQueueProvider;
    private final Provider<ConnectionComponent.Builder> connectionComponentBuilderProvider;

    public ConnectorImpl_Factory(Provider<ClientOperationQueue> provider, Provider<ConnectionComponent.Builder> provider2, Provider<Scheduler> provider3) {
        this.clientOperationQueueProvider = provider;
        this.connectionComponentBuilderProvider = provider2;
        this.callbacksSchedulerProvider = provider3;
    }

    @Override // bleshadow.javax.inject.Provider
    public ConnectorImpl get() {
        return new ConnectorImpl(this.clientOperationQueueProvider.get(), this.connectionComponentBuilderProvider.get(), this.callbacksSchedulerProvider.get());
    }

    public static ConnectorImpl_Factory create(Provider<ClientOperationQueue> provider, Provider<ConnectionComponent.Builder> provider2, Provider<Scheduler> provider3) {
        return new ConnectorImpl_Factory(provider, provider2, provider3);
    }
}
