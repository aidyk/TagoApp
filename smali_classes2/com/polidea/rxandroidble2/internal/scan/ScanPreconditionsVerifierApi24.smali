.class public Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;
.super Ljava/lang/Object;
.source "ScanPreconditionsVerifierApi24.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;


# static fields
.field private static final EXCESSIVE_SCANNING_PERIOD:J

.field private static final SCANS_LENGTH:I = 0x5


# instance fields
.field private final previousChecks:[J

.field private final scanPreconditionVerifierApi18:Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;

.field private final timeScheduler:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;->EXCESSIVE_SCANNING_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;Lio/reactivex/Scheduler;)V
    .locals 1
    .param p2    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "computation"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 23
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;->previousChecks:[J

    .line 32
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;->scanPreconditionVerifierApi18:Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;

    .line 33
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;->timeScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method private getOldestCheckTimestampIndex()I
    .locals 7

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 63
    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;->previousChecks:[J

    aget-wide v5, v4, v3

    cmp-long v4, v5, v0

    if-gez v4, :cond_0

    move v2, v3

    move-wide v0, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public verify()V
    .locals 10

    .line 38
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;->scanPreconditionVerifierApi18:Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;->verify()V

    .line 46
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;->getOldestCheckTimestampIndex()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;->previousChecks:[J

    aget-wide v2, v1, v0

    .line 48
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;->timeScheduler:Lio/reactivex/Scheduler;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sub-long v6, v4, v2

    .line 50
    sget-wide v8, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;->EXCESSIVE_SCANNING_PERIOD:J

    cmp-long v1, v6, v8

    if-ltz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;->previousChecks:[J

    aput-wide v4, v1, v0

    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    const v1, 0x7ffffffe

    new-instance v4, Ljava/util/Date;

    sget-wide v5, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;->EXCESSIVE_SCANNING_PERIOD:J

    add-long/2addr v2, v5

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, v1, v4}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(ILjava/util/Date;)V

    throw v0
.end method
