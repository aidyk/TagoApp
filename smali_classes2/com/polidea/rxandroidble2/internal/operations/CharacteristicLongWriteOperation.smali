.class public Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;
.super Lcom/polidea/rxandroidble2/internal/QueueOperation;
.source "CharacteristicLongWriteOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2/internal/QueueOperation<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final batchSizeProvider:Lcom/polidea/rxandroidble2/internal/connection/PayloadSizeLimitProvider;

.field private final bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

.field private final bytesToWrite:[B

.field private final rxBleGattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

.field private tempBatchArray:[B

.field private final timeoutConfiguration:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

.field private final writeOperationAckStrategy:Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;

.field private final writeOperationRetryStrategy:Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/internal/connection/PayloadSizeLimitProvider;Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;[B)V
    .locals 0
    .param p3    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "bluetooth_interaction"
        .end annotation
    .end param
    .param p4    # Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "operation-timeout"
        .end annotation
    .end param

    .line 67
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/QueueOperation;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 69
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->rxBleGattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 70
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

    .line 71
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->timeoutConfiguration:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    .line 72
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 73
    iput-object p6, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->batchSizeProvider:Lcom/polidea/rxandroidble2/internal/connection/PayloadSizeLimitProvider;

    .line 74
    iput-object p7, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->writeOperationAckStrategy:Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;

    .line 75
    iput-object p8, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->writeOperationRetryStrategy:Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;

    .line 76
    iput-object p9, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bytesToWrite:[B

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;)[B
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bytesToWrite:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;Ljava/nio/ByteBuffer;I)[B
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->getNextBatch(Ljava/nio/ByteBuffer;I)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;[B)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->writeData([B)V

    return-void
.end method

.method static bufferIsNotEmptyAndOperationHasBeenAcknowledgedAndNotUnsubscribed(Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;Ljava/nio/ByteBuffer;Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper<",
            "[B>;)",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Observable<",
            "*>;",
            "Lio/reactivex/ObservableSource<",
            "*>;>;"
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;

    invoke-direct {v0, p2, p1, p0}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$4;-><init>(Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;Ljava/nio/ByteBuffer;Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;)V

    return-object v0
.end method

.method private static errorIsRetryableAndAccordingTo(Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;Ljava/nio/ByteBuffer;I)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;",
            "Ljava/nio/ByteBuffer;",
            "I)",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/ObservableSource<",
            "*>;>;"
        }
    .end annotation

    .line 240
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$5;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method private getNextBatch(Ljava/nio/ByteBuffer;I)[B
    .locals 1

    .line 165
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 166
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 167
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->tempBatchArray:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->tempBatchArray:[B

    array-length v0, v0

    if-eq v0, p2, :cond_1

    .line 168
    :cond_0
    new-array p2, p2, [B

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->tempBatchArray:[B

    .line 170
    :cond_1
    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->tempBatchArray:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 171
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->tempBatchArray:[B

    return-object p1
.end method

.method private writeBatchAndObserve(ILjava/nio/ByteBuffer;)Lio/reactivex/Observable;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->rxBleGattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->getOnCharacteristicWrite()Lio/reactivex/Observable;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$2;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$2;-><init>(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;Lio/reactivex/Observable;Ljava/nio/ByteBuffer;I)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private writeData([B)V
    .locals 2

    const-string v0, "Writing next batch"

    const/4 v1, 0x0

    .line 175
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 177
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 179
    :cond_0
    new-instance p1, Lcom/polidea/rxandroidble2/exceptions/BleGattCannotStartException;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v1, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_LONG_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-direct {p1, v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleGattCannotStartException;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V

    throw p1
.end method

.method private static writeResponseForMatchingCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/functions/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Lio/reactivex/functions/Predicate<",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$3;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$3;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-object v0
.end method


# virtual methods
.method protected protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "[B>;",
            "Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;",
            ")V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->batchSizeProvider:Lcom/polidea/rxandroidble2/internal/connection/PayloadSizeLimitProvider;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/connection/PayloadSizeLimitProvider;->getPayloadSizeLimit()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    new-instance v1, Lcom/polidea/rxandroidble2/exceptions/BleGattCallbackTimeoutException;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v3, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_LONG_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-direct {v1, v2, v3}, Lcom/polidea/rxandroidble2/exceptions/BleGattCallbackTimeoutException;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V

    invoke-static {v1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v9

    .line 88
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bytesToWrite:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;

    invoke-direct {v2, p1, p2}, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;-><init>(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V

    .line 90
    invoke-direct {p0, v0, v1}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->writeBatchAndObserve(ILjava/nio/ByteBuffer;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

    .line 91
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 92
    invoke-static {p2}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->writeResponseForMatchingCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/functions/Predicate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v3, 0x1

    .line 93
    invoke-virtual {p1, v3, v4}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v4

    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->timeoutConfiguration:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-wide v5, p1, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeout:J

    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->timeoutConfiguration:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-object v7, p1, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeoutTimeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->timeoutConfiguration:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-object v8, p1, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeoutScheduler:Lio/reactivex/Scheduler;

    .line 94
    invoke-virtual/range {v4 .. v9}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->writeOperationAckStrategy:Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;

    .line 100
    invoke-static {p2, v1, v2}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bufferIsNotEmptyAndOperationHasBeenAcknowledgedAndNotUnsubscribed(Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;Ljava/nio/ByteBuffer;Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;)Lio/reactivex/functions/Function;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->repeatWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->writeOperationRetryStrategy:Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;

    .line 103
    invoke-static {p2, v1, v0}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->errorIsRetryableAndAccordingTo(Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;Ljava/nio/ByteBuffer;I)Lio/reactivex/functions/Function;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->retryWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$1;

    invoke-direct {p2, p0, v2}, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation$1;-><init>(Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;)V

    .line 104
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "batchSizeProvider value must be greater than zero (now: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected provideException(Landroid/os/DeadObjectException;)Lcom/polidea/rxandroidble2/exceptions/BleException;
    .locals 3

    .line 130
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/CharacteristicLongWriteOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-object v0
.end method
