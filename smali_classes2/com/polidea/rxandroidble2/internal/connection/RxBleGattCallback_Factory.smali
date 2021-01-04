.class public final Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;
.super Ljava/lang/Object;
.source "RxBleGattCallback_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothGattProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final disconnectionRouterProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeCallbackDispatcherProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;->callbackSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 24
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;->disconnectionRouterProvider:Lbleshadow/javax/inject/Provider;

    .line 25
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;->nativeCallbackDispatcherProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newRxBleGattCallback(Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;
    .locals 1

    .line 54
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    check-cast p2, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    check-cast p3, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;-><init>(Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;
    .locals 5

    .line 30
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;->callbackSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 31
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 32
    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;->disconnectionRouterProvider:Lbleshadow/javax/inject/Provider;

    .line 33
    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;->nativeCallbackDispatcherProvider:Lbleshadow/javax/inject/Provider;

    .line 34
    invoke-interface {v4}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;-><init>(Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    move-result-object v0

    return-object v0
.end method
