.class Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1$1;
.super Ljava/lang/Object;
.source "ScanSettingsEmulator.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
        "Lio/reactivex/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ")",
            "Lio/reactivex/Observable<",
            "*>;"
        }
    .end annotation

    .line 42
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->access$100(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;)Lio/reactivex/Observable;

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

    .line 39
    check-cast p1, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1$1;->apply(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
