.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    }
.end annotation


# static fields
.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64

.field private static final MSG_CUSTOM:I = 0xb

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field public static final MSG_ERROR:I = 0x8

.field public static final MSG_LOADING_CHANGED:I = 0x2

.field private static final MSG_PERIOD_PREPARED:I = 0x8

.field public static final MSG_PLAYBACK_PARAMETERS_CHANGED:I = 0x7

.field public static final MSG_POSITION_DISCONTINUITY:I = 0x5

.field private static final MSG_PREPARE:I = 0x0

.field public static final MSG_PREPARE_ACK:I = 0x0

.field private static final MSG_REFRESH_SOURCE_INFO:I = 0x7

.field private static final MSG_RELEASE:I = 0x6

.field public static final MSG_SEEK_ACK:I = 0x4

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SET_PLAYBACK_PARAMETERS:I = 0x4

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SET_REPEAT_MODE:I = 0xc

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x9

.field public static final MSG_SOURCE_INFO_REFRESHED:I = 0x6

.field public static final MSG_STATE_CHANGED:I = 0x1

.field private static final MSG_STOP:I = 0x5

.field public static final MSG_TRACKS_CHANGED:I = 0x3

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0xa

.field private static final PREPARING_SOURCE_INTERVAL_MS:I = 0xa

.field private static final RENDERER_TIMESTAMP_OFFSET_US:I = 0x3938700

.field private static final RENDERING_INTERVAL_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private customMessagesProcessed:I

.field private customMessagesSent:I

.field private elapsedRealtimeUs:J

.field private enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

.field private final eventHandler:Landroid/os/Handler;

.field private final handler:Landroid/os/Handler;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isLoading:Z

.field private final loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private final mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

.field private mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private pendingInitialSeekCount:I

.field private pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field private playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private final player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private rebuffering:Z

.field private released:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

.field private rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

.field private rendererPositionUs:J

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private repeatMode:I

.field private final standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

.field private state:I

