.class Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$3;
.super Ljava/lang/Object;
.source "ConnectOperation.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->prepareConnectionTimeoutError()Lio/reactivex/Single;
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

    .line 103
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$3;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/bluetooth/BluetoothGatt;
    .locals 3

    .line 106
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattCallbackTimeoutException;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$3;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->access$300(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sget-object v2, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CONNECTION_STATE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2/exceptions/BleGattCallbackTimeoutException;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$3;->call()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method
