.class public Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;
.super Lcom/polidea/rxandroidble2/internal/QueueOperation;
.source "DisconnectOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2/internal/QueueOperation<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothGattProvider:Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

.field private final bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

.field private final bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final connectionStateChangeListener:Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

.field private final macAddress:Ljava/lang/String;

.field private final rxBleGattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

.field private final timeoutConfiguration:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;Ljava/lang/String;Landroid/bluetooth/BluetoothManager;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "mac-address"
        .end annotation
    .end param
    .param p5    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "bluetooth_interaction"
        .end annotation
    .end param
    .param p6    # Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "disconnect-timeout"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/QueueOperation;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->rxBleGattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 55
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->bluetoothGattProvider:Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    .line 56
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->macAddress:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 58
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

    .line 59
    iput-object p6, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->timeoutConfiguration:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    .line 60
    iput-object p7, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->connectionStateChangeListener:Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

    return-void
.end method

.method private disconnect(Landroid/bluetooth/BluetoothGatt;)Lio/reactivex/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->rxBleGattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

    invoke-direct {v0, p1, v1, v2}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lio/reactivex/Scheduler;)V

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->timeoutConfiguration:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-wide v1, v1, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeout:J

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->timeoutConfiguration:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-object v3, v3, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeoutTimeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->timeoutConfiguration:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-object v4, v4, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeoutScheduler:Lio/reactivex/Scheduler;

    .line 127
    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v5

    .line 126
    invoke-virtual/range {v0 .. v5}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;->timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/SingleSource;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private disconnectIfRequired(Landroid/bluetooth/BluetoothGatt;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->isDisconnected(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->disconnect(Landroid/bluetooth/BluetoothGatt;)Lio/reactivex/Single;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private isDisconnected(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method considerGattDisconnected(Lio/reactivex/Emitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Emitter<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;",
            ")V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->connectionStateChangeListener:Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

    sget-object v1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->DISCONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;->onConnectionStateChange(Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;)V

    .line 110
    invoke-interface {p2}, Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;->release()V

    .line 111
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method protected protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;",
            ")V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->connectionStateChangeListener:Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

    sget-object v1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->DISCONNECTING:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;->onConnectionStateChange(Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;)V

    .line 66
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->bluetoothGattProvider:Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Disconnect operation has been executed but GATT instance was null - considering disconnected."

    const/4 v1, 0x0

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->considerGattDisconnected(Lio/reactivex/Emitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->disconnectIfRequired(Landroid/bluetooth/BluetoothGatt;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

    .line 72
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;-><init>(Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V

    .line 73
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    :goto_0
    return-void
.end method

.method protected provideException(Landroid/os/DeadObjectException;)Lcom/polidea/rxandroidble2/exceptions/BleException;
    .locals 3

    .line 171
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->macAddress:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-object v0
.end method
