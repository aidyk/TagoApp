.class final Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;
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
    name = "SizeBoundReplayBuffer"
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
.field private static final serialVersionUID:J = 0xf5f291fe2c1030bL


# instance fields
.field volatile head:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/ReplayRelay$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field final maxSize:I

.field size:I

.field tail:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/ReplayRelay$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 3

    .line 569
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    if-lez p1, :cond_0

    .line 573
    iput p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->maxSize:I

    .line 574
    new-instance p1, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;-><init>(Ljava/lang/Object;)V

    .line 575
    iput-object p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->tail:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    .line 576
    iput-object p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    return-void

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxSize > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 589
    new-instance v0, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    invoke-direct {v0, p1}, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;-><init>(Ljava/lang/Object;)V

    .line 590
    iget-object p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->tail:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    .line 592
    iput-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->tail:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    .line 593
    iget v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->size:I

    .line 594
    invoke-virtual {p1, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->set(Ljava/lang/Object;)V

    .line 596
    invoke-virtual {p0}, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->trim()V

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    .line 620
    :goto_0
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    if-nez v1, :cond_0

    .line 627
    iget-object v0, v0, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->value:Ljava/lang/Object;

    return-object v0

    :cond_0
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

    .line 633
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    .line 634
    invoke-virtual {p0}, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 637
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 638
    aput-object v2, p1, v3

    goto :goto_1

    .line 641
    :cond_0
    array-length v4, p1

    if-ge v4, v1, :cond_1

    .line 642
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

    .line 647
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    .line 648
    iget-object v4, v0, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->value:Ljava/lang/Object;

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 652
    :cond_2
    array-length v0, p1

    if-le v0, v1, :cond_3

    .line 653
    aput-object v2, p1, v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public replay(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 663
    invoke-virtual {p1}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 668
    iget-object v1, p1, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->downstream:Lio/reactivex/Observer;

    .line 670
    iget-object v2, p1, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->index:Ljava/lang/Object;

    check-cast v2, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    if-nez v2, :cond_1

    .line 672
    iget-object v2, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    .line 678
    :cond_1
    :goto_0
    iget-boolean v3, p1, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->cancelled:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .line 679
    iput-object v0, p1, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->index:Ljava/lang/Object;

    return-void

    .line 683
    :cond_2
    invoke-virtual {v2}, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    if-nez v3, :cond_4

    .line 694
    invoke-virtual {v2}, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 698
    :cond_3
    iput-object v2, p1, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->index:Ljava/lang/Object;

    neg-int v0, v0

    .line 700
    invoke-virtual {p1, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 689
    :cond_4
    iget-object v2, v3, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->value:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    const/4 v1, 0x0

    :goto_0
    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 712
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method trim()V
    .locals 2

    .line 580
    iget v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->size:I

    iget v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    .line 581
    iget v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->size:I

    .line 582
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    .line 583
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    iput-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    :cond_0
    return-void
.end method

.method public trimHead()V
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    .line 606
    iget-object v1, v0, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 607
    new-instance v1, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;-><init>(Ljava/lang/Object;)V

    .line 608
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$Node;->lazySet(Ljava/lang/Object;)V

    .line 609
    iput-object v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;->head:Lcom/jakewharton/rxrelay2/ReplayRelay$Node;

    :cond_0
    return-void
.end method
