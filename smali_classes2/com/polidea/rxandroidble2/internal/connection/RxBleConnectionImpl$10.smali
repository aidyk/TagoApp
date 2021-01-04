.class Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$10;
.super Ljava/lang/Object;
.source "RxBleConnectionImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
        "Lio/reactivex/SingleSource<",
        "Landroid/bluetooth/BluetoothGattDescriptor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

.field final synthetic val$characteristicUuid:Ljava/util/UUID;

.field final synthetic val$descriptorUuid:Ljava/util/UUID;

.field final synthetic val$serviceUuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$10;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$10;->val$serviceUuid:Ljava/util/UUID;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$10;->val$characteristicUuid:Ljava/util/UUID;

    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$10;->val$descriptorUuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2/RxBleDeviceServices;)Lio/reactivex/SingleSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ")",
            "Lio/reactivex/SingleSource<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$10;->val$serviceUuid:Ljava/util/UUID;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$10;->val$characteristicUuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$10;->val$descriptorUuid:Ljava/util/UUID;

    invoke-virtual {p1, v0, v1, v2}, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Lio/reactivex/Single;

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

    .line 286
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$10;->apply(Lcom/polidea/rxandroidble2/RxBleDeviceServices;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
