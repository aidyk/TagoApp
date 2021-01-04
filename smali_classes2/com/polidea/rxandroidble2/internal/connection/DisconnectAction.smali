.class Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;
.super Ljava/lang/Object;
.source "DisconnectAction.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;


# annotations
.annotation runtime Lcom/polidea/rxandroidble2/internal/connection/ConnectionScope;
.end annotation


# instance fields
.field private final clientOperationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

.field private final operationDisconnect:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;->clientOperationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    .line 19
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;->operationDisconnect:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;

    return-void
.end method


# virtual methods
.method public onConnectionSubscribed()V
    .locals 0

    return-void
.end method

.method public onConnectionUnsubscribed()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;->clientOperationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;->operationDisconnect:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;

    .line 30
    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object v0

    .line 32
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v1

    .line 33
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
