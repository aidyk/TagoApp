.class public final Lcom/google/android/exoplayer2/source/LoopingMediaSource;
.super Ljava/lang/Object;
.source "LoopingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;,
        Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
    }
.end annotation


# instance fields
.field private childPeriodCount:I

.field private final childSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    const v0, 0x7fffffff

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 58
    iput p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/exoplayer2/source/LoopingMediaSource;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childPeriodCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/LoopingMediaSource;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    return p0
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 3

    .line 81
    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childPeriodCount:I

    rem-int/2addr p1, v2

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    .line 82
    invoke-interface {v0, v1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 83
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 1

    .line 63
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    new-instance v0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;

    invoke-direct {v0, p0, p3}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/LoopingMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public releaseSource()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    return-void
.end method
