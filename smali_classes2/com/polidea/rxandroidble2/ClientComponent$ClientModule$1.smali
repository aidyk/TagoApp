.class final Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;
.super Ljava/lang/Object;
.source "ClientComponent.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideFinalizationCloseable(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacksExecutorService:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$connectionQueueExecutorService:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$interactionExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;->val$interactionExecutorService:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;->val$callbacksExecutorService:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;->val$connectionQueueExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalize()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;->val$interactionExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 218
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;->val$callbacksExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 219
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;->val$connectionQueueExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
