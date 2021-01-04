.class Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;
.super Lcom/polidea/rxandroidble2/internal/QueueOperation;
.source "RxBleConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->queue(Lcom/polidea/rxandroidble2/RxBleCustomOperation;Lcom/polidea/rxandroidble2/internal/Priority;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2/internal/QueueOperation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

.field final synthetic val$operation:Lcom/polidea/rxandroidble2/RxBleCustomOperation;

.field final synthetic val$priority:Lcom/polidea/rxandroidble2/internal/Priority;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;Lcom/polidea/rxandroidble2/RxBleCustomOperation;Lcom/polidea/rxandroidble2/internal/Priority;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;->val$operation:Lcom/polidea/rxandroidble2/RxBleCustomOperation;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;->val$priority:Lcom/polidea/rxandroidble2/internal/Priority;

    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/QueueOperation;-><init>()V

    return-void
.end method

.method private clearNativeCallbackReferenceAction()Lio/reactivex/functions/Action;
    .locals 1

    .line 347
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11$1;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;)V

    return-object v0
.end method


# virtual methods
.method public definedPriority()Lcom/polidea/rxandroidble2/internal/Priority;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;->val$priority:Lcom/polidea/rxandroidble2/internal/Priority;

    return-object v0
.end method

.method protected protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;",
            "Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;->val$operation:Lcom/polidea/rxandroidble2/RxBleCustomOperation;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    invoke-static {v2}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->access$100(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    invoke-static {v3}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->access$200(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;)Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/RxBleCustomOperation;->asObservable(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 336
    new-instance v1, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;

    invoke-direct {v1, p1, p2}, Lcom/polidea/rxandroidble2/internal/util/QueueReleasingEmitterWrapper;-><init>(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V

    .line 338
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;->clearNativeCallbackReferenceAction()Lio/reactivex/functions/Action;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->doOnTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    .line 339
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 332
    :cond_0
    invoke-interface {p2}, Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;->release()V

    .line 333
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The custom operation asObservable method must return a non-null observable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 327
    invoke-interface {p2}, Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;->release()V

    .line 328
    throw p1
.end method

.method protected provideException(Landroid/os/DeadObjectException;)Lcom/polidea/rxandroidble2/exceptions/BleException;
    .locals 3

    .line 357
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->access$000(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-object v0
.end method
