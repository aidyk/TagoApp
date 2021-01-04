.class public Lcom/polidea/rxandroidble2/helpers/LocationServicesOkObservable;
.super Lio/reactivex/Observable;
.source "LocationServicesOkObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final locationServicesOkObsImpl:Lio/reactivex/Observable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observable;)V
    .locals 0
    .param p1    # Lio/reactivex/Observable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "location-ok-boolean-observable"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/polidea/rxandroidble2/helpers/LocationServicesOkObservable;->locationServicesOkObsImpl:Lio/reactivex/Observable;

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/polidea/rxandroidble2/helpers/LocationServicesOkObservable;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-static {}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->builder()Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    invoke-direct {v1, p0}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;->clientModule(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;)Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;->build()Lcom/polidea/rxandroidble2/ClientComponent;

    move-result-object p0

    .line 34
    invoke-interface {p0}, Lcom/polidea/rxandroidble2/ClientComponent;->locationServicesOkObservable()Lcom/polidea/rxandroidble2/helpers/LocationServicesOkObservable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/util/DisposableUtil;->disposableObserver(Lio/reactivex/Observer;)Lio/reactivex/observers/DisposableObserver;

    move-result-object v0

    .line 47
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 48
    iget-object p1, p0, Lcom/polidea/rxandroidble2/helpers/LocationServicesOkObservable;->locationServicesOkObsImpl:Lio/reactivex/Observable;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    return-void
.end method
