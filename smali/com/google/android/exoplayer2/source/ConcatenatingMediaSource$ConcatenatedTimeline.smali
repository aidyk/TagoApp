.class final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final isRepeatOneAtomic:Z

.field private final sourcePeriodOffsets:[I

.field private final sourceWindowOffsets:[I

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Timeline;Z)V
    .locals 11

    .line 170
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;-><init>(I)V

    .line 171
    array-length v0, p1

    new-array v0, v0, [I

    .line 172
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 175
    :goto_0
    array-length v7, p1

    if-ge v3, v7, :cond_1

    .line 176
    aget-object v7, p1, v3

    .line 177
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v4, v8

    if-gtz v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    const-string v9, "ConcatenatingMediaSource children contain too many periods"

    .line 178
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    long-to-int v8, v4

    .line 180
    aput v8, v0, v3

    .line 181
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v7

    add-int/2addr v6, v7

    .line 182
    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 185
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    .line 186
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    .line 187
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->isRepeatOneAtomic:Z

    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 1

    .line 228
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 231
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    :goto_0
    return p1
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    :goto_0
    return p1
.end method

.method public getNextWindowIndex(II)I
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->isRepeatOneAtomic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x2

    .line 205
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getNextWindowIndex(II)I

    move-result p1

    return p1
.end method

.method public getPeriodCount()I
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getPreviousWindowIndex(II)I
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->isRepeatOneAtomic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x2

    .line 213
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getPreviousWindowIndex(II)I

    move-result p1

    return p1
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getWindowCount()I
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method
