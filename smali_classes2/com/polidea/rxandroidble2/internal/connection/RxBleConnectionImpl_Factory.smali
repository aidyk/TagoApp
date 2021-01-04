.class public final Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;
.super Ljava/lang/Object;
.source "RxBleConnectionImpl_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;",
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

.field private final callbackSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final descriptorWriterProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final gattCallbackProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final illegalOperationCheckerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;",
            ">;"
        }
    .end annotation
.end field

.field private final longWriteOperationBuilderProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mtuProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationIndicationManagerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final operationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final operationQueueProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceDiscoveryManagerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->operationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 49
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->gattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->serviceDiscoveryManagerProvider:Lbleshadow/javax/inject/Provider;

    .line 52
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->notificationIndicationManagerProvider:Lbleshadow/javax/inject/Provider;

    .line 53
    iput-object p6, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->mtuProvider:Lbleshadow/javax/inject/Provider;

    .line 54
    iput-object p7, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->descriptorWriterProvider:Lbleshadow/javax/inject/Provider;

    .line 55
    iput-object p8, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->operationProvider:Lbleshadow/javax/inject/Provider;

    .line 56
    iput-object p9, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->longWriteOperationBuilderProvider:Lbleshadow/javax/inject/Provider;

    .line 57
    iput-object p10, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->callbackSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 58
    iput-object p11, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->illegalOperationCheckerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;"
        }
    .end annotation

    .line 89
    new-instance v12, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v12
.end method

.method public static newRxBleConnectionImpl(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;Lbleshadow/javax/inject/Provider;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;)Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            "Landroid/bluetooth/BluetoothGatt;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;",
            ">;",
            "Lio/reactivex/Scheduler;",
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;",
            ")",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;"
        }
    .end annotation

    .line 115
    new-instance v12, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    move-object/from16 v4, p3

    check-cast v4, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    move-object/from16 v5, p4

    check-cast v5, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    move-object/from16 v6, p5

    check-cast v6, Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;

    move-object/from16 v7, p6

    check-cast v7, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;Lbleshadow/javax/inject/Provider;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;)V

    return-object v12
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;
    .locals 13

    .line 63
    new-instance v12, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->operationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 64
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->gattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 65
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 66
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->serviceDiscoveryManagerProvider:Lbleshadow/javax/inject/Provider;

    .line 67
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->notificationIndicationManagerProvider:Lbleshadow/javax/inject/Provider;

    .line 68
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->mtuProvider:Lbleshadow/javax/inject/Provider;

    .line 69
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->descriptorWriterProvider:Lbleshadow/javax/inject/Provider;

    .line 70
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->operationProvider:Lbleshadow/javax/inject/Provider;

    .line 71
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    iget-object v9, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->longWriteOperationBuilderProvider:Lbleshadow/javax/inject/Provider;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->callbackSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 73
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lio/reactivex/Scheduler;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->illegalOperationCheckerProvider:Lbleshadow/javax/inject/Provider;

    .line 74
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;Lbleshadow/javax/inject/Provider;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;)V

    return-object v12
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    move-result-object v0

    return-object v0
.end method
