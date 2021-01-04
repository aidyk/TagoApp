.class public final Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;",
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


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;->operationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;->operationProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newServiceDiscoveryManager(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;)Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;
    .locals 1

    .line 44
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;
    .locals 4

    .line 28
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;->operationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 29
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;->operationProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    move-result-object v0

    return-object v0
.end method
