.class final Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3;
.super Ljava/lang/Object;
.source "ClientStateObservable.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->checkAdapterAndServicesState(Ljava/lang/Boolean;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;Lio/reactivex/Observable;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
        "Lio/reactivex/Observable<",
        "Lcom/polidea/rxandroidble2/RxBleClient$State;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$locationServicesOkObservable:Lio/reactivex/Observable;


# direct methods
.method constructor <init>(Lio/reactivex/Observable;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3;->val$locationServicesOkObservable:Lio/reactivex/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleClient$State;",
            ">;"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    if-eq p1, v0, :cond_0

    .line 100
    sget-object p1, Lcom/polidea/rxandroidble2/RxBleClient$State;->BLUETOOTH_NOT_ENABLED:Lcom/polidea/rxandroidble2/RxBleClient$State;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3;->val$locationServicesOkObservable:Lio/reactivex/Observable;

    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3$1;-><init>(Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3;->apply(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
