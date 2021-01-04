.class Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$2;
.super Ljava/lang/Object;
.source "ScanSettingsEmulator.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->repeatedWindowTransformer(I)Lio/reactivex/ObservableTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
        "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

.field final synthetic val$delayToNextWindow:J

.field final synthetic val$windowInMillis:I


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;IJ)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$2;->this$0:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

    iput p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$2;->val$windowInMillis:I

    iput-wide p3, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$2;->val$delayToNextWindow:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation

    .line 112
    iget v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$2;->val$windowInMillis:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$2;->this$0:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

    invoke-static {v3}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->access$500(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/Observable;->take(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$2$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$2$1;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$2;)V

    .line 113
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->repeatWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$2;->apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
