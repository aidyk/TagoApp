.class Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry$1;
.super Ljava/lang/Object;
.source "FIFORunnableEntry.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->run(Lcom/polidea/rxandroidble2/internal/serialization/QueueSemaphore;Lio/reactivex/Scheduler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry$1;->this$0:Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry$1;->this$0:Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operationResultObserver:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry$1;->this$0:Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operationResultObserver:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry$1;->this$0:Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operationResultObserver:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry$1;->this$0:Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operationResultObserver:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
