.class final Lcom/google/android/exoplayer2/extractor/wav/WavHeader;
.super Ljava/lang/Object;
.source "WavHeader.java"


# instance fields
.field private final averageBytesPerSecond:I

.field private final bitsPerSample:I

.field private final blockAlignment:I

.field private dataSize:J

.field private dataStartPosition:J

.field private final encoding:I

.field private final numChannels:I

.field private final sampleRateHz:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    .line 45
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->sampleRateHz:I

    .line 46
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->averageBytesPerSecond:I

    .line 47
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    .line 48
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->bitsPerSample:I

    .line 49
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->encoding:I

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 2

    .line 65
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->sampleRateHz:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->bitsPerSample:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    mul-int v0, v0, v1

    return v0
.end method

.method public getBytesPerFrame()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    return v0
.end method

.method public getDurationUs()J
    .locals 4

    .line 54
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 55
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->sampleRateHz:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getEncoding()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->encoding:I

    return v0
.end method

.method public getNumChannels()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    return v0
.end method

.method public getPosition(J)J
    .locals 4

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->averageBytesPerSecond:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    .line 82
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    .line 83
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataStartPosition:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getSampleRateHz()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->sampleRateHz:I

    return v0
.end method

.method public getTimeUs(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 88
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->averageBytesPerSecond:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public hasDataBounds()Z
    .locals 5

    .line 93
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataStartPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDataBounds(JJ)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataStartPosition:J

    .line 99
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    return-void
.end method
