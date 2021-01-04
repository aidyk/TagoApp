.class Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$3;
.super Ljava/lang/Object;
.source "DisconnectionRouter.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Boolean;",
        "Lcom/polidea/rxandroidble2/exceptions/BleException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

.field final synthetic val$macAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$3;->this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$3;->val$macAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Boolean;)Lcom/polidea/rxandroidble2/exceptions/BleException;
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$3;->val$macAddress:Ljava/lang/String;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;->adapterDisabled(Ljava/lang/String;)Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;

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

    .line 54
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$3;->apply(Ljava/lang/Boolean;)Lcom/polidea/rxandroidble2/exceptions/BleException;

    move-result-object p1

    return-object p1
.end method
