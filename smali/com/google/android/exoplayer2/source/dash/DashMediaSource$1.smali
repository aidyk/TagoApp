.class Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->access$100(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    return-void
.end method
