.class Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$2;
.super Ljava/lang/Object;
.source "CharacteristicLongWriteOperation.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->repositionByteBufferForRetry()Lio/reactivex/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$2;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;)V
    .locals 1

    .line 273
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;->getBatchIndex()I

    move-result p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$2;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;

    iget v0, v0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->val$batchSize:I

    mul-int p1, p1, v0

    .line 274
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$2;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->val$byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$2;->accept(Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;)V

    return-void
.end method
