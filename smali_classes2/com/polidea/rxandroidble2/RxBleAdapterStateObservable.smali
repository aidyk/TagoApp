.class public Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;
.super Lio/reactivex/Observable;
.source "RxBleAdapterStateObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdapterStateObs"


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 49
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(I)Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;->mapToBleAdapterState(I)Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;->context:Landroid/content/Context;

    return-object p0
.end method

.method private static createFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static mapToBleAdapterState(I)Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 90
    sget-object p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_OFF:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    return-object p0

    .line 87
    :pswitch_0
    sget-object p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_TURNING_OFF:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    return-object p0

    .line 83
    :pswitch_1
    sget-object p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    return-object p0

    .line 85
    :pswitch_2
    sget-object p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_TURNING_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$1;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$1;-><init>(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;Lio/reactivex/Observer;)V

    .line 66
    new-instance v1, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$2;

    invoke-direct {v1, p0, v0}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$2;-><init>(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;Landroid/content/BroadcastReceiver;)V

    invoke-static {v1}, Lio/reactivex/disposables/Disposables;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 76
    iget-object p1, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;->context:Landroid/content/Context;

    invoke-static {}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;->createFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
