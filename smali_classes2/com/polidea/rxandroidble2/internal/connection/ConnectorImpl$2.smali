.class final Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$2;
.super Ljava/lang/Object;
.source "ConnectorImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->obtainRxBleConnection(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$connectionComponent:Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$2;->val$connectionComponent:Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/polidea/rxandroidble2/RxBleConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$2;->val$connectionComponent:Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;->rxBleConnection()Lcom/polidea/rxandroidble2/RxBleConnection;

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

    .line 74
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$2;->call()Lcom/polidea/rxandroidble2/RxBleConnection;

    move-result-object v0

    return-object v0
.end method
