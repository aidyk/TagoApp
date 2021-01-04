.class public Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;
.super Ljava/lang/Object;
.source "RxBleConnectionImpl.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/RxBleConnection;


# annotations
.annotation runtime Lcom/polidea/rxandroidble2/internal/connection/ConnectionScope;
.end annotation


# instance fields
.field private final bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final callbackScheduler:Lio/reactivex/Scheduler;

.field private final descriptorWriter:Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

.field private final gattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

.field private final illegalOperationChecker:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

.field private final longWriteOperationBuilderProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mtuProvider:Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;

.field private final notificationIndicationManager:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

.field private final operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

.field private final operationsProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

.field private final serviceDiscoveryManager:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;Lbleshadow/javax/inject/Provider;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;)V
    .locals 0
    .param p10    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "bluetooth_interaction"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            "Landroid/bluetooth/BluetoothGatt;",
            "Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;",
            "Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;",
            "Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;",
            "Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;",
            ">;",
            "Lio/reactivex/Scheduler;",
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    .line 80
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->gattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    .line 81
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 82
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->serviceDiscoveryManager:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    .line 83
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->notificationIndicationManager:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    .line 84
    iput-object p6, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->mtuProvider:Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;

    .line 85
    iput-object p7, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->descriptorWriter:Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    .line 86
    iput-object p8, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationsProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    .line 87
    iput-object p9, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->longWriteOperationBuilderProvider:Lbleshadow/javax/inject/Provider;

    .line 88
    iput-object p10, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->callbackScheduler:Lio/reactivex/Scheduler;

    .line 89
    iput-object p11, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->illegalOperationChecker:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->gattCallback:Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;)Lio/reactivex/Scheduler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->callbackScheduler:Lio/reactivex/Scheduler;

    return-object p0
.end method


# virtual methods
.method public createNewLongWriteBuilder()Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->longWriteOperationBuilderProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;

    return-object v0
.end method

