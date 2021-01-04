.class final Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$4;
.super Lkotlin/jvm/internal/Lambda;
.source "TagoDetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTagoDetailsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagoDetailsActivity.kt\ncom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$4\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,98:1\n220#2,2:99\n262#2,2:101\n*E\n*S KotlinDebug\n*F\n+ 1 TagoDetailsActivity.kt\ncom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$4\n*L\n68#1,2:99\n69#1,2:101\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "view",
        "Landroid/view/View;",
        "hasFocus",
        "",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$4;->invoke(Landroid/view/View;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 68
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->getSaveButton()Landroid/widget/Button;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 p2, 0x0

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->getDeleteButton()Landroid/widget/Button;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 p2, 0x8

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->getSaveButton()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->callOnClick()Z

    :goto_0
    return-void
.end method
