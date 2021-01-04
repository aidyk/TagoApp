.class final Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;
.super Ljava/lang/Object;
.source "CharacteristicLongWriteOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->errorIsRetryableAndAccordingTo(Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;Ljava/nio/ByteBuffer;I)Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Throwable;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$batchSize:I

.field final synthetic val$byteBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$writeOperationRetryStrategy:Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->val$writeOperationRetryStrategy:Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->val$byteBuffer:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->val$batchSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;Ljava/nio/ByteBuffer;I)I
    .locals 0

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->calculateFailedBatchIndex(Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method private calculateFailedBatchIndex(Ljava/nio/ByteBuffer;I)I
    .locals 0

    .line 280
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private repositionByteBufferForRetry()Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Consumer<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$2;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$2;-><init>(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;)V

    return-object v0
.end method

.method private toLongWriteFailureOrError()Lio/reactivex/functions/Function;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;",
            ">;>;"
        }
    .end annotation

    .line 252
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5$1;-><init>(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;)V

    return-object v0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "*>;"
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->toLongWriteFailureOrError()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 246
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->repositionByteBufferForRetry()Lio/reactivex/functions/Consumer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->val$writeOperationRetryStrategy:Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;

    .line 247
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

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

    .line 240
    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
