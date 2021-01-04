package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGattCharacteristic;
import android.support.annotation.NonNull;
import bleshadow.javax.inject.Inject;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.internal.operations.OperationsProvider;
import com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueue;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.functions.Function;
import java.util.UUID;

public final class LongWriteOperationBuilderImpl implements RxBleConnection.LongWriteOperationBuilder {
    private byte[] bytes;
    private PayloadSizeLimitProvider maxBatchSizeProvider;
    private final ConnectionOperationQueue operationQueue;
    private final OperationsProvider operationsProvider;
    private final RxBleConnection rxBleConnection;
    private RxBleConnection.WriteOperationAckStrategy writeOperationAckStrategy = new ImmediateSerializedBatchAckStrategy();
    private RxBleConnection.WriteOperationRetryStrategy writeOperationRetryStrategy = new NoRetryStrategy();
    private Single<BluetoothGattCharacteristic> writtenCharacteristicObservable;

    @Inject
    LongWriteOperationBuilderImpl(ConnectionOperationQueue connectionOperationQueue, MtuBasedPayloadSizeLimit mtuBasedPayloadSizeLimit, RxBleConnection rxBleConnection2, OperationsProvider operationsProvider2) {
        this.operationQueue = connectionOperationQueue;
        this.maxBatchSizeProvider = mtuBasedPayloadSizeLimit;
        this.rxBleConnection = rxBleConnection2;
        this.operationsProvider = operationsProvider2;
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection.LongWriteOperationBuilder
    public RxBleConnection.LongWriteOperationBuilder setBytes(@NonNull byte[] bArr) {
        this.bytes = bArr;
        return this;
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection.LongWriteOperationBuilder
    public RxBleConnection.LongWriteOperationBuilder setCharacteristicUuid(@NonNull UUID uuid) {
        this.writtenCharacteristicObservable = this.rxBleConnection.getCharacteristic(uuid);
        return this;
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection.LongWriteOperationBuilder
    public RxBleConnection.LongWriteOperationBuilder setCharacteristic(@NonNull BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.writtenCharacteristicObservable = Single.just(bluetoothGattCharacteristic);
        return this;
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection.LongWriteOperationBuilder
    public RxBleConnection.LongWriteOperationBuilder setMaxBatchSize(int i) {
        this.maxBatchSizeProvider = new ConstantPayloadSizeLimit(i);
        return this;
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection.LongWriteOperationBuilder
    public RxBleConnection.LongWriteOperationBuilder setWriteOperationRetryStrategy(@NonNull RxBleConnection.WriteOperationRetryStrategy writeOperationRetryStrategy2) {
        this.writeOperationRetryStrategy = writeOperationRetryStrategy2;
        return this;
    }

    @Override // com.polidea.rxandroidble2.RxBleConnection.LongWriteOperationBuilder
    public RxBleConnection.LongWriteOperationBuilder setWriteOperationAckStrategy(@NonNull RxBleConnection.WriteOperationAckStrategy writeOperationAckStrategy2) {
        this.writeOperationAckStrategy = writeOperationAckStrategy2;
        return this;
    }

    /* JADX DEBUG: Type inference failed for r0v5. Raw type applied. Possible types: io.reactivex.Observable<R>, io.reactivex.Observable<byte[]> */
    @Override // com.polidea.rxandroidble2.RxBleConnection.LongWriteOperationBuilder
    public Observable<byte[]> build() {
        if (this.writtenCharacteristicObservable == null) {
            throw new IllegalArgumentException("setCharacteristicUuid() or setCharacteristic() needs to be called before build()");
        } else if (this.bytes != null) {
            return (Observable<R>) this.writtenCharacteristicObservable.flatMapObservable(new Function<BluetoothGattCharacteristic, Observable<byte[]>>() {
                /* class com.polidea.rxandroidble2.internal.connection.LongWriteOperationBuilderImpl.AnonymousClass1 */

                public Observable<byte[]> apply(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
                    return LongWriteOperationBuilderImpl.this.operationQueue.queue(LongWriteOperationBuilderImpl.this.operationsProvider.provideLongWriteOperation(bluetoothGattCharacteristic, LongWriteOperationBuilderImpl.this.writeOperationAckStrategy, LongWriteOperationBuilderImpl.this.writeOperationRetryStrategy, LongWriteOperationBuilderImpl.this.maxBatchSizeProvider, LongWriteOperationBuilderImpl.this.bytes));
                }
            });
        } else {
            throw new IllegalArgumentException("setBytes() needs to be called before build()");
        }
    }
}
