.class final Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;
.implements Lcom/google/android/exoplayer2/text/TextRenderer$Output;
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$1;)V
    .locals 0

    .line 844
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V

    return-void
.end method


# virtual methods
.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$100(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$100(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->onCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    .line 888
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$500(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Z)V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$300(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$300(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 876
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$400(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    .line 861
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {p3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$200(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p3

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 863
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$200(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_1
    return-void
.end method
