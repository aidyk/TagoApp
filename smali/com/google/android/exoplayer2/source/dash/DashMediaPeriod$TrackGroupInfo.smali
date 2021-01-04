.class final Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackGroupInfo"
.end annotation


# instance fields
.field public final adaptationSetIndices:[I

.field public final hasEmbeddedCea608Track:Z

.field public final hasEmbeddedEventMessageTrack:Z

.field public final isPrimary:Z

.field public final primaryTrackGroupIndex:I

.field public final trackType:I


# direct methods
.method public constructor <init>(I[IIZZZ)V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 418
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    .line 419
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    .line 420
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->isPrimary:Z

    .line 421
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->hasEmbeddedEventMessageTrack:Z

    .line 422
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->hasEmbeddedCea608Track:Z

    return-void
.end method
