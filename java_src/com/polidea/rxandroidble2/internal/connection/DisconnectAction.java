package com.polidea.rxandroidble2.internal.connection;

import bleshadow.javax.inject.Inject;
import com.polidea.rxandroidble2.internal.operations.DisconnectOperation;
import com.polidea.rxandroidble2.internal.serialization.ClientOperationQueue;
import io.reactivex.internal.functions.Functions;

/* access modifiers changed from: package-private */
@ConnectionScope
public class DisconnectAction implements ConnectionSubscriptionWatcher {
    private final ClientOperationQueue clientOperationQueue;
    private final DisconnectOperation operationDisconnect;

    @Override // com.polidea.rxandroidble2.internal.connection.ConnectionSubscriptionWatcher
    public void onConnectionSubscribed() {
    }

    @Inject
    DisconnectAction(ClientOperationQueue clientOperationQueue2, DisconnectOperation disconnectOperation) {
        this.clientOperationQueue = clientOperationQueue2;
        this.operationDisconnect = disconnectOperation;
    }

    @Override // com.polidea.rxandroidble2.internal.connection.ConnectionSubscriptionWatcher
    public void onConnectionUnsubscribed() {
        this.clientOperationQueue.queue(this.operationDisconnect).subscribe(Functions.emptyConsumer(), Functions.emptyConsumer());
    }
}
