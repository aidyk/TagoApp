.class public final Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;
.super Ljava/lang/Object;
.source "ForgetPasswordUI.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForgetPasswordUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForgetPasswordUI.kt\ncom/liber8tech/tago/android/ui/ForgetPasswordUI\n+ 2 Views.kt\norg/jetbrains/anko/Sdk15ViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 ViewDSL.kt\ncom/liber8tech/tago/android/view/ViewDSLKt\n+ 5 Layouts.kt\norg/jetbrains/anko/_FrameLayout\n+ 6 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n*L\n1#1,45:1\n1328#2:46\n28#3,3:47\n52#3:52\n28#3,5:53\n52#3:70\n28#3,5:71\n31#3,2:87\n20#4:50\n20#4:51\n11#4:68\n11#4:69\n219#5,6:58\n225#5,2:66\n219#5,6:76\n225#5,2:85\n62#6:64\n62#6:65\n62#6:82\n62#6:83\n62#6:84\n*E\n*S KotlinDebug\n*F\n+ 1 ForgetPasswordUI.kt\ncom/liber8tech/tago/android/ui/ForgetPasswordUI\n*L\n17#1:46\n17#1,3:47\n17#1:52\n17#1,5:53\n17#1:70\n17#1,5:71\n17#1,2:87\n17#1:50\n17#1:51\n17#1:68\n17#1:69\n17#1,6:58\n17#1,2:66\n17#1,6:76\n17#1,2:85\n17#1:64\n17#1:65\n17#1:82\n17#1:83\n17#1:84\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0013H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;",
        "()V",
        "emailInput",
        "Lcom/liber8tech/tago/android/view/TextInputView;",
        "getEmailInput",
        "()Lcom/liber8tech/tago/android/view/TextInputView;",
        "setEmailInput",
        "(Lcom/liber8tech/tago/android/view/TextInputView;)V",
        "forgotPasswordBtn",
        "Lcom/liber8tech/tago/android/view/TagoButton;",
        "getForgotPasswordBtn",
        "()Lcom/liber8tech/tago/android/view/TagoButton;",
        "setForgotPasswordBtn",
        "(Lcom/liber8tech/tago/android/view/TagoButton;)V",
        "createView",
        "Landroid/widget/FrameLayout;",
        "ui",
        "Lorg/jetbrains/anko/AnkoContext;",
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
.field public emailInput:Lcom/liber8tech/tago/android/view/TextInputView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public forgotPasswordBtn:Lcom/liber8tech/tago/android/view/TagoButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;
    .locals 10
    .param p1    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;",
            ">;)",
            "Landroid/widget/FrameLayout;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v0, p1

    check-cast v0, Landroid/view/ViewManager;

    .line 46
    sget-object v1, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;

    invoke-virtual {v1}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->getFRAME_LAYOUT()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 47
    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v3, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v3, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    .line 48
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 49
    move-object v2, v1

    check-cast v2, Lorg/jetbrains/anko/_FrameLayout;

    .line 19
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2}, Lorg/jetbrains/anko/_FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f05001b

    invoke-static {v5, v6}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v3, v5}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    .line 20
    check-cast v2, Landroid/view/ViewManager;

    .line 53
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v5

    .line 52
    const-class v6, Lcom/liber8tech/tago/android/view/TextInputView;

    invoke-static {v5, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/liber8tech/tago/android/view/TextInputView;

    .line 21
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object p1

    const v7, 0x7f0f0034

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v7, "ctx.getString(R.string.auth_email)"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v7, "(this as java.lang.String).toUpperCase()"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Lcom/liber8tech/tago/android/view/TextInputView;->setHintText(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 22
    invoke-virtual {v6, p1}, Lcom/liber8tech/tago/android/view/TextInputView;->setTextEnabled(Z)V

    const/16 p1, 0x20

    .line 23
    invoke-virtual {v6, p1}, Lcom/liber8tech/tago/android/view/TextInputView;->setTextInputType(I)V

    .line 56
    sget-object p1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p1, v2, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 51
    check-cast v6, Landroid/view/View;

    .line 62
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {p1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x14

    invoke-static {v7, v8}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 65
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "context"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 27
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v7

    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v7, 0x11

    .line 28
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    check-cast v6, Lcom/liber8tech/tago/android/view/TextInputView;

    iput-object v6, p0, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;->emailInput:Lcom/liber8tech/tago/android/view/TextInputView;

    .line 71
    sget-object p1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1, v6, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p1

    .line 70
    const-class v4, Lcom/liber8tech/tago/android/view/TagoButton;

    invoke-static {p1, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/liber8tech/tago/android/view/TagoButton;

    .line 31
    sget-object v6, Lcom/liber8tech/tago/android/view/TagoButtonColor;->GOLD:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    invoke-virtual {v4, v6}, Lcom/liber8tech/tago/android/view/TagoButton;->setColor(Lcom/liber8tech/tago/android/view/TagoButtonColor;)V

    .line 32
    invoke-virtual {v4}, Lcom/liber8tech/tago/android/view/TagoButton;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f00e4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lcom/liber8tech/tago/android/view/TagoButton;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v2, p1}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 69
    check-cast v4, Landroid/view/View;

    .line 80
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 82
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "context"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 83
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "context"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/16 v2, 0x40

    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "context"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 37
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x51

    .line 38
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 85
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    check-cast v4, Lcom/liber8tech/tago/android/view/TagoButton;

    iput-object v4, p0, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;->forgotPasswordBtn:Lcom/liber8tech/tago/android/view/TagoButton;

    .line 87
    sget-object p1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p1, v0, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 88
    check-cast v1, Landroid/widget/FrameLayout;

    .line 41
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v0

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v2

    invoke-direct {p1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1

    .line 21
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getEmailInput()Lcom/liber8tech/tago/android/view/TextInputView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;->emailInput:Lcom/liber8tech/tago/android/view/TextInputView;

    if-nez v0, :cond_0

    const-string v1, "emailInput"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getForgotPasswordBtn()Lcom/liber8tech/tago/android/view/TagoButton;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;->forgotPasswordBtn:Lcom/liber8tech/tago/android/view/TagoButton;

    if-nez v0, :cond_0

    const-string v1, "forgotPasswordBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setEmailInput(Lcom/liber8tech/tago/android/view/TextInputView;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/android/view/TextInputView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;->emailInput:Lcom/liber8tech/tago/android/view/TextInputView;

    return-void
.end method

.method public final setForgotPasswordBtn(Lcom/liber8tech/tago/android/view/TagoButton;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/android/view/TagoButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;->forgotPasswordBtn:Lcom/liber8tech/tago/android/view/TagoButton;

    return-void
.end method
