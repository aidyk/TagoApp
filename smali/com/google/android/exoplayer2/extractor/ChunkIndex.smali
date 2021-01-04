.class public final Lcom/google/android/exoplayer2/extractor/ChunkIndex;
.super Ljava/lang/Object;
.source "ChunkIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# instance fields
.field private final durationUs:J

.field public final durationsUs:[J

.field public final length:I

.field public final offsets:[J

.field public final sizes:[I

.field public final timesUs:[J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->sizes:[I

    .line 60
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    .line 61
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->durationsUs:[J

    .line 62
    iput-object p4, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    .line 63
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    .line 64
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    if-lez p1, :cond_0

    .line 65
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p3, p1

    iget p3, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 p3, p3, -0x1

    aget-wide p3, p4, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->durationUs:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 67
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->durationUs:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getChunkIndex(J)I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    return p1
.end method

.method public getDurationUs()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
