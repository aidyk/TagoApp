.class public final Lcom/liber8tech/tago/android/activity/BaseActivityUI;
.super Ljava/lang/Object;
.source "BaseActivity.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseActivity.kt\ncom/liber8tech/tago/android/activity/BaseActivityUI\n+ 2 CustomViews.kt\norg/jetbrains/anko/CustomViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 ViewDSL.kt\ncom/liber8tech/tago/android/view/ViewDSLKt\n*L\n1#1,68:1\n46#2,2:69\n28#3,3:71\n52#3:76\n28#3,5:77\n31#3,2:82\n8#4:74\n8#4:75\n*E\n*S KotlinDebug\n*F\n+ 1 BaseActivity.kt\ncom/liber8tech/tago/android/activity/BaseActivityUI\n*L\n53#1,2:69\n53#1,3:71\n53#1:76\n53#1,5:77\n53#1,2:82\n53#1:74\n53#1:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u0010\u001a\u00020\u00052\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0012H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/BaseActivityUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        "()V",
        "root",
        "Landroid/widget/LinearLayout;",
        "getRoot",
        "()Landroid/widget/LinearLayout;",
        "setRoot",
        "(Landroid/widget/LinearLayout;)V",
        "toolbar",
        "Lcom/liber8tech/tago/android/view/StyledToolbar;",
        "getToolbar",
        "()Lcom/liber8tech/tago/android/view/StyledToolbar;",
        "setToolbar",
        "(Lcom/liber8tech/tago/android/view/StyledToolbar;)V",
        "createView",
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
.field public root:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public toolbar:Lcom/liber8tech/tago/android/view/StyledToolbar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;
    .locals 7
    .param p1    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "+",
            "Lcom/liber8tech/tago/android/activity/BaseActivity;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v0, p1

    check-cast v0, Landroid/view/ViewManager;

    .line 70
    sget-object v1, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    invoke-virtual {v1}, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->getVERTICAL_LAYOUT_FACTORY()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 71
    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v3, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v3, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    .line 72
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 73
    move-object v2, v1

    check-cast v2, Lorg/jetbrains/anko/_LinearLayout;

    .line 55
    move-object v3, v2

    check-cast v3, Landroid/view/ViewManager;

    .line 77
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    .line 76
    const-class v5, Lcom/liber8tech/tago/android/view/StyledToolbar;

    invoke-static {v4, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/liber8tech/tago/android/view/StyledToolbar;

    .line 56
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getOwner()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liber8tech/tago/android/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/liber8tech/tago/android/activity/BaseActivity;->getToolbarTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/StyledToolbar;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getOwner()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liber8tech/tago/android/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/liber8tech/tago/android/activity/BaseActivity;->getToolbarLeftIcon()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/StyledToolbar;->setLeftIcon(Ljava/lang/Integer;)V

    .line 58
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getOwner()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liber8tech/tago/android/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/liber8tech/tago/android/activity/BaseActivity;->getToolbarRightIcon()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/StyledToolbar;->setRightIcon(Ljava/lang/Integer;)V

    .line 59
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getOwner()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liber8tech/tago/android/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/liber8tech/tago/android/activity/BaseActivity;->getToolbarLeftIconClick()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/StyledToolbar;->setLeftIconOnCLick(Lkotlin/jvm/functions/Function1;)V

    .line 60
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getOwner()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liber8tech/tago/android/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/liber8tech/tago/android/activity/BaseActivity;->getToolbarRightIconClick()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/StyledToolbar;->setRightIconOnCLick(Lkotlin/jvm/functions/Function1;)V

    .line 61
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getOwner()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liber8tech/tago/android/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/liber8tech/tago/android/activity/BaseActivity;->getTitleOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/StyledToolbar;->setTitleIconOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 80
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v3, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 75
    iput-object v5, p0, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->toolbar:Lcom/liber8tech/tago/android/view/StyledToolbar;

    .line 63
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getOwner()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liber8tech/tago/android/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/jetbrains/anko/_LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    sget-object p1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p1, v0, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 83
    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->root:Landroid/widget/LinearLayout;

    .line 65
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->root:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    const-string v0, "root"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final getRoot()Landroid/widget/LinearLayout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->root:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v1, "root"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getToolbar()Lcom/liber8tech/tago/android/view/StyledToolbar;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->toolbar:Lcom/liber8tech/tago/android/view/StyledToolbar;

    if-nez v0, :cond_0

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setRoot(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->root:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final setToolbar(Lcom/liber8tech/tago/android/view/StyledToolbar;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/android/view/StyledToolbar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->toolbar:Lcom/liber8tech/tago/android/view/StyledToolbar;

    return-void
.end method
