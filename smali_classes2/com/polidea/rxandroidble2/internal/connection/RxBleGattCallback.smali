.class public Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;
.super Ljava/lang/Object;
.source "RxBleGattCallback.java"


# annotations
.annotation runtime Lcom/polidea/rxandroidble2/internal/connection/ConnectionScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    }
.end annotation


# instance fields
.field private bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private final bluetoothGattProvider:Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

.field private final callbackScheduler:Lio/reactivex/Scheduler;

.field private final changedCharacteristicSerializedPublishRelay:Lcom/jakewharton/rxrelay2/Relay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/Relay<",
            "Lcom/polidea/rxandroidble2/internal/util/CharacteristicChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final changedMtuOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionStatePublishRelay:Lcom/jakewharton/rxrelay2/PublishRelay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/PublishRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private final disconnectionRouter:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

.field private final errorMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/exceptions/BleGattException;",
            "Lio/reactivex/Observable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final nativeCallbackDispatcher:Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

.field private final readCharacteristicOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output<",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field

.field private final readDescriptorOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output<",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final readRssiOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final servicesDiscoveredOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation
.end field

.field private final writeCharacteristicOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output<",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field

.field private final writeDescriptorOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output<",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;)V
    .locals 1
    .param p1    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "bluetooth_callbacks"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/jakewharton/rxrelay2/PublishRelay;->create()Lcom/jakewharton/rxrelay2/PublishRelay;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->connectionStatePublishRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    .line 40
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->servicesDiscoveredOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    .line 41
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->readCharacteristicOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    .line 42
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->writeCharacteristicOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    .line 44
    invoke-static {}, Lcom/jakewharton/rxrelay2/PublishRelay;->create()Lcom/jakewharton/rxrelay2/PublishRelay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/PublishRelay;->toSerialized()Lcom/jakewharton/rxrelay2/Relay;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->changedCharacteristicSerializedPublishRelay:Lcom/jakewharton/rxrelay2/Relay;

    .line 45
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->readDescriptorOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    .line 46
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->writeDescriptorOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    .line 47
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->readRssiOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    .line 48
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->changedMtuOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    .line 49
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$1;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->errorMapper:Lio/reactivex/functions/Function;

    .line 67
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 61
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    .line 62
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->bluetoothGattProvider:Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    .line 63
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->disconnectionRouter:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    .line 64
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->bluetoothGattProvider:Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/jakewharton/rxrelay2/Relay;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->changedCharacteristicSerializedPublishRelay:Lcom/jakewharton/rxrelay2/Relay;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->readDescriptorOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->propagateErrorIfOccurred(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->writeDescriptorOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->readRssiOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->changedMtuOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    return-object p0
.end method

.method static synthetic access$200(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->disconnectionRouter:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;I)Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->mapConnectionStateToRxBleConnectionStatus(I)Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/jakewharton/rxrelay2/PublishRelay;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->connectionStatePublishRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    return-object p0
.end method

.method static synthetic access$500(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->servicesDiscoveredOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    return-object p0
.end method

.method static synthetic access$600(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->propagateErrorIfOccurred(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->readCharacteristicOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    return-object p0
.end method

.method static synthetic access$800(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->propagateErrorIfOccurred(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->writeCharacteristicOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    return-object p0
.end method

.method private isException(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private mapConnectionStateToRxBleConnectionStatus(I)Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 217
    sget-object p1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->DISCONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    return-object p1

    .line 215
    :pswitch_0
    sget-object p1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->DISCONNECTING:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    return-object p1

    .line 213
    :pswitch_1
    sget-object p1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->CONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    return-object p1

    .line 211
    :pswitch_2
    sget-object p1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->CONNECTING:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private propagateErrorIfOccurred(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z
    .locals 1

    .line 252
    invoke-direct {p0, p3}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->isException(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattException;

    invoke-direct {v0, p2, p3, p4}, Lcom/polidea/rxandroidble2/exceptions/BleGattException;-><init>(Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V

    invoke-direct {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->propagateStatusError(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Lcom/polidea/rxandroidble2/exceptions/BleGattException;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private propagateErrorIfOccurred(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z
    .locals 1

    .line 228
    invoke-direct {p0, p4}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->isException(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattCharacteristicException;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/polidea/rxandroidble2/exceptions/BleGattCharacteristicException;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V

    invoke-direct {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->propagateStatusError(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Lcom/polidea/rxandroidble2/exceptions/BleGattException;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private propagateErrorIfOccurred(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z
    .locals 1

    .line 243
    invoke-direct {p0, p4}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->isException(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleGattDescriptorException;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/polidea/rxandroidble2/exceptions/BleGattDescriptorException;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V

    invoke-direct {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->propagateStatusError(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Lcom/polidea/rxandroidble2/exceptions/BleGattException;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private propagateStatusError(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Lcom/polidea/rxandroidble2/exceptions/BleGattException;)Z
    .locals 0

    .line 261
    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->errorRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    invoke-virtual {p1, p2}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private withDisconnectionHandling(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->disconnectionRouter:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    .line 268
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->asErrorOnlyObservable()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->errorRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->errorMapper:Lio/reactivex/functions/Function;

    .line 270
    invoke-virtual {p1, v2}, Lcom/jakewharton/rxrelay2/PublishRelay;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 267
    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getBluetoothGattCallback()Landroid/bluetooth/BluetoothGattCallback;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object v0
.end method

.method public getOnCharacteristicChanged()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/internal/util/CharacteristicChangedEvent;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->disconnectionRouter:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    .line 314
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->asErrorOnlyObservable()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->changedCharacteristicSerializedPublishRelay:Lcom/jakewharton/rxrelay2/Relay;

    .line 313
    invoke-static {v0, v1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    .line 317
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnCharacteristicRead()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->readCharacteristicOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnCharacteristicWrite()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->writeCharacteristicOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnConnectionStateChange()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->connectionStatePublishRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lcom/jakewharton/rxrelay2/PublishRelay;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnDescriptorRead()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;>;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->readDescriptorOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnDescriptorWrite()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;>;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->writeDescriptorOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnMtuChanged()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->changedMtuOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnRssiRead()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->readRssiOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnServicesDiscovered()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->servicesDiscoveredOutput:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeDisconnect()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->disconnectionRouter:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->asErrorOnlyObservable()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setNativeCallback(Landroid/bluetooth/BluetoothGattCallback;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->setNativeCallback(Landroid/bluetooth/BluetoothGattCallback;)V

    return-void
.end method
