.class Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;
.super Ljava/lang/Object;
.source "DisconnectOperation.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "Landroid/bluetooth/BluetoothGatt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;

.field final synthetic val$queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;->val$queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "Disconnect operation has been executed but finished with an error - considering disconnected."

    const/4 v1, 0x0

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;->val$queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;

    invoke-virtual {p1, v0, v1}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->considerGattDisconnected(Lio/reactivex/Emitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    .line 81
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 82
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;->val$queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;

    invoke-virtual {p1, v0, v1}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;->considerGattDisconnected(Lio/reactivex/Emitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$1;->onSuccess(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
