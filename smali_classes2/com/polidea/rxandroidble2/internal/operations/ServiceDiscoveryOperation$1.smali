.class Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$1;
.super Ljava/lang/Object;
.source "ServiceDiscoveryOperation.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->getCallback(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/polidea/rxandroidble2/RxBleDeviceServices;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->access$100(Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;)Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->access$000(Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->log(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$1;->accept(Lcom/polidea/rxandroidble2/RxBleDeviceServices;)V

    return-void
.end method
