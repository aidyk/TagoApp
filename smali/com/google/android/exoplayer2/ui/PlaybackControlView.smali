.class public Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.super Landroid/widget/FrameLayout;
.source "PlaybackControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

.field public static final DEFAULT_FAST_FORWARD_MS:I = 0x3a98

.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_REWIND_MS:I = 0x1388

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field private static final MAX_POSITION_FOR_SEEK_TO_PREVIOUS:J = 0xbb8L

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64


# instance fields
.field private adGroupTimesMs:[J

.field private final componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

.field private controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

.field private final durationView:Landroid/widget/TextView;

.field private final fastForwardButton:Landroid/view/View;

.field private fastForwardMs:I

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private final hideAction:Ljava/lang/Runnable;

.field private hideAtMs:J

.field private isAttachedToWindow:Z

.field private multiWindowTimeBar:Z

.field private final nextButton:Landroid/view/View;

.field private final pauseButton:Landroid/view/View;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final playButton:Landroid/view/View;

.field private playedAdGroups:[Z

.field private player:Lcom/google/android/exoplayer2/Player;

.field private final positionView:Landroid/widget/TextView;

.field private final previousButton:Landroid/view/View;

.field private final repeatAllButtonContentDescription:Ljava/lang/String;

.field private final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOffButtonContentDescription:Ljava/lang/String;

.field private final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOneButtonContentDescription:Ljava/lang/String;

.field private final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatToggleButton:Landroid/widget/ImageView;

.field private repeatToggleModes:I

.field private final rewindButton:Landroid/view/View;

.field private rewindMs:I

.field private scrubbing:Z

.field private showMultiWindowTimeBar:Z

.field private showTimeoutMs:I

.field private final timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.ui"

    .line 169
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 339
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 316
    new-instance p3, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 323
    new-instance p3, Lcom/google/android/exoplayer2/ui/PlaybackControlView$3;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$3;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    .line 341
    sget p3, Lcom/google/android/exoplayer2/ui/R$layout;->exo_playback_control_view:I

    const/16 v0, 0x1388

    .line 342
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    const/16 v1, 0x3a98

    .line 343
    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 344
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    const/4 v0, 0x0

    .line 345
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    if-eqz p2, :cond_0

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 350
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_rewind_increment:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 351
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_fastforward_increment:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 353
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_show_timeout:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    .line 354
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_controller_layout_id:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 356
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    invoke-static {p2, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getRepeatToggleModes(Landroid/content/res/TypedArray;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    .line 361
    :cond_0
    :goto_0
    new-instance p2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 362
    new-instance p2, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 363
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 364
    new-instance p2, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    .line 365
    new-array p2, v0, [J

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    .line 366
    new-array p2, v0, [Z

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    .line 367
    new-instance p2, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    .line 368
    sget-object p2, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    .line 370
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    .line 371
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setDescendantFocusability(I)V

    .line 373
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->durationView:Landroid/widget/TextView;

    .line 374
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    .line 375
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/ui/TimeBar;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    .line 376
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz p2, :cond_1

    .line 377
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {p2, p3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    .line 379
    :cond_1
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_play:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    .line 380
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 381
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    :cond_2
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_pause:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    .line 384
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 385
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    :cond_3
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    .line 388
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 389
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    :cond_4
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    .line 392
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 393
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    :cond_5
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    .line 396
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 397
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    :cond_6
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    .line 400
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 401
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    :cond_7
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    .line 404
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz p2, :cond_8

    .line 405
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 408
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 409
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_one:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 410
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_all:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 411
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_off_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 413
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_one_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    .line 415
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_all_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updatePlayPauseButton()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateRepeatModeButton()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateTimeBarMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->next()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previous()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForward()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/Runnable;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewind()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)I
    .locals 0

    .line 166
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->scrubbing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/StringBuilder;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/util/Formatter;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/Player;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)V
    .locals 0

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekToTimeBarPosition(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAfterTimeout()V

    return-void
.end method

.method private static canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;)Z
    .locals 8

    .line 1006
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    return v1

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1011
    invoke-virtual {p0, v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private fastForward()V
    .locals 7

    .line 869
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    if-gtz v0, :cond_0

    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    .line 873
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v2

    iget v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 875
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 877
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    return-void
.end method

.method private static getRepeatToggleModes(Landroid/content/res/TypedArray;I)I
    .locals 1

    .line 422
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private hideAfterTimeout()V
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 601
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    if-lez v0, :cond_0

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    .line 603
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 607
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    :cond_1
    :goto_0
    return-void
.end method

.method private static isHandledMediaKey(I)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private next()V
    .locals 6

    .line 848
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v1

    .line 853
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(II)I

    move-result v2

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v3, :cond_1

    .line 855
    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    goto :goto_0

    .line 856
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_2

    .line 857
    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private previous()V
    .locals 6

    .line 831
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 832
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 835
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v1

    .line 836
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 837
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 838
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 839
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v1, :cond_2

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 841
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 843
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    :goto_0
    return-void
.end method

.method private requestPlayPauseFocus()V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 805
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 806
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_1
    return-void
.end method

.method private rewind()V
    .locals 4

    .line 862
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    if-gtz v0, :cond_0

    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    return-void
.end method

.method private seekTo(IJ)V
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    :cond_0
    return-void
.end method

.method private seekTo(J)V
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    return-void
.end method

.method private seekToTimeBarPosition(J)V
    .locals 6

    .line 895
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 896
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 897
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    const/4 v2, 0x0

    .line 900
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    move-wide p1, v3

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    sub-long/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 912
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v2

    .line 914
    :goto_1
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    return-void
.end method

.method private setButtonEnabled(ZLandroid/view/View;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 816
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 817
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p1, 0x3e99999a    # 0.3f

    .line 818
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setViewAlphaV11(Landroid/view/View;F)V

    .line 819
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    .line 821
    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private setViewAlphaV11(Landroid/view/View;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 827
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updateAll()V
    .locals 0

    .line 612
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updatePlayPauseButton()V

    .line 613
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    .line 614
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateRepeatModeButton()V

    .line 615
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    return-void
.end method

.method private updateNavigation()V
    .locals 7

    .line 638
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 642
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    .line 647
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v3

    .line 648
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 649
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    .line 650
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/google/android/exoplayer2/Timeline;->isFirstWindow(II)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x1

    .line 652
    :goto_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lcom/google/android/exoplayer2/Timeline;->isLastWindow(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    .line 653
    :goto_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 655
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 658
    :cond_8
    :goto_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    invoke-direct {p0, v5, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 659
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 660
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    if-lez v0, :cond_9

    if-eqz v4, :cond_9

    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 661
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    if-lez v0, :cond_a

    if-eqz v4, :cond_a

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 662
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v0, :cond_b

    .line 663
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/ui/TimeBar;->setEnabled(Z)V

    :cond_b
    return-void

    :cond_c
    :goto_9
    return-void
.end method

.method private updatePlayPauseButton()V
    .locals 7

    .line 619
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto :goto_5

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 624
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    .line 625
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v3, v2

    .line 626
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz v0, :cond_3

    const/16 v6, 0x8

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 628
    :goto_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-eqz v5, :cond_7

    if-nez v0, :cond_5

    .line 629
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    or-int/2addr v3, v1

    .line 630
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-nez v0, :cond_6

    const/16 v2, 0x8

    :cond_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v3, :cond_8

    .line 633
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->requestPlayPauseFocus()V

    :cond_8
    return-void

    :cond_9
    :goto_5
    return-void
.end method

.method private updateProgress()V
    .locals 26

    move-object/from16 v0, p0

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-nez v1, :cond_0

    goto/16 :goto_e

    .line 713
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v4, 0x1

    if-eqz v1, :cond_10

    .line 717
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 718
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 719
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v5

    .line 720
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    move v7, v5

    .line 721
    :goto_0
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    if-eqz v8, :cond_2

    .line 722
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v8

    sub-int/2addr v8, v4

    goto :goto_1

    :cond_2
    move v8, v5

    :goto_1
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    :goto_2
    if-gt v7, v8, :cond_e

    if-ne v7, v5, :cond_3

    move-wide v12, v9

    .line 727
    :cond_3
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v7, v14}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 728
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v14, v14, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v18, v14, v16

    if-nez v18, :cond_4

    .line 729
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    goto/16 :goto_8

    .line 732
    :cond_4
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v14, v14, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    :goto_3
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v15, v15, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-gt v14, v15, :cond_c

    .line 733
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v14, v15}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 734
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v15

    move v6, v11

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v15, :cond_b

    .line 736
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v11}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v19

    const-wide/high16 v21, -0x8000000000000000L

    cmp-long v4, v19, v21

    if-nez v4, :cond_6

    .line 738
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v2, v4, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v4, v2, v16

    if-nez v4, :cond_5

    move/from16 v23, v5

    const-wide/16 v19, 0x0

    goto :goto_7

    .line 742
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    goto :goto_5

    :cond_6
    move-wide/from16 v2, v19

    .line 744
    :goto_5
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v19

    add-long v2, v2, v19

    const-wide/16 v19, 0x0

    cmp-long v4, v2, v19

    if-ltz v4, :cond_9

    .line 745
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move/from16 v23, v5

    iget-wide v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v18, v2, v4

    if-gtz v18, :cond_a

    .line 746
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    array-length v4, v4

    if-ne v6, v4, :cond_8

    .line 747
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    array-length v4, v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    .line 748
    :goto_6
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    .line 749
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    .line 751
    :cond_8
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    add-long/2addr v2, v9

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    aput-wide v2, v4, v6

    .line 752
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v3

    aput-boolean v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_9
    move/from16 v23, v5

    :cond_a
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v23

    const/4 v4, 0x1

    goto :goto_4

    :cond_b
    move/from16 v23, v5

    const-wide/16 v19, 0x0

    add-int/lit8 v14, v14, 0x1

    move v11, v6

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_c
    move/from16 v23, v5

    const-wide/16 v19, 0x0

    .line 757
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    add-long/2addr v9, v2

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_d
    const-wide/16 v19, 0x0

    move-wide/from16 v9, v19

    move-wide v12, v9

    const/4 v11, 0x0

    .line 760
    :cond_e
    :goto_8
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    .line 761
    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v4

    .line 763
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 764
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v6, v4

    goto :goto_9

    .line 767
    :cond_f
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 768
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v8

    add-long/2addr v4, v8

    move-wide/from16 v24, v4

    move-wide v4, v6

    move-wide/from16 v6, v24

    .line 770
    :goto_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v1, :cond_11

    .line 771
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    invoke-interface {v1, v8, v9, v11}, Lcom/google/android/exoplayer2/ui/TimeBar;->setAdGroupTimesMs([J[ZI)V

    goto :goto_a

    :cond_10
    const-wide/16 v19, 0x0

    move-wide/from16 v2, v19

    move-wide v4, v2

    move-wide v6, v4

    .line 774
    :cond_11
    :goto_a
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->durationView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 775
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->durationView:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v8, v9, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    :cond_12
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->scrubbing:Z

    if-nez v1, :cond_13

    .line 778
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v8, v9, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    :cond_13
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v1, :cond_14

    .line 781
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v1, v4, v5}, Lcom/google/android/exoplayer2/ui/TimeBar;->setPosition(J)V

    .line 782
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v1, v6, v7}, Lcom/google/android/exoplayer2/ui/TimeBar;->setBufferedPosition(J)V

    .line 783
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setDuration(J)V

    .line 787
    :cond_14
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 788
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v1, :cond_15

    const/4 v1, 0x1

    :goto_b
    const/4 v2, 0x1

    goto :goto_c

    :cond_15
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v1

    goto :goto_b

    :goto_c
    if-eq v1, v2, :cond_18

    const/4 v2, 0x4

    if-eq v1, v2, :cond_18

    .line 791
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v2

    const-wide/16 v6, 0x3e8

    if-eqz v2, :cond_17

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    .line 792
    rem-long/2addr v4, v6

    sub-long v1, v6, v4

    const-wide/16 v3, 0xc8

    cmp-long v5, v1, v3

    if-gez v5, :cond_16

    add-long/2addr v6, v1

    goto :goto_d

    :cond_16
    move-wide v6, v1

    .line 799
    :cond_17
    :goto_d
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    return-void

    :cond_19
    :goto_e
    return-void
.end method

.method private updateRepeatModeButton()V
    .locals 3

    .line 668
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 671
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    if-nez v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 679
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 690
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 691
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 686
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 687
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 682
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 694
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTimeBarMode()V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    return-void

    .line 701
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showMultiWindowTimeBar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 702
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 942
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 953
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 954
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isHandledMediaKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 957
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    const/16 p1, 0x55

    if-eq v0, p1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 972
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    goto :goto_0

    .line 969
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    goto :goto_0

    .line 960
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForward()V

    goto :goto_0

    .line 963
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewind()V

    goto :goto_0

    .line 978
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previous()V

    goto :goto_0

    .line 975
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->next()V

    goto :goto_0

    .line 966
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 535
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 515
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    return v0
.end method

.method public hide()V
    .locals 2

    .line 581
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 582
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 587
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 588
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 596
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 919
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 920
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    .line 921
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 922
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    goto :goto_0

    .line 926
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 929
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 934
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 935
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    .line 936
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 937
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;)V
    .locals 0

    if-nez p1, :cond_0

    .line 481
    sget-object p1, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 0

    .line 503
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 504
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 445
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz p1, :cond_2

    .line 447
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 449
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3

    .line 544
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 549
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 552
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 555
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 0

    .line 492
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 493
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 461
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showMultiWindowTimeBar:Z

    .line 462
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateTimeBarMode()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 526
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    return-void
.end method

.method public setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 565
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 566
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    .line 571
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->requestPlayPauseFocus()V

    .line 574
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAfterTimeout()V

    return-void
.end method
