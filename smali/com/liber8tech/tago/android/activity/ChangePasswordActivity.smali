.class public final Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;
.super Lcom/liber8tech/tago/android/activity/BaseActivity;
.source "ChangePasswordActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangePasswordActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangePasswordActivity.kt\ncom/liber8tech/tago/android/activity/ChangePasswordActivity\n+ 2 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n*L\n1#1,107:1\n164#2,2:108\n*E\n*S KotlinDebug\n*F\n+ 1 ChangePasswordActivity.kt\ncom/liber8tech/tago/android/activity/ChangePasswordActivity\n*L\n79#1,2:108\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0002\u0010\u0017J\u0014\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00120\u0019H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0012H\u0002J\u0008\u0010\u001d\u001a\u00020\u0012H\u0002J\u0012\u0010\u001e\u001a\u00020\u00122\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0008\u0010!\u001a\u00020\u0012H\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;",
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
        "Lcom/liber8tech/tago/android/activity/ChangePasswordActivityUI;",
        "clickSave",
        "",
        "getContentView",
        "Landroid/view/View;",
        "getToolbarLeftIcon",
        "",
        "()Ljava/lang/Integer;",
        "getToolbarLeftIconClick",
        "Lkotlin/Function1;",
        "getToolbarTitle",
        "",
        "initButton",
        "initTextFields",
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

.field private final ui:Lcom/liber8tech/tago/android/activity/ChangePasswordActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivityUI;

    invoke-direct {v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivityUI;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->ui:Lcom/liber8tech/tago/android/activity/ChangePasswordActivityUI;

    return-void
.end method

.method public static final synthetic access$clickSave(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->clickSave()V

    return-void
.end method

.method private final clickSave()V
    .locals 3

    .line 83
    sget v0, Lcom/liber8tech/tago/R$id;->textInputCurrent:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TextInputView;

    const-string v1, "textInputCurrent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/liber8tech/tago/util/AuthValidationKt;->isPasswordValid(Lcom/liber8tech/tago/android/view/TextInputView;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/liber8tech/tago/R$id;->textInputNew:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TextInputView;

    const-string v1, "textInputNew"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/liber8tech/tago/R$id;->textInputVerify:I

    invoke-virtual {p0, v1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liber8tech/tago/android/view/TextInputView;

    const-string v2, "textInputVerify"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/liber8tech/tago/util/AuthValidationKt;->isPasswordMatch(Lcom/liber8tech/tago/android/view/TextInputView;Lcom/liber8tech/tago/android/view/TextInputView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget v0, Lcom/liber8tech/tago/R$id;->changeProgressBar:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "changeProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->authService:Lcom/liber8tech/tago/service/AuthService;

    if-nez v0, :cond_0

    const-string v1, "authService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/liber8tech/tago/R$id;->textInputCurrent:I

    invoke-virtual {p0, v1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liber8tech/tago/android/view/TextInputView;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/view/TextInputView;->getText()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/liber8tech/tago/R$id;->textInputNew:I

    invoke-virtual {p0, v2}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/liber8tech/tago/android/view/TextInputView;

    invoke-virtual {v2}, Lcom/liber8tech/tago/android/view/TextInputView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liber8tech/tago/service/AuthService;->changePassword(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->asyncIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$1;-><init>(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)V

    check-cast v1, Lio/reactivex/functions/Action;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doAfterTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$2;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$2;-><init>(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 90
    new-instance v2, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$3;

    invoke-direct {v2, p0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$3;-><init>(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 87
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_1
    return-void
.end method

.method private final initButton()V
    .locals 3

    .line 78
    sget v0, Lcom/liber8tech/tago/R$id;->btnSave:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TagoButton;

    sget-object v1, Lcom/liber8tech/tago/android/view/TagoButtonColor;->GOLD:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/view/TagoButton;->setColor(Lcom/liber8tech/tago/android/view/TagoButtonColor;)V

    .line 79
    sget v0, Lcom/liber8tech/tago/R$id;->btnSave:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TagoButton;

    const-string v1, "btnSave"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$initButton$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$initButton$1;-><init>(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 108
    new-instance v2, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v2, v1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final initTextFields()V
    .locals 3

    .line 69
    sget v0, Lcom/liber8tech/tago/R$id;->textInputCurrent:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TextInputView;

    const v1, 0x7f0f0040

    invoke-virtual {p0, v1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.auth_password_current)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/view/TextInputView;->setHintText(Ljava/lang/String;)V

    .line 70
    sget v0, Lcom/liber8tech/tago/R$id;->textInputCurrent:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TextInputView;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/view/TextInputView;->setInputTypePassword()V

    .line 71
    sget v0, Lcom/liber8tech/tago/R$id;->textInputNew:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TextInputView;

    const v1, 0x7f0f0043

    invoke-virtual {p0, v1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.auth_password_new)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/view/TextInputView;->setHintText(Ljava/lang/String;)V

    .line 72
    sget v0, Lcom/liber8tech/tago/R$id;->textInputNew:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TextInputView;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/view/TextInputView;->setInputTypePassword()V

    .line 73
    sget v0, Lcom/liber8tech/tago/R$id;->textInputVerify:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TextInputView;

    const v1, 0x7f0f0044

    invoke-virtual {p0, v1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.auth_password_verify)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/view/TextInputView;->setHintText(Ljava/lang/String;)V

    .line 74
    sget v0, Lcom/liber8tech/tago/R$id;->textInputVerify:I

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/android/view/TextInputView;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/view/TextInputView;->setInputTypePassword()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 31
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

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

    .line 29
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->authService:Lcom/liber8tech/tago/service/AuthService;

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

    .line 51
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->ui:Lcom/liber8tech/tago/android/activity/ChangePasswordActivityUI;

    sget-object v1, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getToolbarLeftIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const v0, 0x7f07005d

    .line 55
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

    .line 63
    new-instance v0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$getToolbarLeftIconClick$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$getToolbarLeftIconClick$1;-><init>(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic getToolbarTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->getToolbarTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const v0, 0x7f0f003f

    .line 59
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-super {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)V

    .line 39
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez p1, :cond_0

    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-string v0, "Change Password"

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/analytics/AnalyticsService;->trackScreen(Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->initTextFields()V

    .line 42
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->initButton()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onDestroy()V

    .line 47
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

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

    .line 31
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

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

    .line 29
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->authService:Lcom/liber8tech/tago/service/AuthService;

    return-void
.end method
