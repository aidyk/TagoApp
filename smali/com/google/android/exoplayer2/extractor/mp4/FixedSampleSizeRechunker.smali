.class final Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation


# static fields
.field private static final MAX_SAMPLE_SIZE:I = 0x2000


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    .locals 17

    move-object/from16 v1, p2

    const/16 v2, 0x2000

    .line 62
    div-int v2, v2, p0

    .line 66
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget v7, v1, v5

    .line 67
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-array v8, v6, [J

    .line 71
    new-array v9, v6, [I

    .line 73
    new-array v11, v6, [J

    .line 74
    new-array v12, v6, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 78
    :goto_1
    array-length v6, v1

    if-ge v4, v6, :cond_2

    .line 79
    aget v6, v1, v4

    .line 80
    aget-wide v13, p1, v4

    :goto_2
    if-lez v6, :cond_1

    .line 83
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 85
    aput-wide v13, v8, v3

    mul-int v16, p0, v15

    .line 86
    aput v16, v9, v3

    .line 87
    aget v0, v9, v3

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v0, v5

    mul-long v0, v0, p3

    .line 88
    aput-wide v0, v11, v3

    const/4 v0, 0x1

    .line 89
    aput v0, v12, v3

    .line 91
    aget v0, v9, v3

    int-to-long v0, v0

    add-long/2addr v13, v0

    add-int/2addr v5, v15

    sub-int/2addr v6, v15

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p2

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    goto :goto_1

    .line 99
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[ILcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$1;)V

    return-object v0
.end method
