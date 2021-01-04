.class public final Lcom/liber8tech/tago/android/activity/ResetActivity;
.super Lcom/liber8tech/tago/android/activity/BaseActivity;
.source "ResetActivity.kt"

# interfaces
.implements Lcom/liber8tech/tago/android/activity/Requests;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\r\u0010\u000e\u001a\u00020\u000fH\u0016\u00a2\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\"\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\u0012\u0010\u001c\u001a\u00020\u00142\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/ResetActivity;",
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        "Lcom/liber8tech/tago/android/activity/Requests;",
        "()V",
        "analytics",
        "Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "getAnalytics",
        "()Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "setAnalytics",
        "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V",
        "ui",
        "Lcom/liber8tech/tago/android/ui/ResetActivityUI;",
        "getContentView",
        "Landroid/widget/LinearLayout;",
        "getToolbarLeftIcon",
        "",
        "()Ljava/lang/Integer;",
        "getToolbarLeftIconClick",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "getToolbarTitle",
        "",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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

.field private final ui:Lcom/liber8tech/tago/android/ui/ResetActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;-><init>()V

    .line 22
    new-instance v0, Lcom/liber8tech/tago/android/ui/ResetActivityUI;

    invoke-direct {v0}, Lcom/liber8tech/tago/android/ui/ResetActivityUI;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->ui:Lcom/liber8tech/tago/android/ui/ResetActivityUI;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 25
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez v0, :cond_0

    const-string v1, "analytics"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getContentView()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetActivity;->getContentView()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getContentView()Landroid/widget/LinearLayout;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->ui:Lcom/liber8tech/tago/android/ui/ResetActivityUI;

    sget-object v1, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/ResetActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getKioskRequest()I
    .locals 1

    .line 20
    invoke-static {p0}, Lcom/liber8tech/tago/android/activity/Requests$DefaultImpls;->getKioskRequest(Lcom/liber8tech/tago/android/activity/Requests;)I

    move-result v0

    return v0
.end method

.method public getResetRequest()I
    .locals 1

    .line 20
    invoke-static {p0}, Lcom/liber8tech/tago/android/activity/Requests$DefaultImpls;->getResetRequest(Lcom/liber8tech/tago/android/activity/Requests;)I

    move-result v0

    return v0
.end method

.method public getToolbarLeftIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7f07005d

    .line 58
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

    .line 60
    new-instance v0, Lcom/liber8tech/tago/android/activity/ResetActivity$getToolbarLeftIconClick$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ResetActivity$getToolbarLeftIconClick$1;-><init>(Lcom/liber8tech/tago/android/activity/ResetActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic getToolbarTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetActivity;->getToolbarTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7f0f00da

    .line 56
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ResetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.reset_device)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ResetActivity;->setResult(I)V

    .line 49
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetActivity;->finish()V

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1, p1}, Lcom/liber8tech/tago/android/activity/ResetActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-super {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/ResetActivity;)V

    .line 30
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez p1, :cond_0

    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-string v0, "Reset Device"

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/analytics/AnalyticsService;->trackScreen(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->ui:Lcom/liber8tech/tago/android/ui/ResetActivityUI;

    new-instance v0, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;-><init>(Lcom/liber8tech/tago/android/activity/ResetActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/ResetActivityUI;->setNextOnClick(Lkotlin/jvm/functions/Function1;)V

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

    .line 25
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method
