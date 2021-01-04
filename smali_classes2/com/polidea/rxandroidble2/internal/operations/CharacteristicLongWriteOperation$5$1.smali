.class Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$1;
.super Ljava/lang/Object;
.source "CharacteristicLongWriteOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->toLongWriteFailureOrError()Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lio/reactivex/Observable<",
        "Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;",
            ">;"
        }
    .end annotation

    .line 255
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleGattCharacteristicException;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleGattCannotStartException;

    if-nez v0, :cond_0

    .line 256
    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;

    iget-object v1, v1, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->val$byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;

    iget v2, v2, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->val$batchSize:I

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->access$300(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 259
    new-instance v1, Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;

    check-cast p1, Lcom/polidea/rxandroidble2/exceptions/BleGattException;

    invoke-direct {v1, v0, p1}, Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;-><init>(ILcom/polidea/rxandroidble2/exceptions/BleGattException;)V

    .line 263
    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$1;->apply(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
