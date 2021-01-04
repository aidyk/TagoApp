.class Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$1;
.super Ljava/lang/Object;
.source "CharacteristicLongWriteOperation.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
        "Ljava/util/UUID;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;

.field final synthetic val$emitterWrapper:Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$1;->val$emitterWrapper:Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$1;->val$emitterWrapper:Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->access$000(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->onNext(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$1;->val$emitterWrapper:Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$1;->val$emitterWrapper:Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$1;->onNext(Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
