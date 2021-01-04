.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MAX_INITIAL_BITRATE:I = 0xc3500

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final maxDurationForQualityDecreaseUs:J

.field private final maxInitialBitrate:I

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private reason:I

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 12

    const v4, 0xc3500

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x61a8

    const-wide/16 v9, 0x61a8

    const/high16 v11, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 114
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;IJJJF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;IJJJF)V
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 144
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 145
    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxInitialBitrate:I

    const-wide/16 p1, 0x3e8

    mul-long p5, p5, p1

    .line 146
    iput-wide p5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    mul-long p7, p7, p1

    .line 147
    iput-wide p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    mul-long p9, p9, p1

    .line 148
    iput-wide p9, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 149
    iput p11, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    const-wide/high16 p1, -0x8000000000000000L

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    const/4 p1, 0x1

    .line 151
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    return-void
.end method

.method private determineIdealSelectedIndex(J)I
    .locals 7

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 238
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxInitialBitrate:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 241
    :goto_1
    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->length:I

    if-ge v2, v4, :cond_4

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-eqz v6, :cond_1

    .line 242
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 243
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 244
    iget v3, v3, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v3, v3

    cmp-long v5, v3, v0

    if-gtz v5, :cond_2

    return v2

    :cond_2
    move v3, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v3
.end method


# virtual methods
.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 202
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 205
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 206
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    sub-long/2addr v2, p1

    .line 207
    iget-wide v4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    return v0

    .line 210
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v2

    .line 211
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 216
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 217
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 218
    iget-wide v5, v3, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v5, p1

    .line 219
    iget-wide v7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    cmp-long v3, v5, v7

    if-ltz v3, :cond_2

    iget v3, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v5, v2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v3, v5, :cond_2

    iget v3, v4, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    iget v3, v4, Lcom/google/android/exoplayer2/Format;->height:I

    const/16 v6, 0x2d0

    if-ge v3, v6, :cond_2

    iget v3, v4, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v3, v5, :cond_2

    iget v3, v4, Lcom/google/android/exoplayer2/Format;->width:I

    const/16 v5, 0x500

    if-ge v3, v5, :cond_2

    iget v3, v4, Lcom/google/android/exoplayer2/Format;->height:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->height:I

    if-ge v3, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public updateSelectedTrack(J)V
    .locals 6

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 158
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 160
    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-ne v3, v2, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 166
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 167
    iget v3, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-le v3, v4, :cond_1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    cmp-long v5, p1, v3

    if-gez v5, :cond_1

    .line 171
    iput v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    goto :goto_0

    .line 172
    :cond_1
    iget v1, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v1, v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long v3, p1, v0

    if-ltz v3, :cond_2

    .line 176
    iput v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 180
    :cond_2
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-eq p1, v2, :cond_3

    const/4 p1, 0x3

    .line 181
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    :cond_3
    return-void
.end method
