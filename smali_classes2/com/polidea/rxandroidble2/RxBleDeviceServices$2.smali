.class Lcom/polidea/rxandroidble2/RxBleDeviceServices$2;
.super Ljava/lang/Object;
.source "RxBleDeviceServices.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
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

    .line 72
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$2;->this$0:Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$2;->val$characteristicUuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$2;->this$0:Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->access$000(Lcom/polidea/rxandroidble2/RxBleDeviceServices;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 76
    iget-object v2, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$2;->val$characteristicUuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 81
    :cond_1
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleCharacteristicNotFoundException;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$2;->val$characteristicUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleCharacteristicNotFoundException;-><init>(Ljava/util/UUID;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/RxBleDeviceServices$2;->call()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    return-object v0
.end method
