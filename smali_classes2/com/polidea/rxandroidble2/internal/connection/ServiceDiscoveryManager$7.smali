.class Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$7;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->scheduleActualDiscoveryWithTimeout()Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
        "Lio/reactivex/Single<",
        "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$7;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$7;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->access$400(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    move-result-object v0

    iget-wide v1, p1, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeout:J

    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeoutTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 120
    invoke-interface {v0, v1, v2, p1}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;->provideServiceDiscoveryOperation(JLjava/util/concurrent/TimeUnit;)Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$7;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->access$500(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

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

    .line 116
    check-cast p1, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$7;->apply(Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
