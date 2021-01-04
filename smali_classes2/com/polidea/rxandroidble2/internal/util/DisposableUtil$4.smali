.class final Lcom/polidea/rxandroidble2/internal/util/DisposableUtil$4;
.super Lio/reactivex/observers/DisposableObserver;
.source "DisposableUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/util/DisposableUtil;->disposableObserver(Lio/reactivex/Observer;)Lio/reactivex/observers/DisposableObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$emitter:Lio/reactivex/Observer;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/DisposableUtil$4;->val$emitter:Lio/reactivex/Observer;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/DisposableUtil$4;->val$emitter:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/DisposableUtil$4;->val$emitter:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/DisposableUtil$4;->val$emitter:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method
