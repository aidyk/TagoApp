.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final childIndexByUid:Landroid/util/SparseIntArray;

.field private final firstPeriodInChildIndices:[I

.field private final firstWindowInChildIndices:[I

.field private final periodCount:I

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;

.field private final uids:[I

.field private final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;",
            ">;II)V"
        }
    .end annotation

    .line 400
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;-><init>(I)V

    .line 401
    iput p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    .line 402
    iput p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    .line 403
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 404
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    .line 405
    new-array p3, p2, [I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    .line 406
    new-array p3, p2, [Lcom/google/android/exoplayer2/Timeline;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 407
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->uids:[I

    .line 408
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Landroid/util/SparseIntArray;

    .line 410
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    aput-object v1, v0, p2

    .line 412
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    iget v1, p3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    aput v1, v0, p2

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    iget v1, p3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    aput v1, v0, p2

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->uids:[I

    iget-object p3, p3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, v0, p2

    .line 415
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->uids:[I

    aget v0, v0, p2

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 2

    .line 431
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Landroid/util/SparseIntArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 p1, -0x1

    :cond_1
    return p1
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result p1

    return p1
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result p1

    return p1
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->uids:[I

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method public getPeriodCount()I
    .locals 1

    .line 465
    iget v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    return v0
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getWindowCount()I
    .locals 1

    .line 460
    iget v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    return v0
.end method
