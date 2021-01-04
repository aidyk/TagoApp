.class public final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;
.implements Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    }
.end annotation


# static fields
.field private static final MSG_ADD:I = 0x0

.field private static final MSG_ADD_MULTIPLE:I = 0x1

.field private static final MSG_MOVE:I = 0x3

.field private static final MSG_REMOVE:I = 0x2


# instance fields
.field private final deferredMediaPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final mediaSourceByMediaPeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourcesPublic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private preventListenerNotification:Z

.field private final query:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

.field private windowCount:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    .line 69
    new-instance v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;IILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->query:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->updateMediaSourceInternal(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method private addMediaSourceInternal(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 8

    .line 271
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 272
    new-instance v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;-><init>()V

    if-lez p1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 275
    new-instance v7, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v2, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 276
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v3

    add-int v4, v2, v3

    iget v2, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 277
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v1

    add-int v5, v2, v1

    move-object v1, v7

    move-object v2, p2

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;IILjava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_0
    new-instance v7, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p2

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;IILjava/lang/Object;)V

    .line 282
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result p2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->correctOffsets(III)V

    .line 283
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {p2, p1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 284
    iget-object p1, v7, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$1;

    invoke-direct {v1, p0, v7}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;)V

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    return-void
.end method

.method private addMediaSourcesInternal(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 293
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    add-int/lit8 v1, p1, 0x1

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourceInternal(ILcom/google/android/exoplayer2/source/MediaSource;)V

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private correctOffsets(III)V
    .locals 2

    .line 349
    iget v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->windowCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->windowCount:I

    .line 350
    iget v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->periodCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->periodCount:I

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 353
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findMediaSourceHolderByPeriodIndex(I)I
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->query:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iput p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 359
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->query:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    invoke-static {p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    :goto_0
    return p1
.end method

.method private maybeNotifyListener()V
    .locals 5

    .line 263
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    new-instance v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget v3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->windowCount:I

    iget v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->periodCount:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;-><init>(Ljava/util/Collection;II)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private moveMediaSourceInternal(II)V
    .locals 6

    .line 334
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 335
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 336
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 337
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v3, v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 338
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v4, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    if-gt v0, v1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 341
    iput v2, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 342
    iput v3, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 343
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result p2

    add-int/2addr v2, p2

    .line 344
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result p1

    add-int/2addr v3, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeMediaSourceInternal(I)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 327
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 328
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 329
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->correctOffsets(III)V

    .line 330
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    return-void
.end method

.method private updateMediaSourceInternal(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 302
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 303
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    if-ne v1, p2, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 307
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 309
    :cond_1
    iget v4, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->findMediaSourceHolderByPeriodIndex(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 310
    invoke-direct {p0, v4, v1, v2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->correctOffsets(III)V

    .line 312
    :cond_2
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->cloneWithNewTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 313
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    if-nez p2, :cond_4

    .line 314
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    :goto_0
    if-ltz p2, :cond_4

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-ne v0, v1, :cond_3

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->createPeriod()V

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 321
    :cond_4
    iput-boolean v3, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    .line 322
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->maybeNotifyListener()V

    return-void

    .line 300
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public declared-synchronized addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 3

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-array v1, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v2, v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 88
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(ILjava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 117
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-array v1, v2, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-direct {v4, p0, v2, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v4, v1, v3

    .line 122
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 115
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMediaSources(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSources(ILjava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0

    throw p1
.end method

.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 3

    .line 196
    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->findMediaSourceHolderByPeriodIndex(I)I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 198
    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget v2, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    sub-int/2addr p1, v2

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    .line 200
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    if-nez p1, :cond_0

    .line 201
    new-instance p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p1, v2, v1, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 202
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p1, v1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    .line 206
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public declared-synchronized getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSize()I
    .locals 1

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    packed-switch p1, :pswitch_data_0

    .line 255
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 250
    :pswitch_0
    check-cast p2, Landroid/util/Pair;

    .line 251
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->moveMediaSourceInternal(II)V

    goto :goto_0

    .line 246
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->removeMediaSourceInternal(I)V

    goto :goto_0

    .line 240
    :pswitch_2
    check-cast p2, Landroid/util/Pair;

    .line 242
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    goto :goto_0

    .line 235
    :pswitch_3
    check-cast p2, Landroid/util/Pair;

    .line 236
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourceInternal(ILcom/google/android/exoplayer2/source/MediaSource;)V

    :goto_0
    const/4 p1, 0x0

    .line 258
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->maybeNotifyListener()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 190
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized moveMediaSource(II)V
    .locals 5

    monitor-enter p0

    if-ne p1, p2, :cond_0

    .line 150
    monitor-exit p0

    return-void

    .line 152
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v4, 0x3

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-direct {v3, p0, v4, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v3, v1, v2

    .line 154
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 148
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 0

    monitor-enter p0

    .line 179
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 180
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    .line 182
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 183
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    .line 184
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->maybeNotifyListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 178
    monitor-exit p0

    throw p1
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 213
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    instance-of v1, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;

    if-eqz v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 216
    check-cast p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->releasePeriod()V

    goto :goto_0

    .line 218
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    :goto_0
    return-void
.end method

.method public releaseSource()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 225
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized removeMediaSource(I)V
    .locals 5

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v3, p0, v4, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 133
    monitor-exit p0

    throw p1
.end method
