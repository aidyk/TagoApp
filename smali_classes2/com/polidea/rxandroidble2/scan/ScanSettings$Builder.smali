.class public final Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;
.super Ljava/lang/Object;
.source "ScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/scan/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCallbackType:I

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mReportDelayMillis:J

.field private mScanMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->mScanMode:I

    const/4 v0, 0x1

    .line 221
    iput v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->mCallbackType:I

    const-wide/16 v1, 0x0

    .line 222
    iput-wide v1, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->mReportDelayMillis:J

    .line 223
    iput v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->mMatchMode:I

    const/4 v0, 0x3

    .line 224
    iput v0, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    return-void
.end method

.method private isValidCallbackType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public build()Lcom/polidea/rxandroidble2/scan/ScanSettings;
    .locals 9

    .line 323
    new-instance v8, Lcom/polidea/rxandroidble2/scan/ScanSettings;

    iget v1, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->mScanMode:I

    iget v2, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->mCallbackType:I

    iget-wide v3, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->mReportDelayMillis:J

    iget v5, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->mMatchMode:I

    iget v6, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2/scan/ScanSettings;-><init>(IIJIILcom/polidea/rxandroidble2/scan/ScanSettings$1;)V

    return-object v8
.end method

.method public setCallbackType(I)Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;
    .locals 3

    .line 250
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->isValidCallbackType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iput p1, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->mCallbackType:I

    return-object p0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid callback type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScanMode(I)Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 238
    iput p1, p0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->mScanMode:I

    return-object p0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scan mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
