.class public Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;
.super Lio/reactivex/Observable;
.source "ClientStateObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Lcom/polidea/rxandroidble2/RxBleClient$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final bleAdapterStateObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;"
        }
    .end annotation
.end field

.field private final locationServicesOkObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

.field private final rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

.field private final timerScheduler:Lio/reactivex/Scheduler;


# direct methods
.method protected constructor <init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;Lio/reactivex/Observable;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p3    # Lio/reactivex/Observable;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "location-ok-boolean-observable"
        .end annotation
    .end param
    .param p5    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "timeout"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    .line 46
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->bleAdapterStateObservable:Lio/reactivex/Observable;

    .line 47
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->locationServicesOkObservable:Lio/reactivex/Observable;

    .line 48
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    .line 49
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->timerScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;)Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;)Lio/reactivex/Observable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->bleAdapterStateObservable:Lio/reactivex/Observable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;)Lio/reactivex/Observable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->locationServicesOkObservable:Lio/reactivex/Observable;

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/Boolean;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 0

    .line 29
    invoke-static {p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->checkAdapterAndServicesState(Ljava/lang/Boolean;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static checkAdapterAndServicesState(Ljava/lang/Boolean;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleClient$State;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->isBluetoothEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_OFF:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    :goto_0
    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3;

    invoke-direct {p2, p3}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3;-><init>(Lio/reactivex/Observable;)V

    .line 95
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 112
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p2, 0x1

    .line 117
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private static checkPermissionUntilGranted(Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lio/reactivex/Scheduler;)Lio/reactivex/Single;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 63
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$2;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$2;-><init>(Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;)V

    .line 64
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeWhile(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lio/reactivex/Observable;->count()Lio/reactivex/Single;

    move-result-object p0

    new-instance p1, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$1;

    invoke-direct {p1}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$1;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lcom/polidea/rxandroidble2/RxBleClient$State;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->hasBluetoothAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lio/reactivex/disposables/Disposables;->empty()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 125
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->timerScheduler:Lio/reactivex/Scheduler;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->checkPermissionUntilGranted(Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$4;

    invoke-direct {v1, p0}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$4;-><init>(Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;)V

    .line 130
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMapObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
