.class public final Lcom/liber8tech/tago/android/activity/AddTagoActivity;
.super Lcom/liber8tech/tago/android/activity/BaseActivity;
.source "AddTagoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liber8tech/tago/android/activity/AddTagoActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddTagoActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddTagoActivity.kt\ncom/liber8tech/tago/android/activity/AddTagoActivity\n*L\n1#1,143:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0018\u0000 =2\u00020\u0001:\u0001=B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\"\u001a\u00020#H\u0002J\u0008\u0010$\u001a\u00020\nH\u0016J\u000f\u0010%\u001a\u0004\u0018\u00010&H\u0016\u00a2\u0006\u0002\u0010\'J\u0014\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020#0)H\u0016J\n\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0008\u0010,\u001a\u00020#H\u0002J\"\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020&2\u0006\u0010/\u001a\u00020&2\u0008\u00100\u001a\u0004\u0018\u000101H\u0014J\u0012\u00102\u001a\u00020#2\u0008\u00103\u001a\u0004\u0018\u000104H\u0014J\u0008\u00105\u001a\u00020#H\u0014J-\u00106\u001a\u00020#2\u0006\u0010.\u001a\u00020&2\u000e\u00107\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020+082\u0006\u00109\u001a\u00020:H\u0016\u00a2\u0006\u0002\u0010;J\u0008\u0010<\u001a\u00020#H\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001a\u001a\u00020\u001b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/AddTagoActivity;",
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        "()V",
        "analytics",
        "Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "getAnalytics",
        "()Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "setAnalytics",
        "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V",
        "errorView",
        "Landroid/view/View;",
        "imageEditorService",
        "Lcom/liber8tech/tago/service/ImageEditorService;",
        "getImageEditorService",
        "()Lcom/liber8tech/tago/service/ImageEditorService;",
        "setImageEditorService",
        "(Lcom/liber8tech/tago/service/ImageEditorService;)V",
        "isSignUpActivity",
        "",
        "locationService",
        "Lcom/liber8tech/tago/service/LocationService;",
        "getLocationService",
        "()Lcom/liber8tech/tago/service/LocationService;",
        "setLocationService",
        "(Lcom/liber8tech/tago/service/LocationService;)V",
        "mainView",
        "tagoService",
        "Lcom/liber8tech/tago/service/TagoService;",
        "getTagoService",
        "()Lcom/liber8tech/tago/service/TagoService;",
        "setTagoService",
        "(Lcom/liber8tech/tago/service/TagoService;)V",
        "ui",
        "Lcom/liber8tech/tago/android/ui/AddTagoUI;",
        "discoverTagos",
        "",
        "getContentView",
        "getToolbarLeftIcon",
        "",
        "()Ljava/lang/Integer;",
        "getToolbarLeftIconClick",
        "Lkotlin/Function1;",
        "getToolbarTitle",
        "",
        "observeServices",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPause",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final Companion:Lcom/liber8tech/tago/android/activity/AddTagoActivity$Companion;

# The value of this static final field might be set in the static constructor
.field private static final REQUEST_EXIT:I = 0x2


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private errorView:Landroid/view/View;

.field public imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isSignUpActivity:Z

.field public locationService:Lcom/liber8tech/tago/service/LocationService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mainView:Landroid/view/View;

