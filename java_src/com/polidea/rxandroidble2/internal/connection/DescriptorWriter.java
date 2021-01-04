package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGattDescriptor;
import bleshadow.javax.inject.Inject;
import com.polidea.rxandroidble2.internal.operations.OperationsProvider;
import com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueue;
import io.reactivex.Completable;

/* access modifiers changed from: package-private */
@ConnectionScope
public class DescriptorWriter {
    private final ConnectionOperationQueue operationQueue;
    private final OperationsProvider operationsProvider;

    @Inject
    DescriptorWriter(ConnectionOperationQueue connectionOperationQueue, OperationsProvider operationsProvider2) {
        this.operationQueue = connectionOperationQueue;
        this.operationsProvider = operationsProvider2;
    }

    /* access modifiers changed from: package-private */
    public Completable writeDescriptor(BluetoothGattDescriptor bluetoothGattDescriptor, byte[] bArr) {
        return this.operationQueue.queue(this.operationsProvider.provideWriteDescriptor(bluetoothGattDescriptor, bArr)).ignoreElements();
    }
}
