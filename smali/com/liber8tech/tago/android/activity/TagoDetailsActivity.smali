.class public final Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;
.super Lcom/liber8tech/tago/android/activity/BaseActivity;
.source "TagoDetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTagoDetailsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagoDetailsActivity.kt\ncom/liber8tech/tago/android/activity/TagoDetailsActivity\n+ 2 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n*L\n1#1,98:1\n164#2,2:99\n*E\n*S KotlinDebug\n*F\n+ 1 TagoDetailsActivity.kt\ncom/liber8tech/tago/android/activity/TagoDetailsActivity\n*L\n74#1,2:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\r\u0010\u0015\u001a\u00020\u0016H\u0016\u00a2\u0006\u0002\u0010\u0017J\u0014\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u0019H\u0016J\u0012\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0008\u0010\u001f\u001a\u00020\u001bH\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;",
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        "()V",
        "analytics",
        "Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "getAnalytics",
        "()Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "setAnalytics",
        "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V",
        "device",
        "Lcom/liber8tech/tago/model/TagoDevice;",
        "tagoService",
        "Lcom/liber8tech/tago/service/TagoService;",
        "getTagoService",
        "()Lcom/liber8tech/tago/service/TagoService;",
        "setTagoService",
        "(Lcom/liber8tech/tago/service/TagoService;)V",
        "ui",
        "Lcom/liber8tech/tago/android/ui/TagoDetailsUI;",
        "getContentView",
        "Landroid/widget/LinearLayout;",
        "getToolbarLeftIcon",
        "",
        "()Ljava/lang/Integer;",
        "getToolbarLeftIconClick",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
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

.field private device:Lcom/liber8tech/tago/model/TagoDevice;

.field public tagoService:Lcom/liber8tech/tago/service/TagoService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ui:Lcom/liber8tech/tago/android/ui/TagoDetailsUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    invoke-direct {v0}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->ui:Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    return-void
.end method

.method public static final synthetic access$getDevice$p(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)Lcom/liber8tech/tago/model/TagoDevice;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 27
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->device:Lcom/liber8tech/tago/model/TagoDevice;

    return-object p0
.end method

.method public static final synthetic access$getUi$p(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)Lcom/liber8tech/tago/android/ui/TagoDetailsUI;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->ui:Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    return-object p0
.end method

.method public static final synthetic access$refreshToolbarTitle$s-1897208196(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 27
    invoke-super {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->refreshToolbarTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic access$setDevice$p(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Lcom/liber8tech/tago/model/TagoDevice;)V
    .locals 0
    .param p1    # Lcom/liber8tech/tago/model/TagoDevice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 27
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->device:Lcom/liber8tech/tago/model/TagoDevice;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 30
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez v0, :cond_0

    const-string v1, "analytics"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getContentView()Landroid/view/View;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->getContentView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getContentView()Landroid/widget/LinearLayout;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->ui:Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    sget-object v1, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getTagoService()Lcom/liber8tech/tago/service/TagoService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    if-nez v0, :cond_0

    const-string v1, "tagoService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getToolbarLeftIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7f07005d

    .line 92
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

    .line 94
    new-instance v0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$getToolbarLeftIconClick$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$getToolbarLeftIconClick$1;-><init>(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-super {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)V

    .line 38
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez p1, :cond_0

    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-string v0, "Tago Details"

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/analytics/AnalyticsService;->trackScreen(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    sget-object v0, Lcom/liber8tech/tago/util/RxRealm;->INSTANCE:Lcom/liber8tech/tago/util/RxRealm;

    const-class v1, Lcom/liber8tech/tago/model/TagoDevice;

    const-string v2, "identifier"

    const-string v3, "id"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/liber8tech/tago/util/RxRealm;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$1;-><init>(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 50
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->ui:Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    new-instance v1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;

    invoke-direct {v1, p0, p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;-><init>(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->setDeleteOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 66
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->ui:Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    new-instance v1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$4;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$4;-><init>(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->setEditTextFocusChange(Lkotlin/jvm/functions/Function2;)V

    .line 74
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->ui:Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->getSaveButton()Landroid/widget/Button;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5;

    invoke-direct {v1, p0, p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5;-><init>(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 99
    new-instance p1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {p1, v1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onDestroy()V

    .line 87
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

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

    .line 30
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

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

    .line 29
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method
