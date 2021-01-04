.class final Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;
.super Ljava/lang/Object;
.source "CharacteristicLongWriteOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bufferIsNotEmptyAndOperationHasBeenAcknowledgedAndNotUnsubscribed(Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;Ljava/nio/ByteBuffer;Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;)Lio/reactivex/functions/Function;
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
        "*>;",
        "Lio/reactivex/ObservableSource<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$byteBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$emitterWrapper:Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;

.field final synthetic val$writeOperationAckStrategy:Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;Ljava/nio/ByteBuffer;Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;->val$emitterWrapper:Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;->val$byteBuffer:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;->val$writeOperationAckStrategy:Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bufferIsNotEmpty(Ljava/nio/ByteBuffer;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4$2;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4$2;-><init>(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method private notUnsubscribed(Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;)Lio/reactivex/functions/Predicate;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper<",
            "[B>;)",
            "Lio/reactivex/functions/Predicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4$3;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4$3;-><init>(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;)V

    return-object v0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "*>;)",
            "Lio/reactivex/ObservableSource<",
            "*>;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;->val$emitterWrapper:Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;

    .line 203
    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;->notUnsubscribed(Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;)Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeWhile(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;->val$byteBuffer:Ljava/nio/ByteBuffer;

    .line 204
    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;->bufferIsNotEmpty(Ljava/nio/ByteBuffer;)Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;->val$writeOperationAckStrategy:Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;

    .line 205
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4$1;-><init>(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;)V

    .line 206
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeWhile(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

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

    .line 198
    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
