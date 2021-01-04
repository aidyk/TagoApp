.class public final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;

.field private final eventSourceId:I

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private final minLoadableRetryCount:I

.field private final timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;J)V
    .locals 7

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JI)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    .line 69
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JILandroid/os/Handler;Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JILandroid/os/Handler;Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;I)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->uri:Landroid/net/Uri;

    .line 76
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 77
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplayer2/Format;

    .line 78
    iput p6, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->minLoadableRetryCount:I

    .line 79
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->eventHandler:Landroid/os/Handler;

    .line 80
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;

    .line 81
    iput p9, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->eventSourceId:I

    .line 82
    new-instance p1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const/4 p2, 0x1

    invoke-direct {p1, p4, p5, p2}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 8

    .line 99
    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 100
    new-instance p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->minLoadableRetryCount:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->eventHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;

    iget v7, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->eventSourceId:I

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;I)V

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

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 106
    check-cast p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->release()V

    return-void
.end method

.method public releaseSource()V
    .locals 0

    return-void
.end method
