.class final Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplayRelay.java"

# interfaces
.implements Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxrelay2/ReplayRelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6fcd9699e42b76b5L


# instance fields
.field volatile head:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field final maxAge:J

.field final maxSize:I

.field final scheduler:Lio/reactivex/Scheduler;

.field size:I

.field tail:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 3

    .line 740
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    if-lez p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 749
    iput p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->maxSize:I

    .line 750
    iput-wide p2, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    .line 751
    iput-object p4, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    .line 752
    iput-object p5, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    .line 753
    new-instance p1, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 754
    iput-object p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->tail:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    .line 755
    iput-object p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    return-void

    .line 748
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "scheduler == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 747
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 745
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "maxAge > 0 required but it was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 742
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "maxSize > 0 required but it was "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 787
    new-instance v0, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    iget-object v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 788
    iget-object p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->tail:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    .line 790
    iput-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->tail:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    .line 791
    iget v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 792
    invoke-virtual {p1, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->set(Ljava/lang/Object;)V

    .line 794
    invoke-virtual {p0}, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->trim()V

    return-void
.end method

.method getHead()Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode<",
            "TT;>;"
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    .line 836
    iget-object v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v1, v3

    .line 837
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    :goto_0
    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    if-eqz v0, :cond_1

    .line 839
    iget-wide v4, v0, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->time:J

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    goto :goto_1

    .line 844
    :cond_0
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method

.method public getValue()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 815
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    .line 818
    :goto_0
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    if-nez v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v1, v3

    .line 826
    iget-wide v3, v0, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->time:J

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 830
    :cond_0
    iget-object v0, v0, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->value:Ljava/lang/Object;

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 852
    invoke-virtual {p0}, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->getHead()Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    move-result-object v0

    .line 853
    invoke-virtual {p0, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->size(Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 856
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 857
    aput-object v2, p1, v3

    goto :goto_1

    .line 860
    :cond_0
    array-length v4, p1

    if-ge v4, v1, :cond_1

    .line 861
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eq v3, v1, :cond_2

    .line 866
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    .line 867
    iget-object v4, v0, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->value:Ljava/lang/Object;

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 871
    :cond_2
    array-length v0, p1

    if-le v0, v1, :cond_3

    .line 872
    aput-object v2, p1, v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public replay(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 882
    invoke-virtual {p1}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 887
    iget-object v1, p1, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->downstream:Lio/reactivex/Observer;

    .line 889
    iget-object v2, p1, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->index:Ljava/lang/Object;

    check-cast v2, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    if-nez v2, :cond_1

    .line 891
    invoke-virtual {p0}, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->getHead()Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    move-result-object v2

    .line 896
    :cond_1
    :goto_0
    iget-boolean v3, p1, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->cancelled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 897
    iput-object v4, p1, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->index:Ljava/lang/Object;

    return-void

    .line 902
    :cond_2
    :goto_1
    iget-boolean v3, p1, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->cancelled:Z

    if-eqz v3, :cond_3

    .line 903
    iput-object v4, p1, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->index:Ljava/lang/Object;

    return-void

    .line 907
    :cond_3
    invoke-virtual {v2}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    if-nez v3, :cond_5

    .line 920
    invoke-virtual {v2}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 924
    :cond_4
    iput-object v2, p1, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->index:Ljava/lang/Object;

    neg-int v0, v0

    .line 926
    invoke-virtual {p1, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 913
    :cond_5
    iget-object v2, v3, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->value:Ljava/lang/Object;

    .line 915
    invoke-interface {v1, v2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    move-object v2, v3

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .line 935
    invoke-virtual {p0}, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->getHead()Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->size(Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;)I

    move-result v0

    return v0
.end method

.method size(Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 941
    invoke-virtual {p1}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method trim()V
    .locals 7

    .line 759
    iget v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->size:I

    iget v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    .line 760
    iget v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 761
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    .line 762
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    iput-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 766
    iget-object v2, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    .line 769
    :goto_0
    invoke-virtual {v2}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    if-nez v3, :cond_1

    .line 771
    iput-object v2, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    goto :goto_1

    .line 775
    :cond_1
    iget-wide v4, v3, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->time:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 776
    iput-object v2, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    :goto_1
    return-void

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public trimHead()V
    .locals 5

    .line 803
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    .line 804
    iget-object v1, v0, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 805
    new-instance v1, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 806
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;->lazySet(Ljava/lang/Object;)V

    .line 807
    iput-object v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;

    :cond_0
    return-void
.end method
