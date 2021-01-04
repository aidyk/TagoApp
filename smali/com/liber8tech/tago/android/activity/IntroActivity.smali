.class public final Lcom/liber8tech/tago/android/activity/IntroActivity;
.super Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;
.source "IntroActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntroActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntroActivity.kt\ncom/liber8tech/tago/android/activity/IntroActivity\n+ 2 Intents.kt\norg/jetbrains/anko/IntentsKt\n+ 3 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n*L\n1#1,150:1\n31#2:151\n164#3,2:152\n164#3,2:154\n*E\n*S KotlinDebug\n*F\n+ 1 IntroActivity.kt\ncom/liber8tech/tago/android/activity/IntroActivity\n*L\n53#1:151\n119#1,2:152\n123#1,2:154\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J\u0008\u0010\u0016\u001a\u00020\u0014H\u0002J\"\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0012\u0010\u001d\u001a\u00020\u00142\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0008\u0010 \u001a\u00020\u0014H\u0014J\u0008\u0010!\u001a\u00020\u0014H\u0014J\u0008\u0010\"\u001a\u00020\u0014H\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006#"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/IntroActivity;",
        "Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;",
        "()V",
        "authService",
        "Lcom/liber8tech/tago/service/AuthService;",
        "getAuthService",
        "()Lcom/liber8tech/tago/service/AuthService;",
        "setAuthService",
        "(Lcom/liber8tech/tago/service/AuthService;)V",
        "disposeBag",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "exoPlayer",
        "Lcom/google/android/exoplayer2/SimpleExoPlayer;",
        "runTimeConfig",
        "Lcom/liber8tech/tago/util/RuntimeConfig;",
        "getRunTimeConfig",
        "()Lcom/liber8tech/tago/util/RuntimeConfig;",
        "setRunTimeConfig",
        "(Lcom/liber8tech/tago/util/RuntimeConfig;)V",
        "initButtons",
        "",
        "initStatusBar",
        "initVideo",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onStart",
        "onStop",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public authService:Lcom/liber8tech/tago/service/AuthService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final disposeBag:Lio/reactivex/disposables/CompositeDisposable;

