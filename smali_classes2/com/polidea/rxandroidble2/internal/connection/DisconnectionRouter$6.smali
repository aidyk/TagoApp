.class Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$6;
.super Ljava/lang/Object;
.source "DisconnectionRouter.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->asValueOnlyObservable()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/polidea/rxandroidble2/exceptions/BleException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$6;->this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/polidea/rxandroidble2/exceptions/BleException;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$6;->this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$6;->this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->access$000(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)Lcom/polidea/rxandroidble2/exceptions/BleException;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$6;->this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->access$000(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;)Lcom/polidea/rxandroidble2/exceptions/BleException;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 140
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter$6;->this$0:Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;

    invoke-static {v1, p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;->access$200(Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter;Lio/reactivex/ObservableEmitter;)V

    .line 144
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
