.class public final Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# instance fields
.field public final factory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field public final groupIndex:I

.field public final length:I

.field public final tracks:[I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;I[I)V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->factory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 307
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->groupIndex:I

    .line 308
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    .line 309
    array-length p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->length:I

    return-void
.end method


# virtual methods
.method public containsTrack(I)Z
    .locals 5

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->factory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->groupIndex:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object p1

    return-object p1
.end method
