.class final Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackParametersCheckpoint"
.end annotation


# instance fields
.field private final mediaTimeUs:J

.field private final playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private final positionUs:J


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJ)V
    .locals 0

    .line 1722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1723
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1724
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->mediaTimeUs:J

    .line 1725
    iput-wide p4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->positionUs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJLcom/google/android/exoplayer2/audio/AudioTrack$1;)V
    .locals 0

    .line 1715
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 0

    .line 1715
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)J
    .locals 2

    .line 1715
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->positionUs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)J
    .locals 2

    .line 1715
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->mediaTimeUs:J

    return-wide v0
.end method
