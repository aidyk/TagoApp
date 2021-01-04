.class public final Lcom/liber8tech/tago/android/activity/PackActivity;
.super Lcom/liber8tech/tago/android/activity/BaseActivity;
.source "PackActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPackActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PackActivity.kt\ncom/liber8tech/tago/android/activity/PackActivity\n*L\n1#1,185:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\r\u0010\u0019\u001a\u00020\u001aH\u0016\u00a2\u0006\u0002\u0010\u001bJ\u0014\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001e0\u001dH\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0012\u0010!\u001a\u00020\u001e2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0014J\u0008\u0010$\u001a\u00020\u001eH\u0014J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020 H\u0002J\u0008\u0010\'\u001a\u00020\u001eH\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/PackActivity;",
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        "()V",
        "analytics",
        "Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "getAnalytics",
        "()Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "setAnalytics",
        "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V",
        "iapService",
        "Lcom/liber8tech/tago/service/IAPService;",
        "getIapService",
        "()Lcom/liber8tech/tago/service/IAPService;",
        "setIapService",
        "(Lcom/liber8tech/tago/service/IAPService;)V",
        "imageService",
        "Lcom/liber8tech/tago/service/ImageEditorService;",
        "getImageService",
        "()Lcom/liber8tech/tago/service/ImageEditorService;",
        "setImageService",
        "(Lcom/liber8tech/tago/service/ImageEditorService;)V",
        "ui",
        "Lcom/liber8tech/tago/android/activity/PackActivityUI;",
        "getContentView",
        "Landroid/view/View;",
        "getToolbarLeftIcon",
        "",
        "()Ljava/lang/Integer;",
        "getToolbarLeftIconClick",
        "Lkotlin/Function1;",
        "",
        "getToolbarTitle",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "setBackgroundImage",
        "url",
        "showPurchasedMain",
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

.field public analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public iapService:Lcom/liber8tech/tago/service/IAPService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public imageService:Lcom/liber8tech/tago/service/ImageEditorService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ui:Lcom/liber8tech/tago/android/activity/PackActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/liber8tech/tago/android/activity/PackActivityUI;

    invoke-direct {v0}, Lcom/liber8tech/tago/android/activity/PackActivityUI;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->ui:Lcom/liber8tech/tago/android/activity/PackActivityUI;

    return-void
.end method

.method public static final synthetic access$getUi$p(Lcom/liber8tech/tago/android/activity/PackActivity;)Lcom/liber8tech/tago/android/activity/PackActivityUI;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->ui:Lcom/liber8tech/tago/android/activity/PackActivityUI;

    return-object p0
.end method

.method public static final synthetic access$showPurchasedMain(Lcom/liber8tech/tago/android/activity/PackActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/PackActivity;->showPurchasedMain()V

    return-void
.end method

.method private final setBackgroundImage(Ljava/lang/String;)V
    .locals 1

    .line 124
    new-instance v0, Lcom/liber8tech/tago/android/activity/PackActivity$setBackgroundImage$1;

    invoke-direct {v0, p1}, Lcom/liber8tech/tago/android/activity/PackActivity$setBackgroundImage$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 134
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 135
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 136
    new-instance v0, Lcom/liber8tech/tago/android/activity/PackActivity$setBackgroundImage$2;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/PackActivity$setBackgroundImage$2;-><init>(Lcom/liber8tech/tago/android/activity/PackActivity;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 139
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/PackActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final showPurchasedMain()V
    .locals 3

    .line 117
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "collectionType"

    const-string v2, "purchased"

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/PackActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 43
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez v0, :cond_0

    const-string v1, "analytics"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->ui:Lcom/liber8tech/tago/android/activity/PackActivityUI;

    sget-object v1, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/activity/PackActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getIapService()Lcom/liber8tech/tago/service/IAPService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->iapService:Lcom/liber8tech/tago/service/IAPService;

    if-nez v0, :cond_0

    const-string v1, "iapService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getImageService()Lcom/liber8tech/tago/service/ImageEditorService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->imageService:Lcom/liber8tech/tago/service/ImageEditorService;

    if-nez v0, :cond_0

    const-string v1, "imageService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getToolbarLeftIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7f07005d

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    .line 148
    new-instance v0, Lcom/liber8tech/tago/android/activity/PackActivity$getToolbarLeftIconClick$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/PackActivity$getToolbarLeftIconClick$1;-><init>(Lcom/liber8tech/tago/android/activity/PackActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic getToolbarTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/PackActivity;->getToolbarTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7f0f0056

    .line 144
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/PackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.collection)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-super {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/PackActivity;)V

    .line 51
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez p1, :cond_0

    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-string v0, "Store Pack"

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/analytics/AnalyticsService;->trackScreen(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/PackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Current_pack"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lcom/liber8tech/tago/model/Pack;

    .line 54
    invoke-virtual {p1}, Lcom/liber8tech/tago/model/Pack;->getPackImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liber8tech/tago/android/activity/PackActivity;->setBackgroundImage(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/liber8tech/tago/model/Pack;->getProductId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->iapService:Lcom/liber8tech/tago/service/IAPService;

    if-nez v0, :cond_1

    const-string v1, "iapService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/service/IAPService;->createConnection(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$1;

    invoke-direct {v1, p0, p1}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$1;-><init>(Lcom/liber8tech/tago/android/activity/PackActivity;Lcom/liber8tech/tago/model/Pack;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "iapService.createConnect\u2026 currentPack.productId) }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {v0}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->asyncIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$2;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$2;-><init>(Lcom/liber8tech/tago/android/activity/PackActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 62
    new-instance v2, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$3;

    invoke-direct {v2, p0}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$3;-><init>(Lcom/liber8tech/tago/android/activity/PackActivity;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 60
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->ui:Lcom/liber8tech/tago/android/activity/PackActivityUI;

    new-instance v1, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;

    invoke-direct {v1, p0, p1}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;-><init>(Lcom/liber8tech/tago/android/activity/PackActivity;Lcom/liber8tech/tago/model/Pack;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/activity/PackActivityUI;->setPurchaseButtonClick(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 53
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.liber8tech.tago.model.Pack"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onDestroy()V

    .line 113
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/PackActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

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

    .line 43
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public final setIapService(Lcom/liber8tech/tago/service/IAPService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/IAPService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->iapService:Lcom/liber8tech/tago/service/IAPService;

    return-void
.end method

.method public final setImageService(Lcom/liber8tech/tago/service/ImageEditorService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/ImageEditorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity;->imageService:Lcom/liber8tech/tago/service/ImageEditorService;

    return-void
.end method
