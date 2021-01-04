.class Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$9;
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
        "Landroid/bluetooth/BluetoothGattDescriptor;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;[B)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$9;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$9;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/bluetooth/BluetoothGattDescriptor;)Lio/reactivex/CompletableSource;
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$9;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$9;->val$data:[B

    invoke-virtual {v0, p1, v1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lio/reactivex/Completable;

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

    .line 292
    check-cast p1, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$9;->apply(Landroid/bluetooth/BluetoothGattDescriptor;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
