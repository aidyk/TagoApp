.class Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$1;
.super Ljava/lang/Object;
.source "DisconnectionRouter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;-><init>(Ljava/lang/String;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/polidea/rxandroidble2/exceptions/BleException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/polidea/rxandroidble2/exceptions/BleException;)V
    .locals 4

    const-string v0, "DisconnectionRouter"

    const/4 v1, 0x1

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "An exception received, indicating that the adapter has became unusable."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->access$002(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;Lcom/polidea/rxandroidble2/exceptions/BleException;)Lcom/polidea/rxandroidble2/exceptions/BleException;

    .line 66
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->access$100(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    check-cast p1, Lcom/polidea/rxandroidble2/exceptions/BleException;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$1;->accept(Lcom/polidea/rxandroidble2/exceptions/BleException;)V

    return-void
.end method
