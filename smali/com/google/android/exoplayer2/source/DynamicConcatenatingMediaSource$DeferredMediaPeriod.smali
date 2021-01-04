.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeferredMediaPeriod"
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private preparePositionUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 0

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 551
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 552
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createPeriod()V
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->preparePositionUs:J

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public discardBuffer(J)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(J)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    :goto_0
    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 630
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 538
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 635
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 571
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->preparePositionUs:J

    .line 572
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz p1, :cond_0

    .line 573
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public releasePeriod()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 7

    .line 594
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide p1

    return-wide p1
.end method
