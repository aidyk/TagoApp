.class Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "RxBleGattCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method private isDisconnectedOrDisconnecting(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    const-string v0, "onCharacteristicChanged characteristic=%s"

    const/4 v1, 0x1

    .line 131
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->notifyNativeChangedCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 133
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 140
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/jakewharton/rxrelay2/Relay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jakewharton/rxrelay2/Relay;->hasObservers()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/jakewharton/rxrelay2/Relay;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/CharacteristicChangedEvent;

    .line 143
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 144
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 145
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Lcom/polidea/rxandroidble2/internal/util/CharacteristicChangedEvent;-><init>(Ljava/util/UUID;Ljava/lang/Integer;[B)V

    .line 141
    invoke-virtual {p1, v0}, Lcom/jakewharton/rxrelay2/Relay;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 7

    const-string v0, "onCharacteristicRead characteristic=%s status=%d"

    const/4 v1, 0x2

    .line 105
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->notifyNativeReadCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 109
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$700(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 110
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$700(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v2

    sget-object v6, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_READ:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 109
    invoke-static/range {v1 .. v6}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$800(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$700(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object p1

    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    new-instance p3, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;-><init>(Ljava/lang/Object;[B)V

    invoke-virtual {p1, p3}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 7

    const-string v0, "onCharacteristicWrite characteristic=%s status=%d"

    const/4 v1, 0x2

    .line 118
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->notifyNativeWriteCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 122
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$900(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 123
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$900(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v2

    sget-object v6, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 122
    invoke-static/range {v1 .. v6}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$800(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$900(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object p1

    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    new-instance p3, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;-><init>(Ljava/lang/Object;[B)V

    invoke-virtual {p1, p3}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    const-string v0, "onConnectionStateChange newState=%d status=%d"

    const/4 v1, 0x2

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->notifyNativeConnectionStateCallback(Landroid/bluetooth/BluetoothGatt;II)V

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 74
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$100(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;->updateBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 76
    invoke-direct {p0, p3}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->isDisconnectedOrDisconnecting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$200(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->onDisconnectedException(Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 79
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$200(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/exceptions/BleGattException;

    sget-object v2, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CONNECTION_STATE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-direct {v1, p1, p2, v2}, Lcom/polidea/rxandroidble2/exceptions/BleGattException;-><init>(Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->onGattConnectionStateException(Lcom/polidea/rxandroidble2/exceptions/BleGattException;)V

    .line 84
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$400(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/jakewharton/rxrelay2/PublishRelay;

    move-result-object p1

    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$300(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;I)Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 7

    const-string v0, "onCharacteristicRead descriptor=%s status=%d"

    const/4 v1, 0x2

    .line 153
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->notifyNativeDescriptorReadCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 155
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 157
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1100(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 158
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1100(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v2

    sget-object v6, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->DESCRIPTOR_READ:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1200(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1100(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object p1

    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    new-instance p3, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;-><init>(Ljava/lang/Object;[B)V

    invoke-virtual {p1, p3}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 7

    const-string v0, "onDescriptorWrite descriptor=%s status=%d"

    const/4 v1, 0x2

    .line 165
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->notifyNativeDescriptorWriteCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 167
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 169
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1300(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 170
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1300(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v2

    sget-object v6, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->DESCRIPTOR_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1200(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1300(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object p1

    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    new-instance p3, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;-><init>(Ljava/lang/Object;[B)V

    invoke-virtual {p1, p3}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    const-string v0, "onMtuChanged mtu=%d status=%d"

    const/4 v1, 0x2

    .line 196
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->notifyNativeMtuChangedCallback(Landroid/bluetooth/BluetoothGatt;II)V

    .line 198
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 200
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1500(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 201
    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1500(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v1

    sget-object v2, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->ON_MTU_CHANGED:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-static {v0, v1, p1, p3, v2}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$600(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1500(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object p1

    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    const-string v0, "onReadRemoteRssi rssi=%d status=%d"

    const/4 v1, 0x2

    .line 184
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->notifyNativeReadRssiCallback(Landroid/bluetooth/BluetoothGatt;II)V

    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    .line 188
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1400(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 189
    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1400(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v1

    sget-object v2, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->READ_RSSI:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-static {v0, v1, p1, p3, v2}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$600(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$1400(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object p1

    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4

    const-string v0, "onReliableWriteCompleted status=%d"

    const/4 v1, 0x1

    .line 177
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->notifyNativeReliableWriteCallback(Landroid/bluetooth/BluetoothGatt;I)V

    .line 179
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4

    const-string v0, "onServicesDiscovered status=%d"

    const/4 v1, 0x1

    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->notifyNativeServicesDiscoveredCallback(Landroid/bluetooth/BluetoothGatt;I)V

    .line 95
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 97
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$500(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 98
    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$500(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object v1

    sget-object v2, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->SERVICE_DISCOVERY:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$600(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 99
    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-static {p2}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->access$500(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;

    move-result-object p2

    iget-object p2, p2, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    new-instance v0, Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
