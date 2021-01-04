.class final Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ForgetPasswordActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForgetPasswordActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForgetPasswordActivity.kt\ncom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,66:1\n75#2:67\n*E\n*S KotlinDebug\n*F\n+ 1 ForgetPasswordActivity.kt\ncom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1\n*L\n48#1:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 35
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;)Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;->getEmailInput()Lcom/liber8tech/tago/android/view/TextInputView;

    move-result-object p1

    invoke-static {p1}, Lcom/liber8tech/tago/util/AuthValidationKt;->isEmailValid(Lcom/liber8tech/tago/android/view/TextInputView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->getAuthService()Lcom/liber8tech/tago/service/AuthService;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;)Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;->getEmailInput()Lcom/liber8tech/tago/android/view/TextInputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/view/TextInputView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/service/AuthService;->forgetPassword(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->asyncIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 38
    new-instance v0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$1;-><init>(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 41
    new-instance v1, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$2;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$2;-><init>(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 38
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    const v1, 0x7f0f0035

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.auth_email_error)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    const v2, 0x1020002

    .line 67
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(id)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p1, v0, v1}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->tintedSnack(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    :goto_0
    return-void
.end method
