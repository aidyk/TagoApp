.class Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$1;
.super Ljava/lang/Object;
.source "ConnectorImpl.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;->call()Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;

.field final synthetic val$connSubWatchers:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;Ljava/util/Set;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$1;->val$connSubWatchers:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$1;->val$connSubWatchers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;

    .line 63
    invoke-interface {v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;->onConnectionUnsubscribed()V

    goto :goto_0

    :cond_0
    return-void
.end method
