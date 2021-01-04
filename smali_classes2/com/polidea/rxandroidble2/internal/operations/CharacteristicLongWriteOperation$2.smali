.class Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$2;
.super Ljava/lang/Object;
.source "CharacteristicLongWriteOperation.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->writeBatchAndObserve(ILjava/nio/ByteBuffer;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
        "Ljava/util/UUID;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;

.field final synthetic val$batchSize:I

.field final synthetic val$byteBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$onCharacteristicWrite:Lio/reactivex/Observable;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;Lio/reactivex/Observable;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$2;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$2;->val$onCharacteristicWrite:Lio/reactivex/Observable;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$2;->val$byteBuffer:Ljava/nio/ByteBuffer;

    iput p4, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$2;->val$batchSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;>;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$2;->val$onCharacteristicWrite:Lio/reactivex/Observable;

    .line 142
    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/util/DisposableUtil;->disposableObserverFromEmitter(Lio/reactivex/ObservableEmitter;)Lio/reactivex/observers/DisposableObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v0

    check-cast v0, Lio/reactivex/observers/DisposableObserver;

    .line 143
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$2;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$2;->val$byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$2;->val$batchSize:I

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->access$100(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;Ljava/nio/ByteBuffer;I)[B

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$2;->this$0:Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;

    invoke-static {v1, v0}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->access$200(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
