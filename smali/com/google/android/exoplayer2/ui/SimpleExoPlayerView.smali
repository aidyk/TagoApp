.class public final Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
.super Landroid/widget/FrameLayout;
.source "SimpleExoPlayerView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;
    }
.end annotation


# static fields
.field private static final SURFACE_TYPE_NONE:I = 0x0

.field private static final SURFACE_TYPE_SURFACE_VIEW:I = 0x1

.field private static final SURFACE_TYPE_TEXTURE_VIEW:I = 0x2


# instance fields
.field private final artworkView:Landroid/widget/ImageView;

.field private final componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

.field private final contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private final controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

.field private controllerAutoShow:Z

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private defaultArtwork:Landroid/graphics/Bitmap;

.field private final overlayFrameLayout:Landroid/widget/FrameLayout;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private final shutterView:Landroid/view/View;

.field private final subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private final surfaceView:Landroid/view/View;

.field private useArtwork:Z

.field private useController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 231
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 233
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->isInEditMode()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 234
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 235
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    .line 236
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    .line 237
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    .line 238
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 239
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .line 240
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    .line 241
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 242
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 243
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 248
    :goto_0
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->addView(Landroid/view/View;)V

    return-void

    .line 252
    :cond_1
    sget p3, Lcom/google/android/exoplayer2/ui/R$layout;->exo_simple_player_view:I

    const/16 v1, 0x1388

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView:[I

    invoke-virtual {v4, p2, v5, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 265
    :try_start_0
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_player_layout_id:I

    invoke-virtual {v4, v5, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 267
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_use_artwork:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 268
    sget v6, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_default_artwork:I

    invoke-virtual {v4, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 270
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_use_controller:I

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 271
    sget v8, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_surface_type:I

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 272
    sget v9, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_resize_mode:I

    invoke-virtual {v4, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 273
    sget v10, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_show_timeout:I

    invoke-virtual {v4, v10, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 275
    sget v10, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_hide_on_touch:I

    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 277
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_auto_show:I

    invoke-virtual {v4, v11, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 284
    :goto_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 285
    new-instance p3, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-direct {p3, p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$1;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    const/high16 p3, 0x40000

    .line 286
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setDescendantFocusability(I)V

    .line 289
    sget p3, Lcom/google/android/exoplayer2/ui/R$id;->exo_content_frame:I

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 290
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz p3, :cond_3

    .line 291
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {p3, v9}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V

    .line 295
    :cond_3
    sget p3, Lcom/google/android/exoplayer2/ui/R$id;->exo_shutter:I

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    .line 298
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz p3, :cond_5

    if-eqz v8, :cond_5

    .line 299
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {p3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v4, 0x2

    if-ne v8, v4, :cond_4

    .line 301
    new-instance v4, Landroid/view/TextureView;

    invoke-direct {v4, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    new-instance v4, Landroid/view/SurfaceView;

    invoke-direct {v4, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    :goto_2
    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    .line 303
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v4, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {p3, v4, v3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_3

    .line 306
    :cond_5
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    .line 310
    :goto_3
    sget p3, Lcom/google/android/exoplayer2/ui/R$id;->exo_overlay:I

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 313
    sget p3, Lcom/google/android/exoplayer2/ui/R$id;->exo_artwork:I

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v5, :cond_6

    .line 314
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz p3, :cond_6

    const/4 p3, 0x1

    goto :goto_4

    :cond_6
    const/4 p3, 0x0

    :goto_4
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useArtwork:Z

    if-eqz v6, :cond_7

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->defaultArtwork:Landroid/graphics/Bitmap;

    .line 320
    :cond_7
    sget p3, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitles:I

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 321
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz p3, :cond_8

    .line 322
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    .line 323
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 327
    :cond_8
    sget p3, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .line 328
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller_placeholder:I

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz p3, :cond_9

    .line 330
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_a

    .line 334
    new-instance p3, Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-direct {p3, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .line 335
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 337
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    .line 338
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_5

    .line 341
    :cond_a
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .line 343
    :goto_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    iput v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerShowTimeoutMs:I

    .line 344
    iput-boolean v10, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerHideOnTouch:Z

    .line 345
    iput-boolean v11, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerAutoShow:Z

    if-eqz v7, :cond_c

    .line 346
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    .line 347
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideController()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->updateForCurrentTrackSelections()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Z)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    return-void
.end method

.method private static configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 1

    .line 834
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 835
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private static configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 828
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 829
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private hideArtwork()V
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 822
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private maybeShowController(Z)V
    .locals 2

    .line 727
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 729
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 731
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->showController(Z)V

    :cond_2
    return-void
.end method

.method private setArtworkFromBitmap(Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 805
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 806
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 808
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_0

    .line 809
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 811
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 812
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 792
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 793
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 794
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v3, :cond_0

    .line 795
    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    iget-object p1, v2, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 796
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 797
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setArtworkFromBitmap(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .locals 0

    .line 841
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method private shouldShowControllerIndefinitely()Z
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    .line 741
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 742
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private showController(Z)V
    .locals 1

    .line 746
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerShowTimeoutMs:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setShowTimeoutMs(I)V

    .line 750
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->show()V

    return-void
.end method

.method public static switchTargetView(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V
    .locals 0
    .param p0    # Lcom/google/android/exoplayer2/SimpleExoPlayer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 367
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    .line 370
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    :cond_2
    return-void
.end method

.method private updateForCurrentTrackSelections()V
    .locals 6

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 758
    :goto_0
    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v2, v3, :cond_2

    .line 759
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 762
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideArtwork()V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 767
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 768
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 771
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useArtwork:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    .line 772
    :goto_1
    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v2, v3, :cond_6

    .line 773
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    .line 775
    :goto_2
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 776
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v5, :cond_4

    .line 777
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 783
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->defaultArtwork:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setArtworkFromBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 788
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideArtwork()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    .line 511
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    .line 512
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getControllerAutoShow()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    .line 555
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/Bitmap;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->defaultArtwork:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useArtwork:Z

    return v0
.end method

.method public getUseController()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public hideController()V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 703
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 706
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 707
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    goto :goto_0

    .line 708
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerHideOnTouch:Z

    if-eqz p1, :cond_2

    .line 709
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 716
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 719
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;)V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setControlDispatcher(Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    .line 604
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerAutoShow:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 584
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerHideOnTouch:Z

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 567
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerShowTimeoutMs:I

    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;)V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 614
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;)V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->defaultArtwork:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 477
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->defaultArtwork:Landroid/graphics/Bitmap;

    .line 478
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->updateForCurrentTrackSelections()V

    :cond_0
    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setFastForwardIncrementMs(I)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-ne v0, p1, :cond_0

    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearTextOutput(Lcom/google/android/exoplayer2/text/TextRenderer$Output;)V

    .line 401
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V

    .line 402
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 408
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 409
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz p1, :cond_7

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_5

    .line 417
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_1

    .line 418
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_6

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 421
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setTextOutput(Lcom/google/android/exoplayer2/text/TextRenderer$Output;)V

    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 424
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    .line 425
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->updateForCurrentTrackSelections()V

    goto :goto_2

    .line 427
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideController()V

    .line 428
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideArtwork()V

    :goto_2
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 657
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 636
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setRewindIncrementMs(I)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 667
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 456
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useArtwork:Z

    if-eq v0, p1, :cond_2

    .line 457
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useArtwork:Z

    .line 458
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->updateForCurrentTrackSelections()V

    :cond_2
    return-void
.end method

.method public setUseController(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 497
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 500
    :cond_2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz p1, :cond_3

    .line 502
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_2

    .line 503
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz p1, :cond_4

    .line 504
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    .line 505
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public showController()V
    .locals 1

    .line 534
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shouldShowControllerIndefinitely()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->showController(Z)V

    return-void
.end method
