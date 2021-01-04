.class Lcom/polidea/rxandroidble2/RxBleDeviceServices$6;
.super Ljava/lang/Object;
.source "RxBleDeviceServices.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Lio/reactivex/Single;
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

    .line 131
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$6;->this$0:Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$6;->val$characteristicUuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$6;->val$characteristicUuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    check-cast p1, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices$6;->apply(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    return-object p1
.end method
