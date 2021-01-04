.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public firstPeriodIndexInChild:I

.field public firstWindowIndexInChild:I

.field public isPrepared:Z

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field public timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;IILjava/lang/Object;)V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 376
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 377
    iput p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 378
    iput p4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 379
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;)I
    .locals 1

    .line 384
    iget v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    iget p1, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 363
    check-cast p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->compareTo(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;)I

    move-result p1

    return p1
.end method
