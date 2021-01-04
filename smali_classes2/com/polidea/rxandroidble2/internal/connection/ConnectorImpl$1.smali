.class Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;
.super Ljava/lang/Object;
.source "ConnectorImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->prepareConnection(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/ObservableSource<",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;

.field final synthetic val$options:Lcom/polidea/rxandroidble2/ConnectionSetup;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;Lcom/polidea/rxandroidble2/ConnectionSetup;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;->val$options:Lcom/polidea/rxandroidble2/ConnectionSetup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->access$000(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;->val$options:Lcom/polidea/rxandroidble2/ConnectionSetup;

    invoke-direct {v1, v2}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;-><init>(Lcom/polidea/rxandroidble2/ConnectionSetup;)V

    .line 44
    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;->connectionModule(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;->build()Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;->connectionSubscriptionWatchers()Ljava/util/Set;

    move-result-object v1

    .line 48
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->access$400(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;

    .line 49
    invoke-static {v3, v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->access$300(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->delaySubscription(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    .line 50
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->access$200(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/reactivex/Observable;->mergeWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$2;

    invoke-direct {v2, p0, v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$2;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;Ljava/util/Set;)V

    .line 51
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$1;

    invoke-direct {v2, p0, v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$1;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;Ljava/util/Set;)V

    .line 59
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;

    .line 67
    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->access$100(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;)Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;

    .line 68
    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->access$100(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;)Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;->call()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
