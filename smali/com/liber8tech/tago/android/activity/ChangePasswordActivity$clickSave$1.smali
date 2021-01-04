.class final Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$1;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->clickSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$1;->this$0:Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$1;->this$0:Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;

    sget v1, Lcom/liber8tech/tago/R$id;->changeProgressBar:I

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "changeProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
