.class public final Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;
    }
.end annotation


# static fields
.field private static final CHOREOGRAPHER_SAMPLE_DELAY_MILLIS:J = 0x1f4L

.field private static final DISPLAY_REFRESH_RATE_UNKNOWN:D = -1.0

.field private static final MAX_ALLOWED_DRIFT_NS:J = 0x1312d00L

.field private static final MIN_FRAMES_FOR_ADJUSTMENT:I = 0x6

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L


# instance fields
.field private adjustedLastFrameTimeNs:J

.field private frameCount:J

.field private haveSync:Z

.field private lastFramePresentationTimeUs:J

.field private pendingAdjustedFrameTimeNs:J

.field private syncFramePresentationTimeNs:J

.field private syncUnadjustedReleaseTimeNs:J

.field private final useDefaultDisplayVsync:Z

.field private final vsyncDurationNs:J

.field private final vsyncOffsetNs:J

.field private final vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 60
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(D)V

    return-void
.end method

.method private constructor <init>(D)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    .line 75
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->getInstance()Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, p1

    double-to-long p1, v0

    .line 77
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 78
    iget-wide p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide/16 v0, 0x50

    mul-long p1, p1, v0

    const-wide/16 v0, 0x64

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    const-wide/16 p1, -0x1

    .line 81
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 82
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->getDefaultDisplayRefreshRate(Landroid/content/Context;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(D)V

    return-void
.end method

.method private static closestVsync(JJJ)J
    .locals 5

    sub-long v0, p0, p2

    .line 187
    div-long/2addr v0, p4

    mul-long v0, v0, p4

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    sub-long p4, p2, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    add-long/2addr p4, p2

    move-wide v3, p2

    move-wide p2, p4

    move-wide p4, v3

    :goto_0
    const/4 v0, 0x0

    sub-long v0, p2, p0

    sub-long/2addr p0, p4

    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move-wide p2, p4

    :goto_1
    return-wide p2
.end method

.method private static getDefaultDisplayRefreshRate(Landroid/content/Context;)D
    .locals 2

    const-string/jumbo v0, "window"

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 205
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    float-to-double v0, p0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0
.end method

.method private isDriftTooLarge(JJ)Z
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long/2addr p1, v0

    .line 182
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    sub-long/2addr p3, v0

    sub-long/2addr p3, p1

    .line 183
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 p3, 0x1312d00

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, v1

    .line 121
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-eqz v7, :cond_3

    .line 123
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 124
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    .line 125
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    iput-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    .line 127
    :cond_0
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v9, 0x6

    const/4 v11, 0x0

    cmp-long v12, v7, v9

    if-ltz v12, :cond_2

    .line 132
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v7, v5, v7

    iget-wide v9, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    div-long/2addr v7, v9

    .line 135
    iget-wide v9, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    add-long/2addr v9, v7

    .line 137
    invoke-direct {v0, v9, v10, v3, v4}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    move-wide v7, v3

    move-wide v9, v5

    goto :goto_0

    .line 141
    :cond_1
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    add-long/2addr v7, v9

    iget-wide v11, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long/2addr v7, v11

    :goto_0
    move-wide v11, v7

    goto :goto_1

    .line 147
    :cond_2
    invoke-direct {v0, v5, v6, v3, v4}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 148
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    :cond_3
    move-wide v11, v3

    move-wide v9, v5

    .line 154
    :goto_1
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    const-wide/16 v13, 0x0

    if-nez v7, :cond_4

    .line 155
    iput-wide v5, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    .line 156
    iput-wide v3, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    .line 157
    iput-wide v13, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    const/4 v3, 0x1

    .line 158
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->onSynced()V

    .line 162
    :cond_4
    iput-wide v1, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    .line 163
    iput-wide v9, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    .line 165
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    cmp-long v3, v1, v13

    if-nez v3, :cond_5

    goto :goto_2

    .line 170
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    iget-wide v13, v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    iget-wide v1, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    move-wide v15, v1

    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->closestVsync(JJJ)J

    move-result-wide v1

    .line 173
    iget-wide v3, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    sub-long/2addr v1, v3

    return-wide v1

    :cond_6
    :goto_2
    return-wide v11
.end method

.method public disable()V
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->removeObserver()V

    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 91
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->addObserver()V

    :cond_0
    return-void
.end method

.method protected onSynced()V
    .locals 0

    return-void
.end method
