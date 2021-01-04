.class public interface abstract Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;
.super Ljava/lang/Object;
.source "RxBleConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/RxBleConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LongWriteOperationBuilder"
.end annotation


# virtual methods
.method public abstract build()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract setBytes([B)Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setCharacteristicUuid(Ljava/util/UUID;)Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setMaxBatchSize(I)Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x202L
        .end annotation
    .end param
.end method

.method public abstract setWriteOperationAckStrategy(Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;)Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;
    .param p1    # Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setWriteOperationRetryStrategy(Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;)Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;
    .param p1    # Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
