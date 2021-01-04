.class Lcom/polidea/rxandroidble2/RxBleDeviceServices$1;
.super Ljava/lang/Object;
.source "RxBleDeviceServices.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getService(Ljava/util/UUID;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Landroid/bluetooth/BluetoothGattService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/RxBleDeviceServices;

.field final synthetic val$serviceUuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Ljava/util/UUID;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$1;->this$0:Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$1;->val$serviceUuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleDeviceServices$1;->val$serviceUuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    check-cast p1, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices$1;->test(Landroid/bluetooth/BluetoothGattService;)Z

    move-result p1

    return p1
.end method
