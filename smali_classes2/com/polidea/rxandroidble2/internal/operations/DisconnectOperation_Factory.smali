.class public final Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;
.super Ljava/lang/Object;
.source "DisconnectOperation_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;",
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

.field private final bluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final bluetoothManagerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionStateChangeListenerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;",
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

.field private final rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothManager;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->macAddressProvider:Lbleshadow/javax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->bluetoothManagerProvider:Lbleshadow/javax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->bluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 40
    iput-object p6, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;

    .line 41
    iput-object p7, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->connectionStateChangeListenerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothManager;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;"
        }
    .end annotation

    .line 64
    new-instance v8, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v8
.end method

.method public static newDisconnectOperation(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;Ljava/lang/String;Landroid/bluetooth/BluetoothManager;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;)Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;
    .locals 9

    .line 82
    new-instance v8, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;Ljava/lang/String;Landroid/bluetooth/BluetoothManager;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;
    .locals 9

    .line 46
    new-instance v8, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 47
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 48
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->macAddressProvider:Lbleshadow/javax/inject/Provider;

    .line 49
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->bluetoothManagerProvider:Lbleshadow/javax/inject/Provider;

    .line 50
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/bluetooth/BluetoothManager;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->bluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 51
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/reactivex/Scheduler;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;

    .line 52
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->connectionStateChangeListenerProvider:Lbleshadow/javax/inject/Provider;

    .line 53
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;Ljava/lang/String;Landroid/bluetooth/BluetoothManager;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;)V

    return-object v8
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->get()Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;

    move-result-object v0

    return-object v0
.end method
