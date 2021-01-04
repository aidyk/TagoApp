.class Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;
.super Ljava/lang/Object;
.source "NotificationAndIndicationManager.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->call()Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;

.field final synthetic val$id:Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;

.field final synthetic val$notificationCompletedSubject:Lio/reactivex/subjects/PublishSubject;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;Lio/reactivex/subjects/PublishSubject;Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->val$notificationCompletedSubject:Lio/reactivex/subjects/PublishSubject;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->val$id:Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->val$notificationCompletedSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 102
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$000(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;

    iget-object v1, v1, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$000(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->val$id:Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$700(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;

    iget-object v1, v1, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$800(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;

    iget-object v1, v1, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    .line 107
    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$400(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;

    iget-object v2, v2, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;

    iget-object v3, v3, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    invoke-static {v3}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$500(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;

    iget-object v4, v4, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$1;->val$setupMode:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    invoke-static {v1, v2, v3, v4}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$600(Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/CompletableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->compose(Lio/reactivex/CompletableTransformer;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    .line 110
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void

    :catchall_0
    move-exception v1

    .line 104
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
