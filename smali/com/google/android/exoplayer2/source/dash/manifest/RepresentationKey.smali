.class public final Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;
.super Ljava/lang/Object;
.source "RepresentationKey.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final adaptationSetIndex:I

.field public final periodIndex:I

.field public final representationIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    .line 33
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    .line 34
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->representationIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;)I
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    iget v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 75
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    iget v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 77
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->representationIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->representationIndex:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->compareTo(Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->representationIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 51
    iget p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->representationIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
