.class public Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;
.super Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;
.source "ServiceDiscoveryOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2/internal/SingleResponseOperation<",
        "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
        ">;"
    }
.end annotation


# instance fields
.field private final bleServicesLogger:Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;

.field private final bluetoothGatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->SERVICE_DISCOVERY:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-direct {p0, p2, p1, v0, p4}, Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)V

    .line 36
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 37
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->bleServicesLogger:Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;)Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->bleServicesLogger:Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;

    return-object p0
.end method


# virtual methods
.method protected getCallback(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->getOnServicesDiscovered()Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$1;-><init>(Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;)V

    .line 43
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method protected startOperation(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 0

    .line 53
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    return p1
.end method

.method protected timeoutFallbackProcedure(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lio/reactivex/Scheduler;)Lio/reactivex/Single;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance p2, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$2;

    invoke-direct {p2, p0, p1, p3}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$2;-><init>(Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;Landroid/bluetooth/BluetoothGatt;Lio/reactivex/Scheduler;)V

    invoke-static {p2}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
