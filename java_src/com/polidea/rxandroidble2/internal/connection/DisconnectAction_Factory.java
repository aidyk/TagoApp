package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.operations.DisconnectOperation;
import com.polidea.rxandroidble2.internal.serialization.ClientOperationQueue;

public final class DisconnectAction_Factory implements Factory<DisconnectAction> {
    private final Provider<ClientOperationQueue> clientOperationQueueProvider;
    private final Provider<DisconnectOperation> operationDisconnectProvider;

    public DisconnectAction_Factory(Provider<ClientOperationQueue> provider, Provider<DisconnectOperation> provider2) {
        this.clientOperationQueueProvider = provider;
        this.operationDisconnectProvider = provider2;
    }

    @Override // bleshadow.javax.inject.Provider
    public DisconnectAction get() {
        return new DisconnectAction(this.clientOperationQueueProvider.get(), this.operationDisconnectProvider.get());
    }

    public static DisconnectAction_Factory create(Provider<ClientOperationQueue> provider, Provider<DisconnectOperation> provider2) {
        return new DisconnectAction_Factory(provider, provider2);
    }

    public static DisconnectAction newDisconnectAction(ClientOperationQueue clientOperationQueue, DisconnectOperation disconnectOperation) {
        return new DisconnectAction(clientOperationQueue, disconnectOperation);
    }
}