.method public discoverServices()Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->serviceDiscoveryManager:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3, v1}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->getDiscoverServicesSingle(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public discoverServices(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->serviceDiscoveryManager:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->getDiscoverServicesSingle(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
    .locals 2
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->discoverServices()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$1;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;Ljava/util/UUID;)V

    .line 145
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getMtu()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->mtuProvider:Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;->getMtu()I

    move-result v0

    return v0
.end method

.method public queue(Lcom/polidea/rxandroidble2/RxBleCustomOperation;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Lcom/polidea/rxandroidble2/RxBleCustomOperation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/polidea/rxandroidble2/RxBleCustomOperation<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/polidea/rxandroidble2/internal/Priority;->NORMAL:Lcom/polidea/rxandroidble2/internal/Priority;

    invoke-virtual {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->queue(Lcom/polidea/rxandroidble2/RxBleCustomOperation;Lcom/polidea/rxandroidble2/internal/Priority;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public queue(Lcom/polidea/rxandroidble2/RxBleCustomOperation;Lcom/polidea/rxandroidble2/internal/Priority;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Lcom/polidea/rxandroidble2/RxBleCustomOperation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/polidea/rxandroidble2/internal/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/polidea/rxandroidble2/RxBleCustomOperation<",
            "TT;>;",
            "Lcom/polidea/rxandroidble2/internal/Priority;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    new-instance v1, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;Lcom/polidea/rxandroidble2/RxBleCustomOperation;Lcom/polidea/rxandroidble2/internal/Priority;)V

    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/Single;
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->illegalOperationChecker:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;->checkAnyPropertyMatches(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationsProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    .line 225
    invoke-interface {v2, p1}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;->provideReadCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/polidea/rxandroidble2/internal/operations/CharacteristicReadOperation;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public readCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$4;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$4;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;)V

    .line 214
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Lio/reactivex/Single;
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationsProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    .line 270
    invoke-interface {v1, p1}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;->provideReadDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$8;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$8;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;)V

    .line 272
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Lio/reactivex/Single;
    .locals 2
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->discoverServices()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$7;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    .line 253
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$6;

    invoke-direct {p2, p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$6;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;)V

    .line 259
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public readRssi()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationsProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    invoke-interface {v1}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;->provideRssiReadOperation()Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public requestConnectionPriority(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;
    .locals 3
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 103
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Connection priority must have valid value from BluetoothGatt (received "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    .line 112
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Delay must be bigger than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationsProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    .line 116
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;->provideConnectionPriorityChangeOperation(IJLjava/util/concurrent/TimeUnit;)Lcom/polidea/rxandroidble2/internal/operations/ConnectionPriorityChangeOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lio/reactivex/Observable;->ignoreElements()Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public requestMtu(I)Lio/reactivex/Single;
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationsProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    invoke-interface {v1, p1}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;->provideMtuChangeOperation(I)Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public setupIndication(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/polidea/rxandroidble2/NotificationSetupMode;->DEFAULT:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    invoke-virtual {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->setupIndication(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setupIndication(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/polidea/rxandroidble2/NotificationSetupMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Lcom/polidea/rxandroidble2/NotificationSetupMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->illegalOperationChecker:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;->checkAnyPropertyMatches(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->notificationIndicationManager:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    const/4 v2, 0x1

    .line 208
    invoke-virtual {v1, p1, p2, v2}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->setupServerInitiatedCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;Z)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setupIndication(Ljava/util/UUID;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/polidea/rxandroidble2/NotificationSetupMode;->DEFAULT:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    invoke-virtual {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->setupIndication(Ljava/util/UUID;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setupIndication(Ljava/util/UUID;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/polidea/rxandroidble2/NotificationSetupMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/polidea/rxandroidble2/NotificationSetupMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 195
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$3;

    invoke-direct {v0, p0, p2}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$3;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;Lcom/polidea/rxandroidble2/NotificationSetupMode;)V

    .line 196
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMapObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setupNotification(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/polidea/rxandroidble2/NotificationSetupMode;->DEFAULT:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    invoke-virtual {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->setupNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setupNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/polidea/rxandroidble2/NotificationSetupMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Lcom/polidea/rxandroidble2/NotificationSetupMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->illegalOperationChecker:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;->checkAnyPropertyMatches(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->notificationIndicationManager:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    const/4 v2, 0x0

    .line 179
    invoke-virtual {v1, p1, p2, v2}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->setupServerInitiatedCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;Z)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setupNotification(Ljava/util/UUID;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/polidea/rxandroidble2/NotificationSetupMode;->DEFAULT:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    invoke-virtual {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->setupNotification(Ljava/util/UUID;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setupNotification(Ljava/util/UUID;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/polidea/rxandroidble2/NotificationSetupMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/polidea/rxandroidble2/NotificationSetupMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$2;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;Lcom/polidea/rxandroidble2/NotificationSetupMode;)V

    .line 167
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMapObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lio/reactivex/Single;
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "[B)",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->illegalOperationChecker:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

    const/16 v1, 0x4c

    invoke-virtual {v0, p1, v1}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;->checkAnyPropertyMatches(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->operationsProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    .line 245
    invoke-interface {v2, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;->provideWriteCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lcom/polidea/rxandroidble2/internal/operations/CharacteristicWriteOperation;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public writeCharacteristic(Ljava/util/UUID;[B)Lio/reactivex/Single;
    .locals 1
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "[B)",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$5;

    invoke-direct {v0, p0, p2}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$5;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;[B)V

    .line 232
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lio/reactivex/Completable;
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 302
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->descriptorWriter:Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    invoke-virtual {v0, p1, p2}, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Lio/reactivex/Completable;
    .locals 2
    .param p1    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 285
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->discoverServices()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$10;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    .line 286
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$9;

    invoke-direct {p2, p0, p4}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$9;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;[B)V

    .line 292
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
