.class public final Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/Ac3Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ac3SyncFrameInfo"
.end annotation


# instance fields
.field public final channelCount:I

.field public final frameSize:I

.field public final mimeType:Ljava/lang/String;

.field public final sampleCount:I

.field public final sampleRate:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->mimeType:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->channelCount:I

    .line 62
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->sampleRate:I

    .line 63
    iput p4, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->frameSize:I

    .line 64
    iput p5, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->sampleCount:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILcom/google/android/exoplayer2/audio/Ac3Util$1;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method
