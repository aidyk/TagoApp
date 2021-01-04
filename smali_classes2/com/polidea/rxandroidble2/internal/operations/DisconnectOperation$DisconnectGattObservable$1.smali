.class Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$1;
.super Ljava/lang/Object;
.source "DisconnectOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;->subscribeActual(Lio/reactivex/SingleObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
        "Landroid/bluetooth/BluetoothGatt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;->access$000(Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;)Landroid/bluetooth/BluetoothGatt;

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

    .line 153
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$1;->apply(Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method
