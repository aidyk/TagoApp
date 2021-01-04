.class Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18$1;
.super Ljava/lang/Object;
.source "ScanOperationApi18.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;->createScanCallback(Lio/reactivex/Emitter;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;

.field final synthetic val$emitter:Lio/reactivex/Emitter;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;Lio/reactivex/Emitter;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18$1;->val$emitter:Lio/reactivex/Emitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;->access$000(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;)Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;->create(Landroid/bluetooth/BluetoothDevice;I[B)Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18$1;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;

    invoke-static {p2}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;->access$100(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;)Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;->matches(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 41
    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18$1;->val$emitter:Lio/reactivex/Emitter;

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
