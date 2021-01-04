.class Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$1;
.super Ljava/lang/Object;
.source "ClientOperationQueueImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;-><init>(Lio/reactivex/Scheduler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;

.field final synthetic val$callbackScheduler:Lio/reactivex/Scheduler;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;Lio/reactivex/Scheduler;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$1;->this$0:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$1;->val$callbackScheduler:Lio/reactivex/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 35
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$1;->this$0:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;->access$000(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;)Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;->take()Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;

    move-result-object v0

    .line 36
    iget-object v1, v0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 38
    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/util/OperationLogger;->logOperationStarted(Lcom/polidea/rxandroidble2/internal/operations/Operation;)V

    .line 45
    new-instance v4, Lcom/polidea/rxandroidble2/internal/serialization/QueueSemaphore;

    invoke-direct {v4}, Lcom/polidea/rxandroidble2/internal/serialization/QueueSemaphore;-><init>()V

    .line 46
    iget-object v5, p0, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$1;->val$callbackScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v4, v5}, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->run(Lcom/polidea/rxandroidble2/internal/serialization/QueueSemaphore;Lio/reactivex/Scheduler;)V

    .line 47
    invoke-virtual {v4}, Lcom/polidea/rxandroidble2/internal/serialization/QueueSemaphore;->awaitRelease()V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/polidea/rxandroidble2/internal/util/OperationLogger;->logOperationFinished(Lcom/polidea/rxandroidble2/internal/operations/Operation;JJ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error while processing client operation queue"

    const/4 v2, 0x0

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
