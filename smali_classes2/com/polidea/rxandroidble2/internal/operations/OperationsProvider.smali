.class public interface abstract Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;
.super Ljava/lang/Object;
.source "OperationsProvider.java"


# virtual methods
.method public abstract provideConnectionPriorityChangeOperation(IJLjava/util/concurrent/TimeUnit;)Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;
.end method

.method public abstract provideLongWriteOperation(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;Lcom/polidea/rxandroidble2/internal/connection/PayloadSizeLimitProvider;[B)Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;
.end method

.method public abstract provideMtuChangeOperation(I)Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation
.end method

.method public abstract provideReadCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/polidea/rxandroidble2/internal/operations/CharacteristicReadOperation;
.end method

.method public abstract provideReadDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;
.end method

.method public abstract provideRssiReadOperation()Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;
.end method

.method public abstract provideServiceDiscoveryOperation(JLjava/util/concurrent/TimeUnit;)Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;
.end method

.method public abstract provideWriteCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lcom/polidea/rxandroidble2/internal/operations/CharacteristicWriteOperation;
.end method

.method public abstract provideWriteDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lcom/polidea/rxandroidble2/internal/operations/DescriptorWriteOperation;
.end method
