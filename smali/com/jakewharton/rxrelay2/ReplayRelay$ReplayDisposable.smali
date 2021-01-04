.class final Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ReplayRelay.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxrelay2/ReplayRelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x679849349531b12L


# instance fields
.field volatile cancelled:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field index:Ljava/lang/Object;

.field final state:Lcom/jakewharton/rxrelay2/ReplayRelay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/ReplayRelay<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lcom/jakewharton/rxrelay2/ReplayRelay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lcom/jakewharton/rxrelay2/ReplayRelay<",
            "TT;>;)V"
        }
    .end annotation

    .line 390
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->downstream:Lio/reactivex/Observer;

    .line 392
    iput-object p2, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->state:Lcom/jakewharton/rxrelay2/ReplayRelay;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 397
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->cancelled:Z

    .line 399
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->state:Lcom/jakewharton/rxrelay2/ReplayRelay;

    invoke-virtual {v0, p0}, Lcom/jakewharton/rxrelay2/ReplayRelay;->remove(Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/ReplayRelay$ReplayDisposable;->cancelled:Z

    return v0
.end method
