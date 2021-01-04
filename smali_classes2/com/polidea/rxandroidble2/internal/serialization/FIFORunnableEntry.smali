.class Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;
.super Ljava/lang/Object;
.source "FIFORunnableEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final SEQUENCE:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field final operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2/internal/operations/Operation<",
            "TT;>;"
        }
    .end annotation
.end field

.field final operationResultObserver:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final seqNum:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->SEQUENCE:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/Operation;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/operations/Operation<",
            "TT;>;",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->SEQUENCE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->seqNum:J

    .line 25
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    .line 26
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operationResultObserver:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;)I
    .locals 4
    .param p1    # Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    iget-object v1, p1, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2/internal/operations/Operation;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 31
    iget-object v1, p1, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    if-eq v1, v2, :cond_1

    .line 32
    iget-wide v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->seqNum:J

    iget-wide v2, p1, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->seqNum:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    check-cast p1, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->compareTo(Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;)I

    move-result p1

    return p1
.end method

.method public run(Lcom/polidea/rxandroidble2/internal/serialization/QueueSemaphore;Lio/reactivex/Scheduler;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operationResultObserver:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The operation was about to be run but the observer had been already disposed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/serialization/QueueSemaphore;->release()V

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    invoke-interface {v0, p1}, Lcom/polidea/rxandroidble2/internal/operations/Operation;->run(Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)Lio/reactivex/Observable;

    move-result-object p1

    .line 52
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry$1;

    invoke-direct {p2, p0}, Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry$1;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/FIFORunnableEntry;)V

    .line 54
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
