.class final Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$initButton$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChangePasswordActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->initButton()V
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$initButton$1;->this$0:Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$initButton$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 79
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$initButton$1;->this$0:Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->access$clickSave(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)V

    return-void
.end method
