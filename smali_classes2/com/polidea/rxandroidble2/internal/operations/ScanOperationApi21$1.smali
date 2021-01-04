.class Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "ScanOperationApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->createScanCallback(Lio/reactivex/Emitter;)Landroid/bluetooth/le/ScanCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;

.field final synthetic val$emitter:Lio/reactivex/Emitter;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;Lio/reactivex/Emitter;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21$1;->val$emitter:Lio/reactivex/Emitter;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 70
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->access$000(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;)Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;->create(Landroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->access$100(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;)Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;->matches(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21$1;->val$emitter:Lio/reactivex/Emitter;

    invoke-interface {v1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScanFailed(I)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21$1;->val$emitter:Lio/reactivex/Emitter;

    new-instance v1, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->access$200(I)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(I)V

    invoke-interface {v0, v1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->access$000(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;)Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;->create(ILandroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;

    invoke-static {p2}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->access$100(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;)Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;->matches(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 63
    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21$1;->val$emitter:Lio/reactivex/Emitter;

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
