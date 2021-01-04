.class public final Lcom/jakewharton/rxrelay2/PublishRelay;
.super Lcom/jakewharton/rxrelay2/Relay;
.source "PublishRelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;
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
.field static final EMPTY:[Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;


# instance fields
.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    new-array v0, v0, [Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;

    sput-object v0, Lcom/jakewharton/rxrelay2/PublishRelay;->EMPTY:[Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/jakewharton/rxrelay2/Relay;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/jakewharton/rxrelay2/PublishRelay;->EMPTY:[Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jakewharton/rxrelay2/PublishRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create()Lcom/jakewharton/rxrelay2/PublishRelay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/jakewharton/rxrelay2/PublishRelay<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 59
    new-instance v0, Lcom/jakewharton/rxrelay2/PublishRelay;

    invoke-direct {v0}, Lcom/jakewharton/rxrelay2/PublishRelay;-><init>()V

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

    .line 144
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/PublishRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 145
    invoke-virtual {v3, p1}, Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 143
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method add(Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/PublishRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;

    .line 89
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 91
    new-array v2, v2, [Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;

    const/4 v3, 0x0

    .line 92
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    aput-object p1, v2, v1

    .line 95
    iget-object v1, p0, Lcom/jakewharton/rxrelay2/PublishRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public hasObservers()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/PublishRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method remove(Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/PublishRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;

    .line 109
    sget-object v1, Lcom/jakewharton/rxrelay2/PublishRelay;->EMPTY:[Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;

    if-ne v0, v1, :cond_1

    return-void

    .line 113
    :cond_1
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 116
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

    .line 129
    sget-object v1, Lcom/jakewharton/rxrelay2/PublishRelay;->EMPTY:[Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 131
    new-array v5, v5, [Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;

    .line 132
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 133
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 135
    :goto_2
    iget-object v2, p0, Lcom/jakewharton/rxrelay2/PublishRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
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

    .line 72
    new-instance v0, Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;

    invoke-direct {v0, p1, p0}, Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;-><init>(Lio/reactivex/Observer;Lcom/jakewharton/rxrelay2/PublishRelay;)V

    .line 73
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/jakewharton/rxrelay2/PublishRelay;->add(Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;)V

    .line 77
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/jakewharton/rxrelay2/PublishRelay;->remove(Lcom/jakewharton/rxrelay2/PublishRelay$PublishDisposable;)V

    :cond_0
    return-void
.end method
