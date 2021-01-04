.class public abstract Lcom/polidea/rxandroidble2/internal/QueueOperation;
.super Ljava/lang/Object;
.source "QueueOperation.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/operations/Operation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/polidea/rxandroidble2/internal/operations/Operation<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/polidea/rxandroidble2/internal/operations/Operation;)I
    .locals 1
    .param p1    # Lcom/polidea/rxandroidble2/internal/operations/Operation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 95
    invoke-interface {p1}, Lcom/polidea/rxandroidble2/internal/operations/Operation;->definedPriority()Lcom/polidea/rxandroidble2/internal/Priority;

    move-result-object p1

    iget p1, p1, Lcom/polidea/rxandroidble2/internal/Priority;->priority:I

    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/QueueOperation;->definedPriority()Lcom/polidea/rxandroidble2/internal/Priority;

    move-result-object v0

    iget v0, v0, Lcom/polidea/rxandroidble2/internal/Priority;->priority:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    check-cast p1, Lcom/polidea/rxandroidble2/internal/operations/Operation;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/QueueOperation;->compareTo(Lcom/polidea/rxandroidble2/internal/operations/Operation;)I

    move-result p1

    return p1
.end method

.method public definedPriority()Lcom/polidea/rxandroidble2/internal/Priority;
    .locals 1

    .line 83
    sget-object v0, Lcom/polidea/rxandroidble2/internal/Priority;->NORMAL:Lcom/polidea/rxandroidble2/internal/Priority;

    return-object v0
.end method

.method protected abstract protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
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
.end method

.method protected abstract provideException(Landroid/os/DeadObjectException;)Lcom/polidea/rxandroidble2/exceptions/BleException;
.end method

.method public final run(Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/polidea/rxandroidble2/internal/QueueOperation$1;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/QueueOperation$1;-><init>(Lcom/polidea/rxandroidble2/internal/QueueOperation;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
