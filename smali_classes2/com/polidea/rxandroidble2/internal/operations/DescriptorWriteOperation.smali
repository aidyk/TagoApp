.class public Lcom/polidea/rxandroidble2/internal/operations/DescriptorWriteOperation;
.super Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;
.source "DescriptorWriteOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2/internal/SingleResponseOperation<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final bluetoothGattCharacteristicDefaultWriteType:I

.field private bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field private data:[B


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;ILandroid/bluetooth/BluetoothGattDescriptor;[B)V
    .locals 1
    .param p3    # Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "operation-timeout"
        .end annotation
    .end param

    .line 31
    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->DESCRIPTOR_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)V

    .line 32
    iput p4, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorWriteOperation;->bluetoothGattCharacteristicDefaultWriteType:I

    .line 33
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorWriteOperation;->bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 34
    iput-object p6, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorWriteOperation;->data:[B

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

    .line 40
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->getOnDescriptorWrite()Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorWriteOperation;->bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 41
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil;->descriptorPredicate(Landroid/bluetooth/BluetoothGattDescriptor;)Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    .line 43
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil;->getBytesFromAssociation()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method protected startOperation(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorWriteOperation;->bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorWriteOperation;->data:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 58
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorWriteOperation;->bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v1

    .line 60
    iget v2, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorWriteOperation;->bluetoothGattCharacteristicDefaultWriteType:I

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 62
    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorWriteOperation;->bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    .line 63
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    return p1
.end method
