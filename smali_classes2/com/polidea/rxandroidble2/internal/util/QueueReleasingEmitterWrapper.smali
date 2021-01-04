.class public Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;
.super Ljava/lang/Object;
.source "QueueReleasingEmitterWrapper.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/functions/Cancellable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/functions/Cancellable;"
    }
.end annotation


# instance fields
.field private final emitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final isEmitterCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;",
            "Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->isEmitterCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->emitter:Lio/reactivex/ObservableEmitter;

    .line 32
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;

    .line 33
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->setCancellable(Lio/reactivex/functions/Cancellable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->isEmitterCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 59
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWrappedEmitterUnsubscribed()Z
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->isEmitterCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onComplete()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;->release()V

    .line 39
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;->release()V

    .line 45
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->emitter:Lio/reactivex/ObservableEmitter;

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

    .line 55
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
