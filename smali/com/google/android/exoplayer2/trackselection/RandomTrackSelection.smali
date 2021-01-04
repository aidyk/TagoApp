.class public final Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "RandomTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final random:Ljava/util/Random;

.field private selectedIndex:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 64
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    .line 65
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IJ)V
    .locals 1

    .line 75
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p3, p4}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILjava/util/Random;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 86
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    .line 87
    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    invoke-virtual {p3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public updateSelectedTrack(J)V
    .locals 4

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-ge v1, v3, :cond_1

    .line 96
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->isBlacklisted(IJ)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 102
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-eq v2, v1, :cond_4

    const/4 v1, 0x0

    .line 105
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-ge v0, v2, :cond_4

    .line 106
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    add-int/lit8 v3, v1, 0x1

    if-ne v2, v1, :cond_2

    .line 107
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return-void

    :cond_2
    move v1, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
