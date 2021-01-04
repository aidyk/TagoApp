.class Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$1;
.super Ljava/lang/Object;
.source "ConnectOperation.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

.field final synthetic val$queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$1;->val$queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$1;->val$queueReleaseInterface:Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;->release()V

    return-void
.end method
