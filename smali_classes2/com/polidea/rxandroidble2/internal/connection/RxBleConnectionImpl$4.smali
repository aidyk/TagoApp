.class Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$4;
.super Ljava/lang/Object;
.source "RxBleConnectionImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->readCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
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
        "Lio/reactivex/SingleSource<",
        "+[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$4;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Lio/reactivex/SingleSource<",
            "+[B>;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$4;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/Single;

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

    .line 214
    check-cast p1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$4;->apply(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
