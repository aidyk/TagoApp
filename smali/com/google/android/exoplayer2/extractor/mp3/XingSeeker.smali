.class final Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final durationUs:J

.field private final firstFramePosition:J

.field private final headerSize:I

.field private final inputLength:J

.field private final sizeBytes:J

.field private final tableOfContents:[J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 11

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    .line 85
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;-><init>(JJJ[JJI)V

    return-void
.end method

.method private constructor <init>(JJJ[JJI)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->firstFramePosition:J

    .line 91
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    .line 92
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->inputLength:J

    .line 93
    iput-object p7, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    .line 94
    iput-wide p8, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->sizeBytes:J

    .line 95
    iput p10, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->headerSize:I

    return-void
.end method

.method public static create(Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;Lcom/google/android/exoplayer2/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;
    .locals 16

    move-object/from16 v0, p0

    .line 43
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    .line 44
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    .line 45
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    int-to-long v3, v3

    add-long v3, p2, v3

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    int-to-long v8, v6

    int-to-long v10, v1

    const-wide/32 v12, 0xf4240

    mul-long v10, v10, v12

    int-to-long v12, v2

    .line 53
    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    const/4 v1, 0x6

    and-int/lit8 v2, v5, 0x6

    if-eq v2, v1, :cond_1

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;

    move-object v5, v0

    move-wide v6, v3

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;-><init>(JJJ)V

    return-object v0

    .line 60
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    int-to-long v13, v1

    move-object/from16 v1, p1

    .line 61
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/16 v2, 0x63

    .line 62
    new-array v12, v2, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;

    iget v15, v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    move-object v5, v1

    move-wide v6, v3

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v15}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;-><init>(JJJ[JJI)V

    return-object v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTimeUsForTocPosition(I)J
    .locals 4

    .line 165
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 7

    .line 105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->firstFramePosition:J

    return-wide p1

    :cond_0
    long-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    .line 108
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    long-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x43800000    # 256.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    cmpl-float p2, p1, p2

    if-ltz p2, :cond_2

    goto :goto_1

    :cond_2
    float-to-int p2, p1

    if-nez p2, :cond_3

    goto :goto_0

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v2, p2, -0x1

    aget-wide v2, v1, v2

    long-to-float v1, v2

    :goto_0
    const/16 v2, 0x63

    if-ge p2, v2, :cond_4

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v2, v0, p2

    long-to-float v0, v2

    :cond_4
    sub-float/2addr v0, v1

    int-to-float p2, p2

    sub-float/2addr p1, p2

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    :goto_1
    const-wide/high16 p1, 0x3f70000000000000L    # 0.00390625

    float-to-double v0, v0

    .line 130
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->sizeBytes:J

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->firstFramePosition:J

    add-long/2addr p1, v0

    .line 131
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->inputLength:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->inputLength:J

    :goto_2
    sub-long/2addr v0, v4

    goto :goto_3

    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->firstFramePosition:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->headerSize:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->sizeBytes:J

    add-long/2addr v0, v2

    goto :goto_2

    .line 133
    :goto_3
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getTimeUs(J)J
    .locals 11

    .line 138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->firstFramePosition:J

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_3

    :cond_0
    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    .line 141
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->firstFramePosition:J

    sub-long/2addr p1, v5

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v3

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->sizeBytes:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v3

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    double-to-long v3, p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 143
    invoke-static {v0, v3, v4, v6, v5}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    add-int/2addr v0, v6

    .line 144
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->getTimeUsForTocPosition(I)J

    move-result-wide v3

    if-nez v0, :cond_1

    move-wide v7, v1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v7, v0, -0x1

    aget-wide v7, v5, v7

    :goto_0
    const/16 v5, 0x63

    if-ne v0, v5, :cond_2

    const-wide/16 v9, 0x100

    goto :goto_1

    .line 148
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v9, v5, v0

    :goto_1
    add-int/2addr v0, v6

    .line 149
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->getTimeUsForTocPosition(I)J

    move-result-wide v5

    cmp-long v0, v9, v7

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    sub-long/2addr v5, v3

    long-to-double v0, v5

    long-to-double v5, v7

    .line 150
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    sub-long/2addr v9, v7

    long-to-double p1, v9

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    double-to-long v1, v0

    :goto_2
    const/4 p1, 0x0

    add-long/2addr v3, v1

    return-wide v3

    :cond_4
    :goto_3
    return-wide v1
.end method

.method public isSeekable()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
