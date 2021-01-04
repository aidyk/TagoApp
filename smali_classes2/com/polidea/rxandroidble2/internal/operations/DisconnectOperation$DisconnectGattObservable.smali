.class Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;
.super Lio/reactivex/Single;
.source "DisconnectOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisconnectGattObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Single<",
        "Landroid/bluetooth/BluetoothGatt;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final disconnectScheduler:Lio/reactivex/Scheduler;

.field private final rxBleGattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lio/reactivex/Scheduler;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 138
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;->rxBleGattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 139
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;->disconnectScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;->rxBleGattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 145
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->getOnConnectionStateChange()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$2;

    invoke-direct {v1, p0}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$2;-><init>(Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;)V

    .line 146
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$1;

    invoke-direct {v1, p0}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$1;-><init>(Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;)V

    .line 153
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 160
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;->disconnectScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {p1}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$3;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$3;-><init>(Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
