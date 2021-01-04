.class public final Lcom/google/android/exoplayer2/source/MergingMediaSource;
.super Ljava/lang/Object;
.source "MergingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    }
.end annotation


# static fields
.field private static final PERIOD_COUNT_UNSET:I = -0x1


# instance fields
.field private listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

.field private mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

.field private final pendingTimelineSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private primaryManifest:Ljava/lang/Object;

.field private primaryTimeline:Lcom/google/android/exoplayer2/Timeline;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    .line 90
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 p1, -0x1

    .line 91
    iput p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/MergingMediaSource;ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->handleSourceInfoRefreshed(ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method private checkTimelineMerges(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    .locals 4

    .line 160
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 162
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v3, :cond_0

    .line 163
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 167
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    if-eq p1, v0, :cond_3

    .line 169
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleSourceInfoRefreshed(ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->checkTimelineMerges(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_1

    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p1, :cond_2

    .line 151
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->primaryTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 152
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->primaryManifest:Ljava/lang/Object;

    .line 154
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 155
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->primaryTimeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->primaryManifest:Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    const/4 v1, 0x0

    .line 121
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v2, v2, v1

    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;-><init>([Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 114
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    throw v0
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 2

    .line 96
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v0, v0

    if-ge p3, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v0, v0, p3

    new-instance v1, Lcom/google/android/exoplayer2/source/MergingMediaSource$1;

    invoke-direct {v1, p0, p3}, Lcom/google/android/exoplayer2/source/MergingMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/MergingMediaSource;I)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 3

    .line 129
    check-cast p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public releaseSource()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 138
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
