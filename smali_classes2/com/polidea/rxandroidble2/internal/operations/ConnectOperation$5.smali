.class Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$5;
.super Ljava/lang/Object;
.source "ConnectOperation.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->getBluetoothGattAndChangeStatusToConnected()Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/bluetooth/BluetoothGatt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$5;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/bluetooth/BluetoothGatt;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$5;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->access$600(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

    move-result-object v0

    sget-object v1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->CONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;->onConnectionStateChange(Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;)V

    .line 172
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$5;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->access$300(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$5;->call()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method
