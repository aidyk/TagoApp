.class public Lcom/polidea/rxandroidble2/RxBleDeviceServices;
.super Ljava/lang/Object;
.source "RxBleDeviceServices.java"


# instance fields
.field private final bluetoothGattServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->bluetoothGattServices:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/RxBleDeviceServices;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->bluetoothGattServices:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getBluetoothGattServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->bluetoothGattServices:Ljava/util/List;

    return-object v0
.end method

.method public getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$2;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices$2;-><init>(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Ljava/util/UUID;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getService(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$3;

    invoke-direct {v0, p0, p2}, Lcom/polidea/rxandroidble2/RxBleDeviceServices$3;-><init>(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Ljava/util/UUID;)V

    .line 98
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor(Ljava/util/UUID;Ljava/util/UUID;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$4;

    invoke-direct {v0, p0, p2}, Lcom/polidea/rxandroidble2/RxBleDeviceServices$4;-><init>(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Ljava/util/UUID;)V

    .line 113
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getService(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$6;

    invoke-direct {v0, p0, p2}, Lcom/polidea/rxandroidble2/RxBleDeviceServices$6;-><init>(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Ljava/util/UUID;)V

    .line 131
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/polidea/rxandroidble2/RxBleDeviceServices$5;

    invoke-direct {p2, p0, p3}, Lcom/polidea/rxandroidble2/RxBleDeviceServices$5;-><init>(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Ljava/util/UUID;)V

    .line 137
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getService(Ljava/util/UUID;)Lio/reactivex/Single;
    .locals 2
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->bluetoothGattServices:Ljava/util/List;

    invoke-static {v0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/RxBleDeviceServices$1;

    invoke-direct {v1, p0, p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices$1;-><init>(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Ljava/util/UUID;)V

    .line 49
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/exceptions/BleServiceNotFoundException;

    invoke-direct {v1, p1}, Lcom/polidea/rxandroidble2/exceptions/BleServiceNotFoundException;-><init>(Ljava/util/UUID;)V

    .line 57
    invoke-static {v1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Maybe;->switchIfEmpty(Lio/reactivex/SingleSource;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
