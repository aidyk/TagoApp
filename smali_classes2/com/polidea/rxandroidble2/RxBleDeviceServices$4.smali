.class Lcom/polidea/rxandroidble2/RxBleDeviceServices$4;
.super Ljava/lang/Object;
.source "RxBleDeviceServices.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getDescriptor(Ljava/util/UUID;Ljava/util/UUID;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/bluetooth/BluetoothGattCharacteristic;",
        "Landroid/bluetooth/BluetoothGattDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/RxBleDeviceServices;

.field final synthetic val$descriptorUuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Ljava/util/UUID;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$4;->this$0:Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$4;->val$descriptorUuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$4;->val$descriptorUuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 119
    :cond_0
    new-instance p1, Lcom/polidea/rxandroidble2/exceptions/BleDescriptorNotFoundException;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$4;->val$descriptorUuid:Ljava/util/UUID;

    invoke-direct {p1, v0}, Lcom/polidea/rxandroidble2/exceptions/BleDescriptorNotFoundException;-><init>(Ljava/util/UUID;)V

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    check-cast p1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices$4;->apply(Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    return-object p1
.end method
