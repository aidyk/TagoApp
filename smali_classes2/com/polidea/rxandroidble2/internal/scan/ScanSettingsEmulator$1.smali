.class Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;
.super Ljava/lang/Object;
.source "ScanSettingsEmulator.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;-><init>(Lio/reactivex/Scheduler;)V
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
.field private final emitAfterTimerFunc:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lio/reactivex/Observable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final takeFirstFromEachWindowFunc:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

.field private final timerObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private toFirstMatchFunc:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$scheduler:Lio/reactivex/Scheduler;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;Lio/reactivex/Scheduler;)V
    .locals 2

    .line 34
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->this$0:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->val$scheduler:Lio/reactivex/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->this$0:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->access$000(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)Lio/reactivex/functions/Function;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->toFirstMatchFunc:Lio/reactivex/functions/Function;

    .line 37
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->val$scheduler:Lio/reactivex/Scheduler;

    const-wide/16 v0, 0xa

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->timerObservable:Lio/reactivex/Observable;

    .line 38
    new-instance p1, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1$1;

    invoke-direct {p1, p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1$1;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;)V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->emitAfterTimerFunc:Lio/reactivex/functions/Function;

    .line 45
    new-instance p1, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1$2;

    invoke-direct {p1, p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1$2;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;)V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->takeFirstFromEachWindowFunc:Lio/reactivex/functions/Function;

    return-void
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;)Lio/reactivex/Observable;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->timerObservable:Lio/reactivex/Observable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;)Lio/reactivex/functions/Function;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->emitAfterTimerFunc:Lio/reactivex/functions/Function;

    return-object p0
.end method

.method static synthetic access$300(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;)Lio/reactivex/functions/Function;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->toFirstMatchFunc:Lio/reactivex/functions/Function;

    return-object p0
.end method

.method static synthetic access$400(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;)Lio/reactivex/functions/Function;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->takeFirstFromEachWindowFunc:Lio/reactivex/functions/Function;

    return-object p0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 1
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

    .line 56
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1$3;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1$3;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->publish(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;->apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