.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;ZILandroid/os/Handler;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 194
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 195
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 196
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 197
    iput p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    .line 198
    iput-object p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 p3, 0x1

    .line 199
    iput p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 200
    iput-object p7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 201
    iput-object p8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 203
    array-length p3, p1

    new-array p3, p3, [Lcom/google/android/exoplayer2/RendererCapabilities;

    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 204
    :goto_0
    array-length p5, p1

    if-ge p4, p5, :cond_0

    .line 205
    aget-object p5, p1, p4

    invoke-interface {p5, p4}, Lcom/google/android/exoplayer2/Renderer;->setIndex(I)V

    .line 206
    iget-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object p6, p1, p4

    invoke-interface {p6}, Lcom/google/android/exoplayer2/Renderer;->getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 208
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 209
    new-array p1, p3, [Lcom/google/android/exoplayer2/Renderer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 210
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 211
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 212
    new-instance p1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    .line 213
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;)V

    .line 214
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 218
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ExoPlayerImplInternal:Handler"

    const/16 p3, -0x10

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 220
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 221
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    return-void
.end method

.method private doSomeWork()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 545
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriods()V

    .line 546
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const-wide/16 v4, 0xa

    if-nez v3, :cond_0

    .line 548
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 549
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    return-void

    :cond_0
    const-string v3, "doSomeWork"

    .line 553
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 555
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 556
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-interface {v3, v6, v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(J)V

    .line 560
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    :goto_0
    if-ge v9, v6, :cond_6

    aget-object v12, v3, v9

    .line 564
    iget-wide v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    invoke-interface {v12, v13, v14, v7, v8}, Lcom/google/android/exoplayer2/Renderer;->render(JJ)V

    if-eqz v10, :cond_1

    .line 565
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 568
    :goto_1
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-nez v7, :cond_4

    .line 570
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    :cond_4
    if-eqz v11, :cond_5

    if-eqz v7, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    if-nez v11, :cond_7

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 580
    :cond_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v3, :cond_8

    .line 581
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v3

    .line 582
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 585
    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 586
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->synchronize(Lcom/google/android/exoplayer2/util/MediaClock;)V

    .line 587
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 588
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 592
    :cond_8
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v10, :cond_a

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v12

    if-eqz v10, :cond_9

    .line 593
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v12, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v10, v6, v12

    if-gtz v10, :cond_a

    :cond_9
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v10, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-boolean v10, v10, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isFinal:Z

    if-eqz v10, :cond_a

    .line 597
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 598
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_7

    .line 599
    :cond_a
    iget v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v10, v9, :cond_d

    .line 600
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v10, v10

    if-lez v10, :cond_c

    if-eqz v11, :cond_b

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    iget-wide v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 602
    invoke-virtual {v6, v7, v10, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->haveSufficientBuffer(ZJ)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v16, 0x1

    goto :goto_5

    :cond_b
    const/16 v16, 0x0

    goto :goto_5

    .line 603
    :cond_c
    invoke-direct {v0, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v7

    move/from16 v16, v7

    :goto_5
    if-eqz v16, :cond_f

    .line 605
    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 606
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v6, :cond_f

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_7

    .line 610
    :cond_d
    iget v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v10, v8, :cond_f

    .line 611
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v10, v10

    if-lez v10, :cond_e

    goto :goto_6

    .line 612
    :cond_e
    invoke-direct {v0, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v11

    :goto_6
    if-nez v11, :cond_f

    .line 614
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    iput-boolean v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 615
    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 616
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 620
    :cond_f
    :goto_7
    iget v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v6, v9, :cond_10

    .line 621
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v7, v6

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v7, :cond_10

    aget-object v10, v6, v15

    .line 622
    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 626
    :cond_10
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v6, :cond_11

    iget v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-eq v6, v8, :cond_12

    :cond_11
    iget v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v6, v9, :cond_13

    .line 627
    :cond_12
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_9

    .line 628
    :cond_13
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    if-eqz v4, :cond_14

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-eq v4, v3, :cond_14

    const-wide/16 v3, 0x3e8

    .line 629
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_9

    .line 631
    :cond_14
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 634
    :goto_9
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-void
.end method

.method private enableRenderers([ZI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1452
    new-array p2, p2, [Lcom/google/android/exoplayer2/Renderer;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1454
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 1455
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v2, v2, v0

    .line 1456
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1458
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    add-int/lit8 v12, v1, 0x1

    aput-object v2, v4, v1

    .line 1459
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v1

    if-nez v1, :cond_5

    .line 1460
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v4, v1, v0

    .line 1463
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1465
    :goto_1
    aget-boolean v6, p1, v0

    if-nez v6, :cond_1

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    .line 1467
    :goto_2
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/exoplayer2/Format;

    const/4 v6, 0x0

    .line 1468
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 1469
    invoke-interface {v3, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1472
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v6, v3, v0

    iget-wide v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1473
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v10

    move-object v3, v2

    .line 1472
    invoke-interface/range {v3 .. v11}, Lcom/google/android/exoplayer2/Renderer;->enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZJ)V

    .line 1474
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1476
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-nez v4, :cond_3

    .line 1480
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 1481
    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 1482
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_4

    .line 1477
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Multiple renderer media clocks enabled."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 1486
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->start()V

    :cond_5
    move v1, v12

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 854
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 855
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->stop()V

    :cond_0
    return-void
.end method

.method private getPeriodPosition(IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1238
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1396
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1377
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1381
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->handlePrepared()V

    .line 1382
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez p1, :cond_1

    .line 1384
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1385
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1386
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1388
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1136
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V

    return-void
.end method

.method private handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V
    .locals 4

    .line 1142
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    .line 1145
    new-instance p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 p1, 0x4

    .line 1146
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1148
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    return-void
.end method

.method private handleSourceInfoRefreshed(Landroid/util/Pair;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 973
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 974
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/Timeline;

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 975
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->setTimeline(Lcom/google/android/exoplayer2/Timeline;)V

    .line 976
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_6

    .line 979
    iget v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    const-wide/16 v7, 0x0

    if-lez v2, :cond_2

    .line 980
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v2

    .line 981
    iget v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 982
    iput v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 983
    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    if-nez v2, :cond_0

    .line 987
    invoke-direct {v0, v1, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 989
    :cond_0
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 990
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 991
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    .line 992
    invoke-virtual {v2, v3, v13, v14}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->resolvePeriodPositionForAds(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v10

    .line 993
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_1

    move-wide v11, v7

    goto :goto_0

    :cond_1
    move-wide v11, v13

    :goto_0
    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 994
    invoke-direct {v0, v1, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto :goto_2

    .line 996
    :cond_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    cmp-long v9, v2, v5

    if-nez v9, :cond_5

    .line 997
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 998
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;)V

    goto :goto_2

    .line 1000
    :cond_3
    invoke-direct {v0, v4, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v2

    .line 1001
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1002
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1003
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    invoke-virtual {v2, v3, v13, v14}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->resolvePeriodPositionForAds(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v10

    .line 1005
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_4

    move-wide v11, v7

    goto :goto_1

    :cond_4
    move-wide v11, v13

    :goto_1
    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1007
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;)V

    goto :goto_2

    .line 1010
    :cond_5
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 1015
    :cond_6
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v7, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    .line 1016
    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v8, :cond_7

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_3

    :cond_7
    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_3
    if-nez v8, :cond_8

    .line 1018
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v9

    if-lt v7, v9, :cond_8

    .line 1019
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;)V

    return-void

    :cond_8
    const/4 v9, 0x1

    if-nez v8, :cond_9

    .line 1022
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1023
    invoke-virtual {v2, v7, v10, v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    goto :goto_4

    :cond_9
    iget-object v10, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 1024
    :goto_4
    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v11, v10}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_d

    .line 1028
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v0, v7, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I

    move-result v2

    if-ne v2, v11, :cond_a

    .line 1031
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;)V

    return-void

    .line 1035
    :cond_a
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1036
    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1035
    invoke-direct {v0, v2, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v2

    .line 1037
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1038
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1039
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v3, v6, v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    if-eqz v8, :cond_c

    .line 1043
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1044
    iget-object v6, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v6

    iput-object v6, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 1045
    :goto_5
    iget-object v6, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v6, :cond_c

    .line 1046
    iget-object v8, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1047
    iget-object v6, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1048
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    iget-object v7, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    invoke-virtual {v6, v7, v3}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;I)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v6

    iput-object v6, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    goto :goto_5

    .line 1051
    :cond_b
    iget-object v6, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v6

    iput-object v6, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    goto :goto_5

    .line 1056
    :cond_c
    new-instance v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    .line 1057
    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v3

    .line 1058
    new-instance v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1059
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;)V

    return-void

    :cond_d
    if-eq v10, v7, :cond_e

    .line 1065
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1068
    :cond_e
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1070
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v12, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->contentPositionUs:J

    invoke-virtual {v2, v10, v12, v13}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->resolvePeriodPositionForAds(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v15

    .line 1072
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, v15, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v7, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq v2, v7, :cond_11

    .line 1073
    :cond_f
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->contentPositionUs:J

    invoke-direct {v0, v15, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v16

    .line 1074
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->contentPositionUs:J

    :cond_10
    move-wide/from16 v18, v5

    .line 1075
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object v14, v2

    invoke-direct/range {v14 .. v19}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1076
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;)V

    return-void

    :cond_11
    if-nez v8, :cond_12

    .line 1083
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;)V

    return-void

    .line 1089
    :cond_12
    invoke-direct {v0, v8, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriodInfo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;I)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-result-object v2

    .line 1090
    :goto_6
    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v5, :cond_16

    .line 1092
    iget-object v5, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1093
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    invoke-virtual {v6, v10, v7, v8, v12}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;I)I

    move-result v10

    if-eq v10, v11, :cond_13

    .line 1094
    iget-object v6, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1095
    invoke-virtual {v7, v10, v8, v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1097
    invoke-direct {v0, v5, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriodInfo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;I)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-result-object v2

    goto :goto_6

    .line 1100
    :cond_13
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v6, :cond_14

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget v7, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-ge v6, v7, :cond_14

    const/4 v4, 0x1

    :cond_14
    if-nez v4, :cond_15

    .line 1105
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 1106
    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v7

    .line 1107
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v6, v3, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v9, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->contentPositionUs:J

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    goto :goto_7

    .line 1112
    :cond_15
    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1113
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v3, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1115
    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1121
    :cond_16
    :goto_7
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;)V

    return-void
.end method

.method private isTimelineReady(J)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 953
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 956
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private maybeContinueLoading()V
    .locals 3

    .line 1400
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->shouldContinueLoading(J)Z

    move-result v0

    .line 1401
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->continueLoading(J)V

    :cond_0
    return-void
.end method

.method private maybeThrowPeriodPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 960
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v0, v1, :cond_3

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 963
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 967
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    :cond_3
    return-void
.end method

.method private maybeUpdateLoadingPeriod()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1339
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getFirstMediaPeriodInfo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    goto :goto_0

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isFinal:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 1346
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_2

    .line 1347
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    return-void

    .line 1353
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1354
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1353
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getNextMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 1357
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    .line 1361
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v1, :cond_4

    const-wide/32 v1, 0x3938700

    :goto_1
    move-wide v4, v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1363
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    add-long/2addr v1, v3

    goto :goto_1

    .line 1364
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v12, 0x1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    add-int/2addr v1, v12

    move v10, v1

    .line 1365
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v3, v12}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-object v9, v1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1366
    new-instance v13, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    move-object v1, v13

    move-object v11, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;-><init>([Lcom/google/android/exoplayer2/Renderer;[Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;)V

    .line 1368
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_6

    .line 1369
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v13, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1371
    :cond_6
    iput-object v13, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1372
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 1373
    invoke-direct {p0, v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    return-void

    :cond_7
    :goto_4
    return-void
.end method

.method private notifySourceInfoRefresh(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1152
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    return-void
.end method

.method private notifySourceInfoRefresh(Ljava/lang/Object;I)V
    .locals 4

    .line 1156
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1157
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private prepareInternal(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    .line 419
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 420
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/LoadControl;->onPrepared()V

    if-eqz p2, :cond_0

    .line 422
    new-instance p2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p2, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 424
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 425
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p2, v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    const/4 p1, 0x2

    .line 426
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 427
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private releaseInternal()V
    .locals 2

    const/4 v0, 0x1

    .line 794
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 795
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->onReleased()V

    .line 796
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 797
    monitor-enter p0

    .line 798
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    .line 799
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 800
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 0

    :goto_0
    if-eqz p1, :cond_0

    .line 1409
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1410
    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reselectTracksInternal()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-eqz v0, :cond_10

    .line 868
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v3, :cond_1

    goto/16 :goto_7

    .line 872
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->selectTracks()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 885
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v2, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 886
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 887
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v3, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 888
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 889
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 891
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v5

    new-array v5, v5, [Z

    .line 892
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-virtual {v6, v7, v8, v2, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ[Z)J

    move-result-wide v6

    .line 894
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v8, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v2, v6, v8

    if-eqz v2, :cond_3

    .line 895
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v6, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 896
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 900
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 901
    :goto_2
    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v8, v8

    if-ge v6, v8, :cond_a

    .line 902
    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v8, v8, v6

    .line 903
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    aput-boolean v9, v2, v6

    .line 904
    iget-object v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v9, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v9, v9, v6

    if-eqz v9, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 908
    :cond_5
    aget-boolean v10, v2, v6

    if-eqz v10, :cond_9

    .line 909
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v10

    if-eq v9, v10, :cond_8

    .line 911
    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne v8, v10, :cond_7

    if-nez v9, :cond_6

    .line 916
    iget-object v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->synchronize(Lcom/google/android/exoplayer2/util/MediaClock;)V

    .line 918
    :cond_6
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 919
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 921
    :cond_7
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 922
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    goto :goto_4

    .line 923
    :cond_8
    aget-boolean v9, v5, v6

    if-eqz v9, :cond_9

    .line 925
    iget-wide v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v8, v9, v10}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 929
    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 930
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 931
    invoke-direct {p0, v2, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    goto :goto_6

    .line 934
    :cond_b
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 935
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_5
    if-eqz v0, :cond_c

    .line 937
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 938
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_5

    .line 940
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 941
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_d

    .line 942
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 943
    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    .line 942
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 944
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v2, v0, v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ)J

    .line 947
    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 948
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 949
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 876
    :cond_e
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v0, v3, :cond_f

    const/4 v2, 0x0

    .line 880
    :cond_f
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto/16 :goto_0

    :cond_10
    :goto_7
    return-void
.end method

.method private resetInternal(Z)V
    .locals 8

    .line 804
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 805
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 806
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    const/4 v1, 0x0

    .line 807
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 808
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    const-wide/32 v2, 0x3938700

    .line 809
    iput-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 810
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 812
    :try_start_0
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 813
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->disable()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    .line 816
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 819
    :cond_0
    new-array v2, v0, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 820
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_2
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 822
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 823
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 824
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 825
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    if-eqz p1, :cond_3

    .line 827
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz p1, :cond_2

    .line 828
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 829
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 831
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->setTimeline(Lcom/google/android/exoplayer2/Timeline;)V

    .line 832
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    :cond_3
    return-void
.end method

.method private resetRendererPosition(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x3938700

    add-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 772
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 773
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 774
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 775
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1196
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1197
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1205
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v4, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v5, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-ne p1, v0, :cond_1

    return-object v1

    .line 1217
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1218
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1217
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 1221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1224
    :cond_2
    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 1227
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 1209
    :catch_0
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v0
.end method

.method private resolveSubsequentPeriod(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I
    .locals 7

    .line 1173
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, p1

    const/4 p1, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 1175
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    invoke-virtual {p2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_1

    .line 1180
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v4, 0x1

    .line 1181
    invoke-virtual {p2, v3, p1, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1180
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private scheduleNextWork(JJ)V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    add-long/2addr p1, p3

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    .line 642
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 644
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 649
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 650
    iget v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 651
    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    return-void

    .line 655
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-nez v2, :cond_1

    .line 659
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v0, v9, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 660
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v0, v8, v3, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 663
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v0, v9, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 664
    invoke-direct {v1, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 666
    invoke-direct {v1, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    return-void

    .line 670
    :cond_1
    iget-wide v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v0, v10, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 671
    :goto_0
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 672
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 674
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    .line 675
    invoke-virtual {v2, v4, v14, v15}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->resolvePeriodPositionForAds(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v11

    .line 676
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_3

    move-wide v12, v6

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v0

    move-wide v12, v14

    .line 681
    :goto_1
    :try_start_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v4, 0x3e8

    div-long v6, v12, v4

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    div-long/2addr v8, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v6, v8

    if-nez v0, :cond_4

    .line 690
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 691
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 686
    :cond_4
    :try_start_1
    invoke-direct {v1, v11, v12, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v12, v4

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    or-int/2addr v0, v2

    .line 690
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object v10, v2

    move-wide v12, v4

    invoke-direct/range {v10 .. v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 691
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception v0

    .line 690
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 691
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v6, v2, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 692
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    throw v0
.end method

.method private seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 698
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    const/4 v0, 0x0

    .line 699
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    const/4 v1, 0x2

    .line 700
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 703
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 705
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz p1, :cond_0

    .line 706
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    :cond_0
    move-object v4, v3

    goto :goto_2

    .line 710
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 712
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldKeepPeriodHolder(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v2

    goto :goto_1

    .line 715
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 717
    :goto_1
    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    .line 723
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne p1, v4, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq p1, v2, :cond_6

    .line 725
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, p1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_5

    aget-object v6, p1, v5

    .line 726
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 728
    :cond_5
    new-array p1, v0, [Lcom/google/android/exoplayer2/Renderer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 729
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 730
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 731
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :cond_6
    if-eqz v4, :cond_8

    .line 736
    iput-object v3, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 737
    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 738
    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 739
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 740
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz p1, :cond_7

    .line 741
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    .line 743
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 744
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_4

    .line 746
    :cond_8
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 747
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 748
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 749
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 752
    :goto_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private sendMessagesInternal([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 838
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 839
    iget-object v3, v2, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;

    iget v4, v2, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;->handleMessage(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne p1, v1, :cond_2

    .line 843
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 846
    :cond_2
    monitor-enter p0

    .line 847
    :try_start_1
    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 848
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 849
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 846
    monitor-enter p0

    .line 847
    :try_start_2
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 848
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 849
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method private setIsLoading(Z)V
    .locals 3

    .line 411
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    if-eq v0, p1, :cond_0

    .line 412
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private setPlayWhenReadyInternal(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 432
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-nez p1, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 435
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    goto :goto_0

    .line 437
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 438
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    .line 439
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 440
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne p1, v1, :cond_2

    .line 441
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 781
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 782
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    .line 783
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 784
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1415
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v0, p1, :cond_0

    return-void

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1421
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    if-ge v2, v4, :cond_6

    .line 1422
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v2

    .line 1423
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v0, v2

    .line 1424
    iget-object v5, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v5, v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 1428
    :cond_2
    aget-boolean v6, v0, v2

    if-eqz v6, :cond_5

    if-eqz v5, :cond_3

    .line 1429
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1430
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v6, v6, v2

    if-ne v5, v6, :cond_5

    .line 1434
    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne v4, v5, :cond_4

    .line 1436
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->synchronize(Lcom/google/android/exoplayer2/util/MediaClock;)V

    const/4 v5, 0x0

    .line 1437
    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 1438
    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 1440
    :cond_4
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1441
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1445
    :cond_6
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1446
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1447
    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    return-void
.end method

.method private setRepeatModeInternal(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 448
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->setRepeatMode(I)V

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 458
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;I)I

    move-result v1

    .line 460
    :goto_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v2, :cond_2

    .line 462
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 464
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-eq v3, v1, :cond_3

    goto :goto_3

    .line 468
    :cond_3
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_1

    .line 472
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 473
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    goto :goto_4

    :cond_5
    const/4 v1, -0x1

    .line 475
    :goto_4
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_6

    .line 476
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    const/4 v3, 0x0

    .line 477
    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 481
    :cond_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 482
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 485
    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt p1, v3, :cond_7

    const/4 p1, 0x1

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    :goto_5
    if-nez p1, :cond_8

    .line 487
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :cond_8
    if-eq v1, v2, :cond_9

    .line 489
    iget p1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-gt v1, p1, :cond_9

    const/4 v4, 0x1

    :cond_9
    if-nez v4, :cond_a

    .line 491
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz p1, :cond_a

    .line 494
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 495
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v2

    .line 496
    new-instance p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->contentPositionUs:J

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    :cond_a
    return-void
.end method

.method private setState(I)V
    .locals 3

    .line 404
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-eq v0, p1, :cond_0

    .line 405
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private shouldKeepPeriodHolder(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Z
    .locals 2

    .line 758
    iget-object v0, p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz p1, :cond_1

    .line 759
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 760
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 761
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 762
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide p1

    iget-object p3, p4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide p3, p3, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->endPositionUs:J

    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private startRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 502
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    .line 503
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 504
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopInternal()V
    .locals 2

    const/4 v0, 0x1

    .line 788
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 789
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->onStopped()V

    .line 790
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    return-void
.end method

.method private stopRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 511
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePeriodInfo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;I)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .locals 2

    .line 1126
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaPeriodInfoSequence:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;

    iget-object v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 1127
    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;I)Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    .line 1128
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1131
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method private updatePeriods()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    .line 1249
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()V

    .line 1250
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1252
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    if-nez v0, :cond_3

    .line 1253
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_1

    .line 1251
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1256
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_4

    return-void

    .line 1262
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v0, v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    .line 1266
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1267
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1268
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->startPositionUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->contentPositionUs:J

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1270
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1271
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 1274
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->isFinal:Z

    if-eqz v0, :cond_8

    .line 1275
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 1276
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v0, v0, v1

    .line 1277
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 1280
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v3

    if-ne v3, v2, :cond_6

    .line 1281
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1282
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    const/4 v0, 0x0

    .line 1288
    :goto_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 1289
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v2, v2, v0

    .line 1290
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v3, v3, v0

    .line 1291
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    if-ne v4, v3, :cond_a

    if-eqz v3, :cond_9

    .line 1292
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    return-void

    .line 1297
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_12

    .line 1298
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1299
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1300
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1302
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1303
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x0

    .line 1304
    :goto_7
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v5

    if-ge v4, v5, :cond_12

    .line 1305
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v5, v5, v4

    .line 1306
    iget-object v6, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v6

    if-nez v6, :cond_d

    goto :goto_9

    :cond_d
    if-eqz v3, :cond_e

    .line 1312
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    goto :goto_9

    .line 1313
    :cond_e
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v6

    if-nez v6, :cond_11

    .line 1314
    iget-object v6, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v6

    .line 1315
    iget-object v7, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v7, v7, v4

    .line 1316
    iget-object v8, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v8, v8, v4

    if-eqz v6, :cond_10

    .line 1317
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1320
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/exoplayer2/Format;

    const/4 v8, 0x0

    .line 1321
    :goto_8
    array-length v9, v7

    if-ge v8, v9, :cond_f

    .line 1322
    invoke-interface {v6, v8}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1324
    :cond_f
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v6, v6, v4

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1325
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v8

    .line 1324
    invoke-interface {v5, v7, v6, v8, v9}, Lcom/google/android/exoplayer2/Renderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;J)V

    goto :goto_9

    .line 1330
    :cond_10
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    :cond_11
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_12
    return-void
.end method

.method private updatePlaybackPositions()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 523
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    goto :goto_1

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    goto :goto_0

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 531
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    .line 533
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v0, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    .line 537
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_3

    move-wide v3, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 538
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v3

    .line 539
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/MediaPeriodInfoSequence$MediaPeriodInfo;->durationUs:J

    :cond_4
    iput-wide v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    return-void
.end method


# virtual methods
.method public varargs declared-synchronized blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 3

    monitor-enter p0

    .line 260
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 261
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 264
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 265
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 266
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v0, :cond_1

    .line 268
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 270
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 273
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 259
    monitor-exit p0

    throw p1
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 326
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    return v3

    .line 336
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    return v1

    .line 376
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    check-cast p1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessagesInternal([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return v1

    .line 372
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    return v1

    .line 368
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return v1

    .line 360
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return v1

    .line 364
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshed(Landroid/util/Pair;)V

    return v1

    .line 356
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseInternal()V

    return v1

    .line 352
    :pswitch_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    return v1

    .line 348
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return v1

    .line 344
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V

    return v1

    .line 340
    :pswitch_a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->doSomeWork()V

    return v1

    .line 332
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    return v1

    .line 328
    :pswitch_c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->prepareInternal(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    .line 393
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 395
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 396
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    return v1

    :catch_1
    move-exception p1

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Source error."

    .line 388
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 390
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    return v1

    :catch_2
    move-exception p1

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Renderer error."

    .line 383
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 385
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 276
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 277
    monitor-exit p0

    return-void

    .line 279
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 282
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 284
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 275
    monitor-exit p0

    throw v0
.end method

.method public seekTo(Lcom/google/android/exoplayer2/Timeline;IJ)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public varargs sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 2

    .line 251
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 252
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 255
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
