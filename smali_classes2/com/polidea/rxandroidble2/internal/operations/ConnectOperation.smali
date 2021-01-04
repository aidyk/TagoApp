.class public Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;
.super Lcom/polidea/rxandroidble2/internal/QueueOperation;
.source "ConnectOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2/internal/QueueOperation<",
        "Landroid/bluetooth/BluetoothGatt;",
        ">;"
    }
.end annotation


# instance fields
.field private final autoConnect:Z

.field private final bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final bluetoothGattProvider:Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

.field private final connectTimeout:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

.field private final connectionCompat:Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;

.field private final connectionStateChangedAction:Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

.field private final rxBleGattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;ZLcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;)V
    .locals 0
    .param p5    # Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "connect-timeout"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "autoConnect"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/QueueOperation;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 59
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->connectionCompat:Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;

    .line 60
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->rxBleGattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 61
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->bluetoothGattProvider:Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    .line 62
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->connectTimeout:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    .line 63
    iput-boolean p6, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->autoConnect:Z

    .line 64
    iput-object p7, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->connectionStateChangedAction:Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->autoConnect:Z

    return p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->connectTimeout:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    return-object p0
.end method

.method static synthetic access$200(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)Lio/reactivex/Single;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->prepareConnectionTimeoutError()Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->bluetoothGattProvider:Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    return-object p0
.end method

.method static synthetic access$400(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->rxBleGattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)Lio/reactivex/Single;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->getBluetoothGattAndChangeStatusToConnected()Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->connectionStateChangedAction:Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$800(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->connectionCompat:Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;

    return-object p0
.end method

.method private getBluetoothGattAndChangeStatusToConnected()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$5;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$5;-><init>(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method private getConnectedBluetoothGatt()Lio/reactivex/Single;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$4;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$4;-><init>(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method private prepareConnectionTimeoutError()Lio/reactivex/Single;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$3;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$3;-><init>(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method private wrapWithTimeoutWhenNotAutoconnecting()Lio/reactivex/SingleTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/SingleTransformer<",
            "Landroid/bluetooth/BluetoothGatt;",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$2;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$2;-><init>(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)V

    return-object v0
.end method


# virtual methods
.method protected protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;",
            ")V"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$1;

    invoke-direct {v0, p0, p2}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$1;-><init>(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V

    .line 75
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->getConnectedBluetoothGatt()Lio/reactivex/Single;

    move-result-object v1

    .line 76
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->wrapWithTimeoutWhenNotAutoconnecting()Lio/reactivex/SingleTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->compose(Lio/reactivex/SingleTransformer;)Lio/reactivex/Single;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v0

    .line 79
    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/util/DisposableUtil;->disposableSingleObserverFromEmitter(Lio/reactivex/ObservableEmitter;)Lio/reactivex/observers/DisposableSingleObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object v0

    check-cast v0, Lio/reactivex/observers/DisposableSingleObserver;

    .line 80
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 82
    iget-boolean p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->autoConnect:Z

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p2}, Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;->release()V

    :cond_0
    return-void
.end method

.method protected provideException(Landroid/os/DeadObjectException;)Lcom/polidea/rxandroidble2/exceptions/BleException;
    .locals 3

    .line 179
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-object v0
.end method
