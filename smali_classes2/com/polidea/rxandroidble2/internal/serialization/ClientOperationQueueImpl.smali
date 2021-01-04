.class public Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;
.super Ljava/lang/Object;
.source "ClientOperationQueueImpl.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;


# instance fields
.field private queue:Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;


# direct methods
.method public constructor <init>(Lio/reactivex/Scheduler;)V
    .locals 2
    .param p1    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "bluetooth_interaction"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;->queue:Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;

    .line 29
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$1;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;Lio/reactivex/Scheduler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;)Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;->queue:Lcom/polidea/rxandroidble2/internal/serialization/OperationPriorityFifoBlockingQueue;

    return-object p0
.end method

.method private log(Ljava/lang/String;Lcom/polidea/rxandroidble2/internal/operations/Operation;)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x3

    .line 83
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->isAtLeast(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "%8s %s(%d)"

    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v1, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/polidea/rxandroidble2/internal/operations/Operation<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl$2;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;Lcom/polidea/rxandroidble2/internal/operations/Operation;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
