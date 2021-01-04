.class Lcom/polidea/rxandroidble2/RxBleClientImpl$5;
.super Ljava/lang/Object;
.source "RxBleClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/RxBleClientImpl;->createScanOperationApi18([Ljava/util/UUID;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;",
        "Lcom/polidea/rxandroidble2/RxBleScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$5;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;)Lcom/polidea/rxandroidble2/RxBleScanResult;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$5;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->access$700(Lcom/polidea/rxandroidble2/RxBleClientImpl;Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;)Lcom/polidea/rxandroidble2/RxBleScanResult;

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

    .line 206
    check-cast p1, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/RxBleClientImpl$5;->apply(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;)Lcom/polidea/rxandroidble2/RxBleScanResult;

    move-result-object p1

    return-object p1
.end method
