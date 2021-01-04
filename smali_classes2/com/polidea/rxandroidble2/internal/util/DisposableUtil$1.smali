.class final Lcom/polidea/rxandroidble2/internal/util/DisposableUtil$1;
.super Lio/reactivex/observers/DisposableSingleObserver;
.source "DisposableUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/util/DisposableUtil;->disposableSingleObserverFromEmitter(Lio/reactivex/SingleEmitter;)Lio/reactivex/observers/DisposableSingleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableSingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$emitter:Lio/reactivex/SingleEmitter;


# direct methods
.method constructor <init>(Lio/reactivex/SingleEmitter;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/DisposableUtil$1;->val$emitter:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableSingleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/DisposableUtil$1;->val$emitter:Lio/reactivex/SingleEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/DisposableUtil$1;->val$emitter:Lio/reactivex/SingleEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