.field private exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field public runTimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;-><init>()V

    .line 46
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->disposeBag:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$getDisposeBag$p(Lcom/liber8tech/tago/android/activity/IntroActivity;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->disposeBag:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method private final initButtons()V
    .locals 3

    .line 115
    sget v0, Lcom/liber8tech/tago/R$id;->btnSignUp:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TagoButton;

    sget-object v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;->SILVER:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/view/TagoButton;->setColor(Lcom/liber8tech/tago/android/view/TagoButtonColor;)V

    .line 116
    sget v0, Lcom/liber8tech/tago/R$id;->btnSignUp:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TagoButton;

    const-string v1, "btnSignUp"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/liber8tech/tago/util/extension/TypefacesExtensionKt;->semibold(Landroid/widget/TextView;)V

    .line 117
    sget v0, Lcom/liber8tech/tago/R$id;->facebook_button:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TagoButton;

    sget-object v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;->FACEBOOK:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/view/TagoButton;->setColor(Lcom/liber8tech/tago/android/view/TagoButtonColor;)V

    .line 119
    sget v0, Lcom/liber8tech/tago/R$id;->btnSignIn:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TagoButton;

    const-string v1, "btnSignIn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/liber8tech/tago/android/activity/IntroActivity$initButtons$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/IntroActivity$initButtons$1;-><init>(Lcom/liber8tech/tago/android/activity/IntroActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 152
    new-instance v2, Lcom/liber8tech/tago/android/activity/IntroActivity$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v2, v1}, Lcom/liber8tech/tago/android/activity/IntroActivity$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v0, Lcom/liber8tech/tago/R$id;->btnSignUp:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TagoButton;

    const-string v1, "btnSignUp"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/liber8tech/tago/android/activity/IntroActivity$initButtons$2;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/IntroActivity$initButtons$2;-><init>(Lcom/liber8tech/tago/android/activity/IntroActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 154
    new-instance v2, Lcom/liber8tech/tago/android/activity/IntroActivity$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v2, v1}, Lcom/liber8tech/tago/android/activity/IntroActivity$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final initStatusBar()V
    .locals 5

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 132
    sget v0, Lcom/liber8tech/tago/R$id;->layoutMain:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "layoutMain"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 133
    sget v0, Lcom/liber8tech/tago/R$id;->layoutMain:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "layoutMain"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 134
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 135
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 136
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 137
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 139
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 140
    sget v0, Lcom/liber8tech/tago/R$id;->layoutMain:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final initVideo()V
    .locals 9

    const-string v0, "/android_asset/video/tago_intro_video.mp4"

    .line 81
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 83
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    const-string v1, "tago"

    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    new-instance v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 87
    new-instance v8, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-object v3, v0

    check-cast v3, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-object v4, v1

    check-cast v4, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .line 88
    new-instance v0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    check-cast v8, Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 91
    new-instance v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    check-cast v1, Lcom/google/android/exoplayer2/RenderersFactory;

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    new-instance v3, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    check-cast v3, Lcom/google/android/exoplayer2/LoadControl;

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    const-string v2, "ExoPlayerFactory.newSimp\u2026(), DefaultLoadControl())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 93
    sget v1, Lcom/liber8tech/tago/R$id;->exoPlayerView:I

    invoke-virtual {p0, v1}, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const-string v2, "exoPlayerView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v2, :cond_0

    const-string v3, "exoPlayer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    .line 94
    sget v1, Lcom/liber8tech/tago/R$id;->exoPlayerView:I

    invoke-virtual {p0, v1}, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const-string v2, "exoPlayerView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setUseController(Z)V

    .line 96
    sget v1, Lcom/liber8tech/tago/R$id;->exoPlayerView:I

    invoke-virtual {p0, v1}, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const-string v2, "exoPlayerView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 98
    sget v0, Lcom/liber8tech/tago/R$id;->facebook_button:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TagoButton;

    new-instance v1, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;-><init>(Lcom/liber8tech/tago/android/activity/IntroActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/view/TagoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAuthService()Lcom/liber8tech/tago/service/AuthService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->authService:Lcom/liber8tech/tago/service/AuthService;

    if-nez v0, :cond_0

    const-string v1, "authService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRunTimeConfig()Lcom/liber8tech/tago/util/RuntimeConfig;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->runTimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    if-nez v0, :cond_0

    const-string v1, "runTimeConfig"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 146
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->authService:Lcom/liber8tech/tago/service/AuthService;

    if-nez v0, :cond_0

    const-string v1, "authService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/liber8tech/tago/service/AuthService;->getCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/IntroActivity;)V

    .line 52
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->runTimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    if-nez p1, :cond_0

    const-string v0, "runTimeConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/liber8tech/tago/util/RuntimeConfig;->getToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 53
    new-array p1, p1, [Lkotlin/Pair;

    .line 151
    const-class v0, Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-static {p0, v0, p1}, Lorg/jetbrains/anko/internals/AnkoInternals;->internalStartActivity(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)V

    .line 54
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->finish()V

    return-void

    :cond_1
    const p1, 0x7f0c001d

    .line 58
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/IntroActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->initVideo()V

    .line 61
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->initButtons()V

    .line 62
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->initStatusBar()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;->onDestroy()V

    .line 67
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->disposeBag:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;->onStart()V

    .line 72
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-string v1, "exoPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;->onStop()V

    .line 77
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-string v1, "exoPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final setAuthService(Lcom/liber8tech/tago/service/AuthService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/AuthService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->authService:Lcom/liber8tech/tago/service/AuthService;

    return-void
.end method

.method public final setRunTimeConfig(Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/util/RuntimeConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->runTimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    return-void
.end method
