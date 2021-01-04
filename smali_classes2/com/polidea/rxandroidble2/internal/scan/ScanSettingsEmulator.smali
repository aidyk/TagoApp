.class public Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;
.super Ljava/lang/Object;
.source "ScanSettingsEmulator.java"


# instance fields
.field private emulateFirstMatch:Lio/reactivex/ObservableTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private emulateFirstMatchAndMatchLost:Lio/reactivex/ObservableTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private emulateMatchLost:Lio/reactivex/ObservableTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduler:Lio/reactivex/Scheduler;


# direct methods
.method public constructor <init>(Lio/reactivex/Scheduler;)V
    .locals 1
    .param p1    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "computation"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$5;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$5;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->emulateMatchLost:Lio/reactivex/ObservableTransformer;

    .line 202
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$7;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$7;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->emulateFirstMatchAndMatchLost:Lio/reactivex/ObservableTransformer;

    .line 32
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->scheduler:Lio/reactivex/Scheduler;

    .line 34
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$1;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;Lio/reactivex/Scheduler;)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->emulateFirstMatch:Lio/reactivex/ObservableTransformer;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)Lio/reactivex/functions/Function;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->toFirstMatch()Lio/reactivex/functions/Function;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)Lio/reactivex/Scheduler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->scheduler:Lio/reactivex/Scheduler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)Lio/reactivex/functions/Function;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->toMatchLost()Lio/reactivex/functions/Function;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)Lio/reactivex/ObservableTransformer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->emulateFirstMatch:Lio/reactivex/ObservableTransformer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)Lio/reactivex/ObservableTransformer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->emulateMatchLost:Lio/reactivex/ObservableTransformer;

    return-object p0
.end method

.method private repeatedWindowTransformer(I)Lio/reactivex/ObservableTransformer;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x1387L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation

    .line 107
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 108
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 109
    new-instance v2, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$2;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;IJ)V

    return-object v2
.end method

.method private scanModeBalancedTransformer()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x9c4

    .line 91
    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->repeatedWindowTransformer(I)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    return-object v0
.end method

.method private scanModeLowPowerTransformer()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1f4

    .line 95
    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->repeatedWindowTransformer(I)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    return-object v0
.end method

.method private splitByAddressAndForEach(Lio/reactivex/ObservableTransformer;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;)",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$3;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$3;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;Lio/reactivex/ObservableTransformer;)V

    return-object v0
.end method

.method private toFirstMatch()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$4;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$4;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)V

    return-object v0
.end method

.method private toMatchLost()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$6;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$6;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)V

    return-object v0
.end method


# virtual methods
.method emulateCallbackType(I)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 136
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/util/ObservableUtil;->identityTransformer()Lio/reactivex/ObservableTransformer;

    move-result-object p1

    return-object p1

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->emulateFirstMatchAndMatchLost:Lio/reactivex/ObservableTransformer;

    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->splitByAddressAndForEach(Lio/reactivex/ObservableTransformer;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    return-object p1

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->emulateMatchLost:Lio/reactivex/ObservableTransformer;

    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->splitByAddressAndForEach(Lio/reactivex/ObservableTransformer;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    return-object p1

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->emulateFirstMatch:Lio/reactivex/ObservableTransformer;

    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->splitByAddressAndForEach(Lio/reactivex/ObservableTransformer;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    return-object p1
.end method

.method emulateScanMode(I)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 86
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/util/ObservableUtil;->identityTransformer()Lio/reactivex/ObservableTransformer;

    move-result-object p1

    return-object p1

    .line 77
    :pswitch_0
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->scanModeBalancedTransformer()Lio/reactivex/ObservableTransformer;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string p1, "Cannot emulate opportunistic scan mode since it is OS dependent - fallthrough to low power"

    const/4 v0, 0x0

    .line 79
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :pswitch_2
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->scanModeLowPowerTransformer()Lio/reactivex/ObservableTransformer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
