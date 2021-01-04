.class final Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ProfileActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ProfileActivity;->onCreate(Landroid/os/Bundle;)V
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
    value = "SMAP\nProfileActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileActivity.kt\ncom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4\n*L\n1#1,99:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
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
.field final synthetic $fromLogin:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ProfileActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->$fromLogin:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 13
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getUi()Lcom/liber8tech/tago/android/ui/ProfileActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUI;->getFirstName()Lcom/liber8tech/tago/android/view/TextInputView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/view/TextInputView;->getNullableText()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getUi()Lcom/liber8tech/tago/android/ui/ProfileActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUI;->getLastName()Lcom/liber8tech/tago/android/view/TextInputView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/view/TextInputView;->getNullableText()Ljava/lang/String;

    move-result-object v2

    .line 59
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getUi()Lcom/liber8tech/tago/android/ui/ProfileActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUI;->getBirthYear()Landroid/widget/Spinner;

    move-result-object p1

    invoke-static {p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUIKt;->getElementOrNull(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getUi()Lcom/liber8tech/tago/android/ui/ProfileActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUI;->getCountry()Landroid/widget/Spinner;

    move-result-object p1

    invoke-static {p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUIKt;->getElementOrNull(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v4

    .line 60
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getUi()Lcom/liber8tech/tago/android/ui/ProfileActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUI;->getGender()Landroid/widget/Spinner;

    move-result-object p1

    invoke-static {p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUIKt;->getElementOrNull(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getUi()Lcom/liber8tech/tago/android/ui/ProfileActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUI;->getSubsCheck()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getUi()Lcom/liber8tech/tago/android/ui/ProfileActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUI;->getAnalyticsCheck()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x380

    const/4 v12, 0x0

    .line 58
    new-instance p1, Lcom/liber8tech/tago/service/UpdateProfileData;

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/liber8tech/tago/service/UpdateProfileData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getUi()Lcom/liber8tech/tago/android/ui/ProfileActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/ui/ProfileActivityUI;->getAnalyticsCheck()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getRuntimeConfig()Lcom/liber8tech/tago/util/RuntimeConfig;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Lcom/liber8tech/tago/util/RuntimeConfig;->setAnalyticsEnable(Z)V

    .line 64
    invoke-virtual {v1, v0}, Lcom/liber8tech/tago/util/RuntimeConfig;->setCrashlyticsEnable(Z)V

    .line 67
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getProfileService()Lcom/liber8tech/tago/service/ProfileService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/ProfileService;->updateProfile(Lcom/liber8tech/tago/service/UpdateProfileData;)Lio/reactivex/Single;

    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->asyncIO(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p1

    .line 69
    new-instance v0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$2;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$2;-><init>(Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 80
    sget-object v1, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$3;->INSTANCE:Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$3;

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 69
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
