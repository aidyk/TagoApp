.class public Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;
.super Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;
.source "ScanOperationApi18.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2/internal/operations/ScanOperation<",
        "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
        "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final scanFilterMatcher:Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final scanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;)V
    .locals 0
    .param p1    # Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;-><init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;)V

    .line 29
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;->scanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    .line 30
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;->scanFilterMatcher:Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;)Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;->scanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;)Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;->scanFilterMatcher:Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;

    return-object p0
.end method


# virtual methods
.method createScanCallback(Lio/reactivex/Emitter;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Emitter<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;)",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18$1;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18$1;-><init>(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;Lio/reactivex/Emitter;)V

    return-object v0
.end method

.method bridge synthetic createScanCallback(Lio/reactivex/Emitter;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;->createScanCallback(Lio/reactivex/Emitter;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object p1

    return-object p1
.end method

.method startScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 0

    .line 49
    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->startLegacyLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p1

    return p1
.end method

.method bridge synthetic startScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p2, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;->startScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p1

    return p1
.end method

.method stopScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 0

    .line 55
    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->stopLegacyLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    return-void
.end method

.method bridge synthetic stopScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;->stopScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    return-void
.end method
