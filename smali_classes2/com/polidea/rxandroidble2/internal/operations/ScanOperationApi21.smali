.class public Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;
.super Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;
.source "ScanOperationApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2/internal/operations/ScanOperation<",
        "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
        "Landroid/bluetooth/le/ScanCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final androidScanObjectsConverter:Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final emulatedScanFilterMatcher:Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final internalScanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final scanFilters:[Lcom/polidea/rxandroidble2/scan/ScanFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final scanSettings:Lcom/polidea/rxandroidble2/scan/ScanSettings;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;Lcom/polidea/rxandroidble2/scan/ScanSettings;Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)V
    .locals 0
    .param p1    # Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/polidea/rxandroidble2/scan/ScanSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [Lcom/polidea/rxandroidble2/scan/ScanFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;-><init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;)V

    .line 49
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->internalScanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    .line 50
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->scanSettings:Lcom/polidea/rxandroidble2/scan/ScanSettings;

    .line 51
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->emulatedScanFilterMatcher:Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;

    .line 52
    iput-object p6, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->scanFilters:[Lcom/polidea/rxandroidble2/scan/ScanFilter;

    .line 53
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->androidScanObjectsConverter:Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;)Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->internalScanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;)Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->emulatedScanFilterMatcher:Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;

    return-object p0
.end method

.method static synthetic access$200(I)I
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->errorCodeToBleErrorCode(I)I

    move-result p0

    return p0
.end method

.method private static errorCodeToBleErrorCode(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string p0, "Encountered unknown scanning error code: %d -> check android.bluetooth.le.ScanCallback"

    const/4 v0, 0x0

    .line 112
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const p0, 0x7fffffff

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method createScanCallback(Lio/reactivex/Emitter;)Landroid/bluetooth/le/ScanCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Emitter<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;)",
            "Landroid/bluetooth/le/ScanCallback;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21$1;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21$1;-><init>(Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;Lio/reactivex/Emitter;)V

    return-object v0
.end method

.method bridge synthetic createScanCallback(Lio/reactivex/Emitter;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->createScanCallback(Lio/reactivex/Emitter;)Landroid/bluetooth/le/ScanCallback;

    move-result-object p1

    return-object p1
.end method

.method startScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/le/ScanCallback;)Z
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->androidScanObjectsConverter:Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->scanFilters:[Lcom/polidea/rxandroidble2/scan/ScanFilter;

    .line 87
    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;->toNativeFilters([Lcom/polidea/rxandroidble2/scan/ScanFilter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->androidScanObjectsConverter:Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->scanSettings:Lcom/polidea/rxandroidble2/scan/ScanSettings;

    .line 88
    invoke-virtual {v1, v2}, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;->toNativeSettings(Lcom/polidea/rxandroidble2/scan/ScanSettings;)Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    .line 86
    invoke-virtual {p1, v0, v1, p2}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->startLeScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    const/4 p1, 0x1

    return p1
.end method

.method bridge synthetic startScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)Z
    .locals 0

    .line 25
    check-cast p2, Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->startScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/le/ScanCallback;)Z

    move-result p1

    return p1
.end method

.method stopScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/le/ScanCallback;)V
    .locals 0

    .line 96
    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->stopLeScan(Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method

.method bridge synthetic stopScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;->stopScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method
