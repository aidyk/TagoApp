.class Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"


# annotations
.annotation runtime Lcom/polidea/rxandroidble2/internal/connection/ConnectionScope;
.end annotation


# instance fields
.field private final bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private deviceServicesObservable:Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation
.end field

.field private hasCachedResults:Z

.field private final operationProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

.field private final operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

.field private timeoutBehaviorSubject:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;)V
    .locals 1
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->timeoutBehaviorSubject:Lio/reactivex/subjects/Subject;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->hasCachedResults:Z

    .line 43
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    .line 44
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 45
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->operationProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    .line 46
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->reset()V

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)Lio/reactivex/subjects/Subject;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->timeoutBehaviorSubject:Lio/reactivex/subjects/Subject;

    return-object p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->reset()V

    return-void
.end method

.method static synthetic access$202(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->hasCachedResults:Z

    return p1
.end method

.method static synthetic access$300(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$400(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->operationProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    return-object p0
.end method

.method static synthetic access$500(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    return-object p0
.end method

.method private getListOfServicesFromGatt()Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$6;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$6;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$5;

    invoke-direct {v1, p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$5;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)V

    .line 101
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method private getTimeoutConfiguration()Lio/reactivex/Single;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->timeoutBehaviorSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->firstOrError()Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method private reset()V
    .locals 3

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->hasCachedResults:Z

    .line 66
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->getListOfServicesFromGatt()Lio/reactivex/Maybe;

    move-result-object v0

    .line 67
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->wrapIntoRxBleDeviceServices()Lio/reactivex/functions/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 68
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->getTimeoutConfiguration()Lio/reactivex/Single;

    move-result-object v1

    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->scheduleActualDiscoveryWithTimeout()Lio/reactivex/functions/Function;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->switchIfEmpty(Lio/reactivex/SingleSource;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$3;

    invoke-direct {v1, p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$3;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)V

    .line 69
    invoke-static {v1}, Lio/reactivex/internal/functions/Functions;->actionConsumer(Lio/reactivex/functions/Action;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$2;

    invoke-direct {v1, p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$2;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)V

    .line 75
    invoke-static {v1}, Lio/reactivex/internal/functions/Functions;->actionConsumer(Lio/reactivex/functions/Action;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lio/reactivex/Single;->cache()Lio/reactivex/Single;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->deviceServicesObservable:Lio/reactivex/Single;

    return-void
.end method

.method private scheduleActualDiscoveryWithTimeout()Lio/reactivex/functions/Function;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;>;"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$7;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$7;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)V

    return-object v0
.end method

.method private wrapIntoRxBleDeviceServices()Lio/reactivex/functions/Function;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$4;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$4;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)V

    return-object v0
.end method


# virtual methods
.method getDiscoverServicesSingle(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->hasCachedResults:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->deviceServicesObservable:Lio/reactivex/Single;

    return-object p1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->deviceServicesObservable:Lio/reactivex/Single;

    new-instance v1, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$1;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
