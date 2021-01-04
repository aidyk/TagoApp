.class public final Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;
.super Ljava/lang/Object;
.source "ConnectionPriorityChangeOperation_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothGattProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionPriorityProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final delaySchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final operationTimeoutProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Long;",
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

.field private final timeUnitProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/TimeUnit;",
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
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->connectionPriorityProvider:Lbleshadow/javax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->operationTimeoutProvider:Lbleshadow/javax/inject/Provider;

    .line 40
    iput-object p6, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->timeUnitProvider:Lbleshadow/javax/inject/Provider;

    .line 41
    iput-object p7, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->delaySchedulerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;"
        }
    .end annotation

    .line 64
    new-instance v8, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v8
.end method

.method public static newConnectionPriorityChangeOperation(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;
    .locals 10

    .line 82
    new-instance v9, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;
    .locals 10

    .line 46
    new-instance v9, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 47
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 48
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;

    .line 49
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->connectionPriorityProvider:Lbleshadow/javax/inject/Provider;

    .line 50
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->operationTimeoutProvider:Lbleshadow/javax/inject/Provider;

    .line 51
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->timeUnitProvider:Lbleshadow/javax/inject/Provider;

    .line 52
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->delaySchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 53
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lio/reactivex/Scheduler;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v9
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation_Factory;->get()Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;

    move-result-object v0

    return-object v0
.end method
