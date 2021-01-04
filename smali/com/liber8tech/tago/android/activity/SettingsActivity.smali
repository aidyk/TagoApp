.class public final Lcom/liber8tech/tago/android/activity/SettingsActivity;
.super Lcom/liber8tech/tago/android/activity/BaseActivity;
.source "SettingsActivity.kt"

# interfaces
.implements Lcom/liber8tech/tago/android/activity/Requests;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsActivity.kt\ncom/liber8tech/tago/android/activity/SettingsActivity\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,151:1\n75#2:152\n75#2:153\n*E\n*S KotlinDebug\n*F\n+ 1 SettingsActivity.kt\ncom/liber8tech/tago/android/activity/SettingsActivity\n*L\n128#1:152\n131#1:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010-\u001a\u00020.H\u0016J\r\u0010/\u001a\u000200H\u0016\u00a2\u0006\u0002\u00101J\u0014\u00102\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020503H\u0016J\n\u00106\u001a\u0004\u0018\u000107H\u0016J\"\u00108\u001a\u0002052\u0006\u00109\u001a\u0002002\u0006\u0010:\u001a\u0002002\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0014J\u0012\u0010=\u001a\u0002052\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0014J\u0008\u0010@\u001a\u000205H\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\n \u0018*\u0004\u0018\u00010\u00170\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u00020\u001a8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u00020 8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001e\u0010%\u001a\u00020&8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/SettingsActivity;",
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        "Lcom/liber8tech/tago/android/activity/Requests;",
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
        "imageEditorService",
        "Lcom/liber8tech/tago/service/ImageEditorService;",
        "getImageEditorService",
        "()Lcom/liber8tech/tago/service/ImageEditorService;",
        "setImageEditorService",
        "(Lcom/liber8tech/tago/service/ImageEditorService;)V",
        "realm",
        "Lio/realm/Realm;",
        "kotlin.jvm.PlatformType",
        "runtimeConfig",
        "Lcom/liber8tech/tago/util/RuntimeConfig;",
        "getRuntimeConfig",
        "()Lcom/liber8tech/tago/util/RuntimeConfig;",
        "setRuntimeConfig",
        "(Lcom/liber8tech/tago/util/RuntimeConfig;)V",
        "storeService",
        "Lcom/liber8tech/tago/service/StoreService;",
        "getStoreService",
        "()Lcom/liber8tech/tago/service/StoreService;",
        "setStoreService",
        "(Lcom/liber8tech/tago/service/StoreService;)V",
        "tagoService",
        "Lcom/liber8tech/tago/service/TagoService;",
        "getTagoService",
        "()Lcom/liber8tech/tago/service/TagoService;",
        "setTagoService",
        "(Lcom/liber8tech/tago/service/TagoService;)V",
        "ui",
        "Lcom/liber8tech/tago/android/ui/SettingsActivityUI;",
        "getContentView",
        "Landroid/widget/ScrollView;",
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

.field public iapService:Lcom/liber8tech/tago/service/IAPService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final realm:Lio/realm/Realm;

