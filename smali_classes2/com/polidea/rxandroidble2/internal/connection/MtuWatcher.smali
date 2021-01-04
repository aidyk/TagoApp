.class Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;
.super Ljava/lang/Object;
.source "MtuWatcher.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;
.implements Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation runtime Lcom/polidea/rxandroidble2/internal/connection/ConnectionScope;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;",
        "Lcom/polidea/rxandroidble2/internal/connection/MtuProvider;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private currentMtu:Ljava/lang/Integer;

.field private final mtuObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final serialSubscription:Lio/reactivex/disposables/SerialDisposable;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;I)V
    .locals 1
    .param p2    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "GATT_MTU_MINIMUM"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lio/reactivex/disposables/SerialDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/SerialDisposable;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;->serialSubscription:Lio/reactivex/disposables/SerialDisposable;

    .line 26
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->getOnMtuChanged()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher$1;-><init>(Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;)V

    .line 27
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->retry(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;->mtuObservable:Lio/reactivex/Observable;

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;->currentMtu:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;->currentMtu:Ljava/lang/Integer;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public getMtu()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;->currentMtu:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onConnectionSubscribed()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;->serialSubscription:Lio/reactivex/disposables/SerialDisposable;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;->mtuObservable:Lio/reactivex/Observable;

    new-instance v2, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher$2;

    invoke-direct {v2, p0}, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher$2;-><init>(Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;)V

    invoke-virtual {v1, p0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/SerialDisposable;->set(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onConnectionUnsubscribed()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;->serialSubscription:Lio/reactivex/disposables/SerialDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/SerialDisposable;->dispose()V

    return-void
.end method
