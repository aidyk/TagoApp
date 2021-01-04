.class Lcom/polidea/rxandroidble2/internal/serialization/QueueSemaphore;
.super Ljava/lang/Object;
.source "QueueSemaphore.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;
.implements Lcom/polidea/rxandroidble2/internal/serialization/QueueAwaitReleaseInterface;


# instance fields
.field private final isReleased:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/QueueSemaphore;->isReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public declared-synchronized awaitRelease()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 13
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/QueueSemaphore;->isReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 15
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    :try_start_2
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/serialization/QueueSemaphore;->isReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Queue\'s awaitRelease() has been interrupted abruptly while it wasn\'t released by the release() method."

    const/4 v2, 0x0

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 23
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/QueueSemaphore;->isReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    throw v0
.end method
