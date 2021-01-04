package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.internal.operations.OperationsProvider;
import com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueue;

public final class LongWriteOperationBuilderImpl_Factory implements Factory<LongWriteOperationBuilderImpl> {
    private final Provider<MtuBasedPayloadSizeLimit> defaultMaxBatchSizeProvider;
    private final Provider<ConnectionOperationQueue> operationQueueProvider;
    private final Provider<OperationsProvider> operationsProvider;
    private final Provider<RxBleConnection> rxBleConnectionProvider;

    public LongWriteOperationBuilderImpl_Factory(Provider<ConnectionOperationQueue> provider, Provider<MtuBasedPayloadSizeLimit> provider2, Provider<RxBleConnection> provider3, Provider<OperationsProvider> provider4) {
        this.operationQueueProvider = provider;
        this.defaultMaxBatchSizeProvider = provider2;
        this.rxBleConnectionProvider = provider3;
        this.operationsProvider = provider4;
    }

    @Override // bleshadow.javax.inject.Provider
    public LongWriteOperationBuilderImpl get() {
        return new LongWriteOperationBuilderImpl(this.operationQueueProvider.get(), this.defaultMaxBatchSizeProvider.get(), this.rxBleConnectionProvider.get(), this.operationsProvider.get());
    }

    public static LongWriteOperationBuilderImpl_Factory create(Provider<ConnectionOperationQueue> provider, Provider<MtuBasedPayloadSizeLimit> provider2, Provider<RxBleConnection> provider3, Provider<OperationsProvider> provider4) {
        return new LongWriteOperationBuilderImpl_Factory(provider, provider2, provider3, provider4);
    }

    public static LongWriteOperationBuilderImpl newLongWriteOperationBuilderImpl(ConnectionOperationQueue connectionOperationQueue, Object obj, RxBleConnection rxBleConnection, OperationsProvider operationsProvider2) {
        return new LongWriteOperationBuilderImpl(connectionOperationQueue, (MtuBasedPayloadSizeLimit) obj, rxBleConnection, operationsProvider2);
    }
}
