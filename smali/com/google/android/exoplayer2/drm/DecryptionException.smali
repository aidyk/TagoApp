.class public Lcom/google/android/exoplayer2/drm/DecryptionException;
.super Ljava/lang/Exception;
.source "DecryptionException.java"


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DecryptionException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DecryptionException;->errorCode:I

    return v0
.end method
