.class Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$4;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->wrapIntoRxBleDeviceServices()Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/util/List<",
        "Landroid/bluetooth/BluetoothGattService;",
        ">;",
        "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$4;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/List;)Lcom/polidea/rxandroidble2/RxBleDeviceServices;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    invoke-direct {v0, p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$4;->apply(Ljava/util/List;)Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    move-result-object p1

    return-object p1
.end method
