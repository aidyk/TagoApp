.class Lcom/polidea/rxandroidble2/internal/QueueOperation$1;
.super Ljava/lang/Object;
.source "QueueOperation.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/QueueOperation;->run(Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/QueueOperation;

.field final synthetic val$queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/QueueOperation;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/QueueOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/QueueOperation;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/QueueOperation$1;->val$queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/QueueOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/QueueOperation;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/QueueOperation$1;->val$queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;

    invoke-virtual {v1, p1, v2}, Lcom/polidea/rxandroidble2/internal/QueueOperation;->protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 46
    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    const-string p1, "QueueOperation terminated with an unexpected exception"

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 43
    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/QueueOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/QueueOperation;

    invoke-virtual {v2, v1}, Lcom/polidea/rxandroidble2/internal/QueueOperation;->provideException(Landroid/os/DeadObjectException;)Lcom/polidea/rxandroidble2/exceptions/BleException;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    const-string p1, "QueueOperation terminated with a DeadObjectException"

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