.field public tagoService:Lcom/liber8tech/tago/service/TagoService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ui:Lcom/liber8tech/tago/android/ui/AddTagoUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/android/activity/AddTagoActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->Companion:Lcom/liber8tech/tago/android/activity/AddTagoActivity$Companion;

    const/4 v0, 0x2

    .line 32
    sput v0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->REQUEST_EXIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/liber8tech/tago/android/ui/AddTagoUI;

    new-instance v1, Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1;-><init>(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/android/ui/AddTagoUI;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->ui:Lcom/liber8tech/tago/android/ui/AddTagoUI;

    return-void
.end method

.method public static final synthetic access$getErrorView$p(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->errorView:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "errorView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMainView$p(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->mainView:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "mainView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getUi$p(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)Lcom/liber8tech/tago/android/ui/AddTagoUI;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->ui:Lcom/liber8tech/tago/android/ui/AddTagoUI;

    return-object p0
.end method

.method public static final synthetic access$isSignUpActivity$p(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->isSignUpActivity:Z

    return p0
.end method

.method public static final synthetic access$setErrorView$p(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 29
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->errorView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setMainView$p(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 29
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->mainView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setSignUpActivity$p(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->isSignUpActivity:Z

    return-void
.end method

.method public static final synthetic access$setUi$p(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/android/ui/AddTagoUI;)V
    .locals 0
    .param p1    # Lcom/liber8tech/tago/android/ui/AddTagoUI;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 29
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->ui:Lcom/liber8tech/tago/android/ui/AddTagoUI;

    return-void
.end method

.method private final discoverTagos()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    if-nez v0, :cond_0

    const-string v1, "tagoService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/liber8tech/tago/service/TagoService;->nearByDevices()Lio/reactivex/Observable;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/liber8tech/tago/android/activity/AddTagoActivity$discoverTagos$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity$discoverTagos$1;-><init>(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    sget-object v2, Lcom/liber8tech/tago/android/activity/AddTagoActivity$discoverTagos$2;->INSTANCE:Lcom/liber8tech/tago/android/activity/AddTagoActivity$discoverTagos$2;

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final observeServices()V
    .locals 3

    const v0, 0x1020002

    .line 70
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f00b5

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const-string v1, "Snackbar.make(findViewBy\u2026ackbar.LENGTH_INDEFINITE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f050064

    invoke-static {v1, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    if-nez v0, :cond_0

    const-string v1, "tagoService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/liber8tech/tago/service/TagoService;->bleAndLocationStates()Lio/reactivex/Observable;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/liber8tech/tago/android/activity/AddTagoActivity$observeServices$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity$observeServices$1;-><init>(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez v0, :cond_0

    const-string v1, "analytics"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->ui:Lcom/liber8tech/tago/android/ui/AddTagoUI;

    sget-object v1, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, v7

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/AddTagoUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->mainView:Landroid/view/View;

    .line 107
    new-instance v0, Lcom/liber8tech/tago/android/ui/BluetoothDisabledUI;

    invoke-direct {v0}, Lcom/liber8tech/tago/android/ui/BluetoothDisabledUI;-><init>()V

    sget-object v2, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v1, 0x0

    move-object v3, v7

    move-object v4, p0

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/BluetoothDisabledUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->errorView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->mainView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "mainView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getImageEditorService()Lcom/liber8tech/tago/service/ImageEditorService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;

    if-nez v0, :cond_0

    const-string v1, "imageEditorService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getLocationService()Lcom/liber8tech/tago/service/LocationService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->locationService:Lcom/liber8tech/tago/service/LocationService;

    if-nez v0, :cond_0

    const-string v1, "locationService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTagoService()Lcom/liber8tech/tago/service/TagoService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    if-nez v0, :cond_0

    const-string v1, "tagoService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getToolbarLeftIcon()Ljava/lang/Integer;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SignUpActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f07005d

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToolbarLeftIconClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 120
    new-instance v0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$getToolbarLeftIconClick$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity$getToolbarLeftIconClick$1;-><init>(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic getToolbarTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->getToolbarTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const v0, 0x7f0f002b

    .line 111
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 127
    sget p3, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->REQUEST_EXIT:I

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 84
    invoke-super {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SignUpActivity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->isSignUpActivity:Z

    .line 86
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)V

    .line 87
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez p1, :cond_0

    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-string v0, "Add Device"

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/analytics/AnalyticsService;->trackScreen(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onPause()V

    .line 102
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    aget p1, p3, p2

    if-nez p1, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->observeServices()V

    .line 137
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->discoverTagos()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 91
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->locationService:Lcom/liber8tech/tago/service/LocationService;

    if-nez v0, :cond_0

    const-string v1, "locationService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/liber8tech/tago/service/LocationService;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->locationService:Lcom/liber8tech/tago/service/LocationService;

    if-nez v0, :cond_1

    const-string v1, "locationService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/service/LocationService;->requestPermission(Landroid/app/Activity;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->observeServices()V

    .line 96
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->discoverTagos()V

    :goto_0
    return-void
.end method

.method public final setAnalytics(Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/analytics/AnalyticsService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public final setImageEditorService(Lcom/liber8tech/tago/service/ImageEditorService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/ImageEditorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;

    return-void
.end method

.method public final setLocationService(Lcom/liber8tech/tago/service/LocationService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/LocationService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->locationService:Lcom/liber8tech/tago/service/LocationService;

    return-void
.end method

.method public final setTagoService(Lcom/liber8tech/tago/service/TagoService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/TagoService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method
