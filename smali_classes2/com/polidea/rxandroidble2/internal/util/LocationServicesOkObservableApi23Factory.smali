.class public Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;
.super Ljava/lang/Object;
.source "LocationServicesOkObservableApi23Factory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;->locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;->locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    return-object p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public get()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;-><init>(Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
