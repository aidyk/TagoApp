.class public interface abstract Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;
.super Ljava/lang/Object;
.source "DisconnectionRouterOutput.java"


# virtual methods
.method public abstract asErrorOnlyObservable()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract asValueOnlyObservable()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/exceptions/BleException;",
            ">;"
        }
    .end annotation
.end method
