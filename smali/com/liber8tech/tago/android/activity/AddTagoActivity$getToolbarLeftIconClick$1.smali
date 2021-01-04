.class final Lcom/liber8tech/tago/android/activity/AddTagoActivity$getToolbarLeftIconClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AddTagoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/AddTagoActivity;->getToolbarLeftIconClick()Lkotlin/jvm/functions/Function1;
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
        "<anonymous parameter 0>",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$getToolbarLeftIconClick$1;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/AddTagoActivity$getToolbarLeftIconClick$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$getToolbarLeftIconClick$1;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SignUpActivity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$getToolbarLeftIconClick$1;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
