.class Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;
.super Ljava/lang/Object;
.source "NativeCallbackDispatcher.java"


# instance fields
.field private nativeCallback:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyNativeChangedCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    return-void
.end method

.method public notifyNativeConnectionStateCallback(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    :cond_0
    return-void
.end method

.method public notifyNativeDescriptorReadCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    :cond_0
    return-void
.end method

.method public notifyNativeDescriptorWriteCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    :cond_0
    return-void
.end method

.method public notifyNativeMtuChangedCallback(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    :cond_0
    return-void
.end method

.method notifyNativeReadCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    :cond_0
    return-void
.end method

.method public notifyNativeReadRssiCallback(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    :cond_0
    return-void
.end method

.method public notifyNativeReliableWriteCallback(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    :cond_0
    return-void
.end method

.method public notifyNativeServicesDiscoveredCallback(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    :cond_0
    return-void
.end method

.method public notifyNativeWriteCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    :cond_0
    return-void
.end method

.method setNativeCallback(Landroid/bluetooth/BluetoothGattCallback;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher;->nativeCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method
