.class public Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;
.super Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;
.source "ConnectionPriorityChangeOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2/internal/SingleResponseOperation<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectionPriority:I

.field private final delayScheduler:Lio/reactivex/Scheduler;

.field private final operationTimeout:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 1
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 35
    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CONNECTION_PRIORITY_CHANGE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)V

    .line 36
    iput p4, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;->connectionPriority:I

    .line 37
    iput-wide p5, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;->operationTimeout:J

    .line 38
    iput-object p7, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 39
    iput-object p8, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;->delayScheduler:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method protected getCallback(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 44
    iget-wide v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;->operationTimeout:J

    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;->delayScheduler:Lio/reactivex/Scheduler;

    invoke-static {v0, v1, p1, v2}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method protected startOperation(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/polidea/rxandroidble2/exceptions/BleGattCannotStartException;
        }
    .end annotation

    .line 50
    iget v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;->connectionPriority:I

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result p1

    return p1
.end method
