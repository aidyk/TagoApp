.class public Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;
.super Ljava/lang/Object;
.source "ConnectorImpl.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/connection/Connector;


# instance fields
.field private final callbacksScheduler:Lio/reactivex/Scheduler;

.field private final clientOperationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

.field private final connectionComponentBuilder:Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p3    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "bluetooth_callbacks"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->clientOperationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    .line 34
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->connectionComponentBuilder:Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;

    .line 35
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->callbacksScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->connectionComponentBuilder:Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;)Lio/reactivex/Scheduler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->callbacksScheduler:Lio/reactivex/Scheduler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->observeDisconnections(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->enqueueConnectOperation(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->obtainRxBleConnection(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private enqueueConnectOperation(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;",
            ")",
            "Lio/reactivex/Observable<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->clientOperationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;->connectOperation()Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private static observeDisconnections(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;->gattCallback()Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->observeDisconnect()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static obtainRxBleConnection(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$2;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$2;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public prepareConnection(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/ConnectionSetup;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;Lcom/polidea/rxandroidble2/ConnectionSetup;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
