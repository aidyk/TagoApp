.class public final Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
.super Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
.source "SubtitleInputBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field public subsampleOffsetUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)I
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    check-cast p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->compareTo(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)I

    move-result p1

    return p1
.end method
