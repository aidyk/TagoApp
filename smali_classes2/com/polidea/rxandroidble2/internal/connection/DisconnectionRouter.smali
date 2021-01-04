.class Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;
.super Ljava/lang/Object;
.source "DisconnectionRouter.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterInput;
.implements Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;


# annotations
.annotation runtime Lcom/polidea/rxandroidble2/internal/connection/ConnectionScope;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisconnectionRouter"


# instance fields
.field private adapterMonitoringDisposable:Lio/reactivex/disposables/Disposable;

.field private final exceptionEmitters:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/polidea/rxandroidble2/exceptions/BleException;",
            ">;>;"
        }
    .end annotation
.end field

.field private exceptionOccurred:Lcom/polidea/rxandroidble2/exceptions/BleException;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "mac-address"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->exceptionEmitters:Ljava/util/Queue;

    .line 53
    invoke-static {p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->awaitAdapterNotUsable(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$3;

    invoke-direct {p3, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$3;-><init>(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object p1

    new-instance p2, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$1;

    invoke-direct {p2, p0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$1;-><init>(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)V

    new-instance p3, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$2;

    invoke-direct {p3, p0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$2;-><init>(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)V

    .line 61
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->adapterMonitoringDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)Lcom/polidea/rxandroidble2/exceptions/BleException;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->exceptionOccurred:Lcom/polidea/rxandroidble2/exceptions/BleException;

    return-object p0
.end method

.method static synthetic access$002(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;Lcom/polidea/rxandroidble2/exceptions/BleException;)Lcom/polidea/rxandroidble2/exceptions/BleException;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->exceptionOccurred:Lcom/polidea/rxandroidble2/exceptions/BleException;

    return-object p1
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->notifySubscribersAboutException()V

    return-void
.end method

.method static synthetic access$200(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->storeEmitterToBeNotifiedInTheFuture(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)Ljava/util/Queue;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->exceptionEmitters:Ljava/util/Queue;

    return-object p0
.end method

.method private static awaitAdapterNotUsable(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$5;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$5;-><init>()V

    .line 79
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->isBluetoothEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$4;

    invoke-direct {p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$4;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private notifySubscribersAboutException()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->adapterMonitoringDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->adapterMonitoringDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 122
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->exceptionEmitters:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->exceptionEmitters:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableEmitter;

    .line 124
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->exceptionOccurred:Lcom/polidea/rxandroidble2/exceptions/BleException;

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 125
    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized onExceptionOccurred(Lcom/polidea/rxandroidble2/exceptions/BleException;)V
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->exceptionOccurred:Lcom/polidea/rxandroidble2/exceptions/BleException;

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->exceptionOccurred:Lcom/polidea/rxandroidble2/exceptions/BleException;

    .line 113
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->notifySubscribersAboutException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 110
    monitor-exit p0

    throw p1
.end method

.method private storeEmitterToBeNotifiedInTheFuture(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/polidea/rxandroidble2/exceptions/BleException;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->exceptionEmitters:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$7;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$7;-><init>(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;Lio/reactivex/ObservableEmitter;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->setCancellable(Lio/reactivex/functions/Cancellable;)V

    return-void
.end method


# virtual methods
.method public asErrorOnlyObservable()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->asValueOnlyObservable()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$8;

    invoke-direct {v1, p0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$8;-><init>(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)V

    .line 165
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public asValueOnlyObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/exceptions/BleException;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$6;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$6;-><init>(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public onDisconnectedException(Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->onExceptionOccurred(Lcom/polidea/rxandroidble2/exceptions/BleException;)V

    return-void
.end method

.method public onGattConnectionStateException(Lcom/polidea/rxandroidble2/exceptions/BleGattException;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->onExceptionOccurred(Lcom/polidea/rxandroidble2/exceptions/BleException;)V

    return-void
.end method
