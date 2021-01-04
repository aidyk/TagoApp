.class public Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;
.super Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;
.source "DescriptorReadOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2/internal/SingleResponseOperation<",
        "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
        "Landroid/bluetooth/BluetoothGattDescriptor;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 1
    .param p3    # Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "operation-timeout"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 27
    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->DESCRIPTOR_READ:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)V

    .line 28
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;->bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

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
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->getOnDescriptorRead()Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;->bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 35
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil;->descriptorPredicate(Landroid/bluetooth/BluetoothGattDescriptor;)Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method protected startOperation(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;->bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1
.end method
