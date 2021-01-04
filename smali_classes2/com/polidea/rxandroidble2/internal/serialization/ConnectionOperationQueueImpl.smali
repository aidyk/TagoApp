.class public Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;
.super Ljava/lang/Object;
.source "ConnectionOperationQueueImpl.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;
.implements Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;


# annotations
.annotation runtime Lcom/polidea/rxandroidble2/internal/connection/ConnectionScope;
.end annotation


# instance fields
.field private final deviceMacAddress:Ljava/lang/String;

.field private disconnectionException:Lcom/polidea/rxandroidble2/exceptions/BleException;

.field private final disconnectionRouterOutput:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;

.field private disconnectionThrowableSubscription:Lio/reactivex/observers/DisposableObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observers/DisposableObserver<",
            "Lcom/polidea/rxandroidble2/exceptions/BleException;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;

.field private final runnableFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile shouldRun:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;Ljava/util/concurrent/ExecutorService;Lio/reactivex/Scheduler;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "mac-address"
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "executor_connection_queue"
        .end annotation
    .end param
    .param p4    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "bluetooth_interaction"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->queue:Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->shouldRun:Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->disconnectionException:Lcom/polidea/rxandroidble2/exceptions/BleException;

    .line 51
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->deviceMacAddress:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->disconnectionRouterOutput:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;

    .line 53
    new-instance p1, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl$1;

    invoke-direct {p1, p0, p4}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl$1;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;Lio/reactivex/Scheduler;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->runnableFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->shouldRun:Z

    return p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;)Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->queue:Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->flushQueue()V

    return-void
.end method

.method private declared-synchronized flushQueue()V
    .locals 2

    monitor-enter p0

    .line 90
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->queue:Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->queue:Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;->takeNow()Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;

    move-result-object v0

    .line 92
    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operationResultObserver:Lio/reactivex/ObservableEmitter;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->disconnectionException:Lcom/polidea/rxandroidble2/exceptions/BleException;

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 89
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onConnectionSubscribed()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->disconnectionRouterOutput:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;->asValueOnlyObservable()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl$3;

    invoke-direct {v1, p0}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl$3;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;)V

    .line 137
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v0

    check-cast v0, Lio/reactivex/observers/DisposableObserver;

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->disconnectionThrowableSubscription:Lio/reactivex/observers/DisposableObserver;

    return-void
.end method

.method public onConnectionUnsubscribed()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->disconnectionThrowableSubscription:Lio/reactivex/observers/DisposableObserver;

    invoke-virtual {v0}, Lio/reactivex/observers/DisposableObserver;->dispose()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->disconnectionThrowableSubscription:Lio/reactivex/observers/DisposableObserver;

    .line 159
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->deviceMacAddress:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->terminate(Lcom/polidea/rxandroidble2/exceptions/BleException;)V

    return-void
.end method

.method public declared-synchronized queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/polidea/rxandroidble2/internal/operations/Operation<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->shouldRun:Z

    if-nez v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->disconnectionException:Lcom/polidea/rxandroidble2/exceptions/BleException;

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 103
    :cond_0
    :try_start_1
    new-instance v0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl$2;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;Lcom/polidea/rxandroidble2/internal/operations/Operation;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 98
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized terminate(Lcom/polidea/rxandroidble2/exceptions/BleException;)V
    .locals 3

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->disconnectionException:Lcom/polidea/rxandroidble2/exceptions/BleException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 126
    monitor-exit p0

    return-void

    .line 128
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection operations queue to be terminated ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->deviceMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iput-boolean v1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->shouldRun:Z

    .line 130
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->disconnectionException:Lcom/polidea/rxandroidble2/exceptions/BleException;

    .line 131
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->runnableFuture:Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 123
    monitor-exit p0

    throw p1
.end method
