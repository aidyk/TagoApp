.class Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;
.super Ljava/lang/Object;
.source "NotificationAndIndicationManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->setupServerInitiatedCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/ObservableSource<",
        "Lio/reactivex/Observable<",
        "[B>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$isIndication:Z

.field final synthetic val$setupMode:Lcom/polidea/rxandroidble2/NotificationSetupMode;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;Landroid/bluetooth/BluetoothGattCharacteristic;ZLcom/polidea/rxandroidble2/NotificationSetupMode;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-boolean p3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$isIndication:Z

    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$setupMode:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/ObservableSource;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$000(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 75
    :try_start_0
    new-instance v1, Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 76
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;-><init>(Ljava/util/UUID;Ljava/lang/Integer;)V

    .line 78
    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    invoke-static {v2}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$000(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/util/ActiveCharacteristicNotification;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 81
    iget-boolean v1, v2, Lcom/polidea/rxandroidble2/internal/util/ActiveCharacteristicNotification;->isIndication:Z

    iget-boolean v4, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$isIndication:Z

    if-ne v1, v4, :cond_0

    .line 82
    iget-object v1, v2, Lcom/polidea/rxandroidble2/internal/util/ActiveCharacteristicNotification;->notificationObservable:Lio/reactivex/Observable;

    monitor-exit v0

    return-object v1

    .line 84
    :cond_0
    new-instance v1, Lcom/polidea/rxandroidble2/exceptions/BleConflictingNotificationAlreadySetException;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 85
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-boolean v4, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$isIndication:Z

    xor-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/polidea/rxandroidble2/exceptions/BleConflictingNotificationAlreadySetException;-><init>(Ljava/util/UUID;Z)V

    .line 84
    invoke-static {v1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 90
    :cond_1
    iget-boolean v2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$isIndication:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    invoke-static {v2}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$100(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)[B

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    invoke-static {v2}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$200(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)[B

    move-result-object v2

    .line 91
    :goto_0
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v4

    .line 93
    iget-object v5, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    invoke-static {v5}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$700(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    iget-object v6, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {v5, v6, v3}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$800(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Lio/reactivex/Completable;

    move-result-object v5

    iget-object v6, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    .line 94
    invoke-static {v6}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$400(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    move-result-object v6

    iget-object v7, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v8, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$setupMode:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    invoke-static {v6, v7, v2, v8}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$600(Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/CompletableTransformer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lio/reactivex/Completable;->compose(Lio/reactivex/CompletableTransformer;)Lio/reactivex/Completable;

    move-result-object v2

    iget-object v5, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    .line 96
    invoke-static {v5}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$300(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$900(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;)Lio/reactivex/Observable;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v5

    .line 95
    invoke-static {v5}, Lcom/polidea/rxandroidble2/internal/util/ObservableUtil;->justOnNext(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v5, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;

    invoke-direct {v5, p0, v4, v1}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;-><init>(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;Lio/reactivex/subjects/PublishSubject;Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;)V

    .line 98
    invoke-virtual {v2, v5}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v2

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    .line 114
    invoke-static {v4}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$300(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->observeDisconnect()Lio/reactivex/Observable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/Observable;->mergeWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    .line 115
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->replay(I)Lio/reactivex/observables/ConnectableObservable;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lio/reactivex/observables/ConnectableObservable;->refCount()Lio/reactivex/Observable;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    invoke-static {v3}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$000(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/polidea/rxandroidble2/internal/util/ActiveCharacteristicNotification;

    iget-boolean v5, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$isIndication:Z

    invoke-direct {v4, v2, v5}, Lcom/polidea/rxandroidble2/internal/util/ActiveCharacteristicNotification;-><init>(Lio/reactivex/Observable;Z)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->call()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
