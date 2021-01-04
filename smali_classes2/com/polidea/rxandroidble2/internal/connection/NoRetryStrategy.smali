.class public Lcom/polidea/rxandroidble2/internal/connection/NoRetryStrategy;
.super Ljava/lang/Object;
.source "NoRetryStrategy.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/NoRetryStrategy$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/NoRetryStrategy$1;-><init>(Lcom/polidea/rxandroidble2/internal/connection/NoRetryStrategy;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/NoRetryStrategy;->apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
