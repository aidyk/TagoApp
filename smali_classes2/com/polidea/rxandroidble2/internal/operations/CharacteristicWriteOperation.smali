.class public Lcom/polidea/rxandroidble2/internal/operations/CharacteristicWriteOperation;
.super Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;
.source "CharacteristicWriteOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2/internal/SingleResponseOperation<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final data:[B


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 1
    .param p3    # Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "operation-timeout"
        .end annotation
    .end param

    .line 26
    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)V

    .line 27
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicWriteOperation;->bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 28
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicWriteOperation;->data:[B

    return-void
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
            "[B>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->getOnCharacteristicWrite()Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicWriteOperation;->bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 35
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil;->characteristicUUIDPredicate(Ljava/util/UUID;)Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    .line 37
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil;->getBytesFromAssociation()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method protected startOperation(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicWriteOperation;->bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicWriteOperation;->data:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 43
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicWriteOperation;->bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1
.end method
