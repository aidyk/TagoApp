.class Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$2;
.super Ljava/lang/Object;
.source "ClientOperationQueueImpl.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;

.field final synthetic val$operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;Lcom/polidea/rxandroidble2/internal/operations/Operation;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$2;->this$0:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$2;->val$operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$2;->val$operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    invoke-direct {v0, v1, p1}, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;-><init>(Lcom/polidea/rxandroidble2/internal/operations/Operation;Lio/reactivex/ObservableEmitter;)V

    .line 65
    new-instance v1, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$2$1;

    invoke-direct {v1, p0, v0}, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$2$1;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$2;Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;)V

    invoke-static {v1}, Lio/reactivex/disposables/Disposables;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 74
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$2;->val$operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/util/OperationLogger;->logOperationQueued(Lcom/polidea/rxandroidble2/internal/operations/Operation;)V

    .line 75
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$2;->this$0:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;->access$000(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;)Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;->add(Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;)V

    return-void
.end method
