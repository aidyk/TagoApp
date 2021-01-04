.class Lcom/polidea/rxandroidble2/internal/operations/ScanOperation$1;
.super Ljava/lang/Object;
.source "ScanOperation.java"

# interfaces
.implements Lio/reactivex/functions/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;->protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;

.field final synthetic val$scanCallback:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;Ljava/lang/Object;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation$1;->val$scanCallback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Scan operation is requested to stop."

    const/4 v1, 0x0

    .line 39
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;->access$000(Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;)Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation$1;->val$scanCallback:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;->stopScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)V

    return-void
.end method
