.class Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;
.super Ljava/lang/Object;
.source "RxBleDeviceImpl.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/RxBleDevice;


# annotations
.annotation runtime Lcom/polidea/rxandroidble2/internal/DeviceScope;
.end annotation


# instance fields
.field private final bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final connectionStateRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private final connector:Lcom/polidea/rxandroidble2/internal/connection/Connector;

.field private isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/polidea/rxandroidble2/internal/connection/Connector;Lcom/jakewharton/rxrelay2/BehaviorRelay;)V
    .locals 2
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/polidea/rxandroidble2/internal/connection/Connector;",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 37
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->connector:Lcom/polidea/rxandroidble2/internal/connection/Connector;

    .line 38
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->connectionStateRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;)Lcom/polidea/rxandroidble2/internal/connection/Connector;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->connector:Lcom/polidea/rxandroidble2/internal/connection/Connector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 110
    :cond_0
    instance-of v0, p1, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 114
    :cond_1
    check-cast p1, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;

    .line 115
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public establishConnection(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/ConnectionSetup;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$1;-><init>(Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;Lcom/polidea/rxandroidble2/ConnectionSetup;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public establishConnection(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;-><init>()V

    .line 54
    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->setAutoConnect(Z)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->setSuppressIllegalOperationCheck(Z)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->build()Lcom/polidea/rxandroidble2/ConnectionSetup;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->establishConnection(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public establishConnection(ZLcom/polidea/rxandroidble2/Timeout;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/polidea/rxandroidble2/Timeout;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;-><init>()V

    .line 63
    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->setAutoConnect(Z)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->setOperationTimeout(Lcom/polidea/rxandroidble2/Timeout;)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 65
    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->setSuppressIllegalOperationCheck(Z)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->build()Lcom/polidea/rxandroidble2/ConnectionSetup;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->establishConnection(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getConnectionState()Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->connectionStateRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public observeConnectionStateChanges()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->connectionStateRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RxBleDeviceImpl{bluetoothDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
