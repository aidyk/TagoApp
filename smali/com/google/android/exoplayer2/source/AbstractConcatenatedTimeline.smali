.class abstract Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "AbstractConcatenatedTimeline.java"


# instance fields
.field private final childCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    return-void
.end method


# virtual methods
.method protected abstract getChildIndexByChildUid(Ljava/lang/Object;)I
.end method

.method protected abstract getChildIndexByPeriodIndex(I)I
.end method

.method protected abstract getChildIndexByWindowIndex(I)I
.end method

.method protected abstract getChildUidByChildIndex(I)Ljava/lang/Object;
.end method

.method protected abstract getFirstPeriodIndexByChildIndex(I)I
.end method

.method protected abstract getFirstWindowIndexByChildIndex(I)I
.end method

.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 3

    .line 104
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    check-cast p1, Landroid/util/Pair;

    .line 108
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 109
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 114
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v0

    add-int v1, v0, p1

    :goto_0
    return v1
.end method

.method public getNextWindowIndex(II)I
    .locals 6

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 38
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    sub-int/2addr p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p2, v4, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p2

    :goto_0
    invoke-virtual {v2, p1, v5}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(II)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    add-int/2addr v1, p1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 45
    iget p1, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    if-ge v0, p1, :cond_2

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result p1

    return p1

    :cond_2
    if-ne p2, v4, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public final getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 4

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 92
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    .line 93
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 95
    iget p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-eqz p3, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public getPreviousWindowIndex(II)I
    .locals 4

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    sub-int/2addr p1, v1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    invoke-virtual {v0, p1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/2addr v1, p1

    return v1

    :cond_1
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_2
    if-ne p2, v2, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getWindowCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method protected abstract getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
.end method

.method public final getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 9

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 80
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    sub-int v4, p1, v1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 83
    iget p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 84
    iget p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    return-object p2
.end method
