.class public final Lcom/jakewharton/rxrelay2/ReplayRelay;
.super Lcom/jakewharton/rxrelay2/Relay;
.source "ReplayRelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;,
        Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;,
        Lcom/jakewharton/rxrelay2/ReplayRelay$TimedNode;,
        Lcom/jakewharton/rxrelay2/ReplayRelay$Node;,
        Lcom/jakewharton/rxrelay2/ReplayRelay$UnboundedReplayBuffer;,
        Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;,
        Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/jakewharton/rxrelay2/Relay<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# instance fields
.field final buffer:Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 57
    new-array v1, v0, [Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    sput-object v1, Lcom/jakewharton/rxrelay2/ReplayRelay;->EMPTY:[Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    .line 273
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/jakewharton/rxrelay2/ReplayRelay;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer<",
            "TT;>;)V"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Lcom/jakewharton/rxrelay2/Relay;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->buffer:Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;

    .line 206
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/jakewharton/rxrelay2/ReplayRelay;->EMPTY:[Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create()Lcom/jakewharton/rxrelay2/ReplayRelay;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/jakewharton/rxrelay2/ReplayRelay<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 71
    new-instance v0, Lcom/jakewharton/rxrelay2/ReplayRelay;

    new-instance v1, Lcom/jakewharton/rxrelay2/ReplayRelay$UnboundedReplayBuffer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/jakewharton/rxrelay2/ReplayRelay$UnboundedReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/jakewharton/rxrelay2/ReplayRelay;-><init>(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;)V

    return-object v0
.end method

.method public static create(I)Lcom/jakewharton/rxrelay2/ReplayRelay;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/jakewharton/rxrelay2/ReplayRelay<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 89
    new-instance v0, Lcom/jakewharton/rxrelay2/ReplayRelay;

    new-instance v1, Lcom/jakewharton/rxrelay2/ReplayRelay$UnboundedReplayBuffer;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxrelay2/ReplayRelay$UnboundedReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/jakewharton/rxrelay2/ReplayRelay;-><init>(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;)V

    return-object v0
.end method

.method static createUnbounded()Lcom/jakewharton/rxrelay2/ReplayRelay;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/jakewharton/rxrelay2/ReplayRelay<",
            "TT;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/jakewharton/rxrelay2/ReplayRelay;

    new-instance v1, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/jakewharton/rxrelay2/ReplayRelay;-><init>(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithSize(I)Lcom/jakewharton/rxrelay2/ReplayRelay;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/jakewharton/rxrelay2/ReplayRelay<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 112
    new-instance v0, Lcom/jakewharton/rxrelay2/ReplayRelay;

    new-instance v1, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeBoundReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/jakewharton/rxrelay2/ReplayRelay;-><init>(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithTime(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lcom/jakewharton/rxrelay2/ReplayRelay;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lcom/jakewharton/rxrelay2/ReplayRelay<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 160
    new-instance v0, Lcom/jakewharton/rxrelay2/ReplayRelay;

    new-instance v7, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;

    const v2, 0x7fffffff

    move-object v1, v7

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-direct {v0, v7}, Lcom/jakewharton/rxrelay2/ReplayRelay;-><init>(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;I)Lcom/jakewharton/rxrelay2/ReplayRelay;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "I)",
            "Lcom/jakewharton/rxrelay2/ReplayRelay<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 197
    new-instance v0, Lcom/jakewharton/rxrelay2/ReplayRelay;

    new-instance v7, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;

    move-object v1, v7

    move v2, p4

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jakewharton/rxrelay2/ReplayRelay$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-direct {v0, v7}, Lcom/jakewharton/rxrelay2/ReplayRelay;-><init>(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->buffer:Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;

    .line 230
    invoke-interface {v0, p1}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;->add(Ljava/lang/Object;)V

    .line 232
    iget-object p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 233
    invoke-interface {v0, v3}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;->replay(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 227
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method add(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    .line 316
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 318
    new-array v2, v2, [Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    const/4 v3, 0x0

    .line 319
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    aput-object p1, v2, v1

    .line 321
    iget-object v1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public cleanupBuffer()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->buffer:Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;

    invoke-interface {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;->trimHead()V

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->buffer:Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;

    invoke-interface {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 2

    .line 281
    sget-object v0, Lcom/jakewharton/rxrelay2/ReplayRelay;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 282
    invoke-virtual {p0, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 283
    sget-object v1, Lcom/jakewharton/rxrelay2/ReplayRelay;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 284
    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->buffer:Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;

    invoke-interface {v0, p1}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasObservers()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValue()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->buffer:Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;

    invoke-interface {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method observerCount()I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    array-length v0, v0

    return v0
.end method

.method remove(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    .line 331
    sget-object v1, Lcom/jakewharton/rxrelay2/ReplayRelay;->EMPTY:[Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    if-ne v0, v1, :cond_1

    return-void

    .line 334
    :cond_1
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 337
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 348
    sget-object v1, Lcom/jakewharton/rxrelay2/ReplayRelay;->EMPTY:[Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 350
    new-array v5, v5, [Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    .line 351
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 352
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 354
    :goto_2
    iget-object v2, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method size()I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->buffer:Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;

    invoke-interface {v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;->size()I

    move-result v0

    return v0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 211
    new-instance v0, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;

    invoke-direct {v0, p1, p0}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;-><init>(Lio/reactivex/Observer;Lcom/jakewharton/rxrelay2/ReplayRelay;)V

    .line 212
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 214
    iget-boolean p1, v0, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->cancelled:Z

    if-nez p1, :cond_1

    .line 215
    invoke-virtual {p0, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay;->add(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    iget-boolean p1, v0, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->cancelled:Z

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay;->remove(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;)V

    return-void

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay;->buffer:Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;

    invoke-interface {p1, v0}, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayBuffer;->replay(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;)V

    :cond_1
    return-void
.end method
