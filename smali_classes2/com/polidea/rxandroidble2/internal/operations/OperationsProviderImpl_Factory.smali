.class public final Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;
.super Ljava/lang/Object;
.source "OperationsProviderImpl_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final bleServicesLoggerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final bluetoothGattProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
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

.field private final rssiReadOperationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;",
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

.field private final timeoutSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
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
            "Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->bleServicesLoggerProvider:Lbleshadow/javax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->bluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 39
    iput-object p6, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->timeoutSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 40
    iput-object p7, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->rssiReadOperationProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;
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
            "Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;"
        }
    .end annotation

    .line 63
    new-instance v8, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v8
.end method

.method public static newOperationsProviderImpl(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            "Landroid/bluetooth/BluetoothGatt;",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl;"
        }
    .end annotation

    .line 81
    new-instance v8, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lbleshadow/javax/inject/Provider;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl;
    .locals 9

    .line 45
    new-instance v8, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 46
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 47
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->bleServicesLoggerProvider:Lbleshadow/javax/inject/Provider;

    .line 48
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;

    .line 49
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->bluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 50
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/reactivex/Scheduler;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->timeoutSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 51
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/reactivex/Scheduler;

    iget-object v7, p0, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->rssiReadOperationProvider:Lbleshadow/javax/inject/Provider;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lbleshadow/javax/inject/Provider;)V

    return-object v8
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->get()Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl;

    move-result-object v0

    return-object v0
.end method
