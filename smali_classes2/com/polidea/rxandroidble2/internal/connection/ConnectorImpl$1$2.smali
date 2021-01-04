.class Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$2;
.super Ljava/lang/Object;
.source "ConnectorImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;->call()Lio/reactivex/ObservableSource;
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
.field final synthetic this$1:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;

.field final synthetic val$connSubWatchers:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;Ljava/util/Set;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$2;->this$1:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$2;->val$connSubWatchers:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$2;->val$connSubWatchers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;

    .line 55
    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;->onConnectionSubscribed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$1$2;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
