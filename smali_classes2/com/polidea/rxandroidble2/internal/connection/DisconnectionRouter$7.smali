.class Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$7;
.super Ljava/lang/Object;
.source "DisconnectionRouter.java"

# interfaces
.implements Lio/reactivex/functions/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->storeEmitterToBeNotifiedInTheFuture(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$7;->this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$7;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$7;->this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->access$300(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$7;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
