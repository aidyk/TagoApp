.class public abstract Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;
.super Lcom/polidea/rxandroidble2/internal/QueueOperation;
.source "ScanOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SCAN_RESU",
        "LT_TYPE:Ljava/lang/Object;",
        "SCAN_CA",
        "LLBACK_TYPE:Ljava/lang/Object;",
        ">",
        "Lcom/polidea/rxandroidble2/internal/QueueOperation<",
        "TSCAN_RESU",
        "LT_TYPE;",
        ">;"
    }
.end annotation


# instance fields
.field private final rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/QueueOperation;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;)Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    return-object p0
.end method


# virtual methods
.method abstract createScanCallback(Lio/reactivex/Emitter;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Emitter<",
            "TSCAN_RESU",
            "LT_TYPE;",
            ">;)TSCAN_CA",
            "LLBACK_TYPE;"
        }
    .end annotation
.end method

.method protected final protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TSCAN_RESU",
            "LT_TYPE;",
            ">;",
            "Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;->createScanCallback(Lio/reactivex/Emitter;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    :try_start_0
    new-instance v2, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation$1;

    invoke-direct {v2, p0, v0}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation$1;-><init>(Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->setCancellable(Lio/reactivex/functions/Cancellable;)V

    const-string v2, "Scan operation is requested to start."

    .line 43
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {p0, v2, v0}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperation;->startScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(I)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Error while calling the start scan function"

    .line 50
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(I)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;->release()V

    return-void

    :goto_1
    invoke-interface {p2}, Lcom/polidea/rxandroidble2/internal/serialization/QueueReleaseInterface;->release()V

    throw p1
.end method

.method protected provideException(Landroid/os/DeadObjectException;)Lcom/polidea/rxandroidble2/exceptions/BleException;
    .locals 2

    .line 59
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method abstract startScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            "TSCAN_CA",
            "LLBACK_TYPE;",
            ")Z"
        }
    .end annotation
.end method

.method abstract stopScan(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            "TSCAN_CA",
            "LLBACK_TYPE;",
            ")V"
        }
    .end annotation
.end method