.field public runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public storeService:Lcom/liber8tech/tago/service/StoreService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public tagoService:Lcom/liber8tech/tago/service/TagoService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    invoke-direct {v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    .line 47
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->realm:Lio/realm/Realm;

    return-void
.end method

.method public static final synthetic access$getUi$p(Lcom/liber8tech/tago/android/activity/SettingsActivity;)Lcom/liber8tech/tago/android/ui/SettingsActivityUI;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->_$_findViewCache:Ljava/util/HashMap;

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
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez v0, :cond_0

    const-string v1, "analytics"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getContentView()Landroid/view/View;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getContentView()Landroid/widget/ScrollView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getContentView()Landroid/widget/ScrollView;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    sget-object v1, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public final getIapService()Lcom/liber8tech/tago/service/IAPService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->iapService:Lcom/liber8tech/tago/service/IAPService;

    if-nez v0, :cond_0

    const-string v1, "iapService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getImageEditorService()Lcom/liber8tech/tago/service/ImageEditorService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;

    if-nez v0, :cond_0

    const-string v1, "imageEditorService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getKioskRequest()I
    .locals 1

    .line 30
    invoke-static {p0}, Lcom/liber8tech/tago/android/activity/Requests$DefaultImpls;->getKioskRequest(Lcom/liber8tech/tago/android/activity/Requests;)I

    move-result v0

    return v0
.end method

.method public getResetRequest()I
    .locals 1

    .line 30
    invoke-static {p0}, Lcom/liber8tech/tago/android/activity/Requests$DefaultImpls;->getResetRequest(Lcom/liber8tech/tago/android/activity/Requests;)I

    move-result v0

    return v0
.end method

.method public final getRuntimeConfig()Lcom/liber8tech/tago/util/RuntimeConfig;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    if-nez v0, :cond_0

    const-string v1, "runtimeConfig"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getStoreService()Lcom/liber8tech/tago/service/StoreService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->storeService:Lcom/liber8tech/tago/service/StoreService;

    if-nez v0, :cond_0

    const-string v1, "storeService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTagoService()Lcom/liber8tech/tago/service/TagoService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

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

    .line 145
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

    .line 147
    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$getToolbarLeftIconClick$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$getToolbarLeftIconClick$1;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic getToolbarTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getToolbarTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const v0, 0x7f0f00e5

    .line 143
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 127
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getResetRequest()I

    move-result p3

    const v0, 0x1020002

    const/4 v1, -0x1

    if-ne p1, p3, :cond_0

    if-ne p2, v1, :cond_0

    const p3, 0x7f0f00db

    .line 152
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(id)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {p0, p3, v2}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->tintedSnack(Landroid/content/Context;ILandroid/view/View;)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getKioskRequest()I

    move-result p3

    if-ne p1, p3, :cond_1

    if-ne p2, v1, :cond_1

    const p1, 0x7f0f00b3

    .line 153
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(id)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {p0, p1, p2}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->tintedSnack(Landroid/content/Context;ILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-super {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V

    .line 52
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez p1, :cond_0

    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-string v0, "Settings"

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/analytics/AnalyticsService;->trackScreen(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->setLogoutOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 73
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->setRestoreOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 88
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$3;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$3;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->setChangePasswordOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 92
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$4;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$4;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->setAddTagoOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 96
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$5;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$5;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->setResetTagoOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 100
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$6;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$6;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->setKioskOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 104
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$7;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$7;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->setAutoUploadOnClick(Lkotlin/jvm/functions/Function2;)V

    .line 108
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$8;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$8;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->setProfileOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 112
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->ui:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    if-nez v0, :cond_1

    const-string v1, "runtimeConfig"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/liber8tech/tago/util/RuntimeConfig;->getAutoUpload()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->setAutoUploadValue(Z)V

    .line 114
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->realm:Lio/realm/Realm;

    const-class v0, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAllAsync()Lio/realm/RealmResults;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 115
    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$9;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$9;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 118
    sget-object v1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$10;->INSTANCE:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$10;

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 115
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 121
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    if-nez p1, :cond_2

    const-string v0, "tagoService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/TagoService;->sync()Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->asyncIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 122
    sget-object v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$12;->INSTANCE:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$12;

    check-cast v0, Lio/reactivex/functions/Consumer;

    sget-object v1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$13;->INSTANCE:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$13;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 138
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

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
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

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
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->iapService:Lcom/liber8tech/tago/service/IAPService;

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
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;

    return-void
.end method

.method public final setRuntimeConfig(Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/util/RuntimeConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    return-void
.end method

.method public final setStoreService(Lcom/liber8tech/tago/service/StoreService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/StoreService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->storeService:Lcom/liber8tech/tago/service/StoreService;

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

    .line 35
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method
