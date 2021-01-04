.class Lcom/polidea/rxandroidble2/RxBleDeviceServices$3;
.super Ljava/lang/Object;
.source "RxBleDeviceServices.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/bluetooth/BluetoothGattService;",
        "Landroid/bluetooth/BluetoothGattCharacteristic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/RxBleDeviceServices;

.field final synthetic val$characteristicUuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Ljava/util/UUID;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$3;->this$0:Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$3;->val$characteristicUuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$3;->val$characteristicUuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 104
    :cond_0
    new-instance p1, Lcom/polidea/rxandroidble2/exceptions/BleCharacteristicNotFoundException;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$3;->val$characteristicUuid:Ljava/util/UUID;

    invoke-direct {p1, v0}, Lcom/polidea/rxandroidble2/exceptions/BleCharacteristicNotFoundException;-><init>(Ljava/util/UUID;)V

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    check-cast p1, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices$3;->apply(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    return-object p1
.end method
