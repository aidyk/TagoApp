.class public final Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;
.super Ljava/lang/Object;
.source "DisconnectionRouter_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterStateObservableProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final adapterWrapperProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final macAddressProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;->macAddressProvider:Lbleshadow/javax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;->adapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;->adapterStateObservableProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;>;)",
            "Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newDisconnectionRouter(Ljava/lang/String;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;)Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;-><init>(Ljava/lang/String;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;
    .locals 4

    .line 30
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;->macAddressProvider:Lbleshadow/javax/inject/Provider;

    .line 31
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;->adapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 32
    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;->adapterStateObservableProvider:Lbleshadow/javax/inject/Provider;

    .line 33
    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/Observable;

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;-><init>(Ljava/lang/String;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    move-result-object v0

    return-object v0
.end method
