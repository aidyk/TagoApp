.class Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$3;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$3;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

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

    .line 72
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager$3;->this$0:Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;->access$202(Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager;Z)Z

    return-void
.end method
