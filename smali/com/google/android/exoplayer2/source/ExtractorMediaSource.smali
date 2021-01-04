.class public final Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;
.implements Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE:I = 0x6

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_ON_DEMAND:I = 0x3

.field public static final MIN_RETRY_COUNT_DEFAULT_FOR_MEDIA:I = -0x1


# instance fields
.field private final continueLoadingCheckIntervalBytes:I

.field private final customCacheKey:Ljava/lang/String;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

.field private final extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private final minLoadableRetryCount:I

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private timelineDurationUs:J

.field private timelineIsSeekable:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;I)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->uri:Landroid/net/Uri;

    .line 145
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 146
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 147
    iput p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->minLoadableRetryCount:I

    .line 148
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->eventHandler:Landroid/os/Handler;

    .line 149
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    .line 150
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->customCacheKey:Ljava/lang/String;

    .line 151
    iput p8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->continueLoadingCheckIntervalBytes:I

    .line 152
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 106
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;)V
    .locals 9

    const/4 v4, -0x1

    const/high16 v8, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 123
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;I)V

    return-void
.end method

.method private notifySourceInfoRefreshed(JZ)V
    .locals 2

    .line 201
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    .line 202
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineIsSeekable:Z

    .line 203
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    new-instance p2, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    iget-boolean p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineIsSeekable:Z

    invoke-direct {p2, v0, v1, p3}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 11

    .line 168
    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 169
    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 170
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v3

    iget v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->minLoadableRetryCount:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->eventHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->customCacheKey:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->continueLoadingCheckIntervalBytes:I

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/Extractor;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onSourceInfoRefreshed(JZ)V
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 189
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    .line 190
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineIsSeekable:Z

    if-eq v2, p3, :cond_2

    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    cmp-long v2, p1, v0

    if-nez v2, :cond_3

    :cond_2
    return-void

    .line 195
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->notifySourceInfoRefreshed(JZ)V

    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 0

    .line 157
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p3, 0x0

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->notifySourceInfoRefreshed(JZ)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 176
    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->release()V

    return-void
.end method

.method public releaseSource()V
    .locals 1

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    return-void
.end method
