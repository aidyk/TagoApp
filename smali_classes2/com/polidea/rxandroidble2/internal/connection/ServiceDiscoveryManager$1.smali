.class Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$1;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->getDiscoverServicesSingle(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

.field final synthetic val$timeout:J

.field final synthetic val$timeoutTimeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    iput-wide p2, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$1;->val$timeout:J

    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$1;->val$timeoutTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->access$000(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-wide v1, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$1;->val$timeout:J

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$1;->val$timeoutTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$1;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
