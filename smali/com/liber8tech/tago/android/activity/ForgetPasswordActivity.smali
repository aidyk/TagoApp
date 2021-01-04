.class public final Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;
.super Lcom/liber8tech/tago/android/activity/BaseActivity;
.source "ForgetPasswordActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForgetPasswordActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForgetPasswordActivity.kt\ncom/liber8tech/tago/android/activity/ForgetPasswordActivity\n+ 2 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n*L\n1#1,66:1\n164#2,2:67\n*E\n*S KotlinDebug\n*F\n+ 1 ForgetPasswordActivity.kt\ncom/liber8tech/tago/android/activity/ForgetPasswordActivity\n*L\n34#1,2:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u000f\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0002\u0010\u0015J\u0014\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00180\u0017H\u0016J\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u00182\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0008\u0010\u001e\u001a\u00020\u0018H\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;",
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        "()V",
        "analytics",
        "Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "getAnalytics",
        "()Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "setAnalytics",
        "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V",
        "authService",
        "Lcom/liber8tech/tago/service/AuthService;",
        "getAuthService",
        "()Lcom/liber8tech/tago/service/AuthService;",
        "setAuthService",
        "(Lcom/liber8tech/tago/service/AuthService;)V",
        "ui",
        "Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;",
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

.field public authService:Lcom/liber8tech/tago/service/AuthService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ui:Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;-><init>()V

    .line 25
    new-instance v0, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;

    invoke-direct {v0}, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->ui:Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;

    return-void
.end method

.method public static final synthetic access$getUi$p(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;)Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->ui:Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 28
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez v0, :cond_0

    const-string v1, "analytics"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getAuthService()Lcom/liber8tech/tago/service/AuthService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->authService:Lcom/liber8tech/tago/service/AuthService;

    if-nez v0, :cond_0

    const-string v1, "authService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->ui:Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;

    sget-object v1, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getToolbarLeftIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const v0, 0x7f07005d

    .line 60
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

    .line 64
    new-instance v0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$getToolbarLeftIconClick$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$getToolbarLeftIconClick$1;-><init>(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic getToolbarTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->getToolbarTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const v0, 0x7f0f00a1

    .line 62
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-super {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;)V

    .line 34
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->ui:Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;->getForgotPasswordBtn()Lcom/liber8tech/tago/android/view/TagoButton;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;-><init>(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 67
    new-instance v1, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v1, v0}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onDestroy()V

    .line 55
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

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

    .line 28
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

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

    .line 27
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->authService:Lcom/liber8tech/tago/service/AuthService;

    return-void
.end method
