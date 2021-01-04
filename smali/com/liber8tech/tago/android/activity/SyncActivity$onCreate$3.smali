.class final Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$3;
.super Ljava/lang/Object;
.source "SyncActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SyncActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/liber8tech/tago/model/SyncState;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/liber8tech/tago/model/SyncState;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SyncActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$3;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/liber8tech/tago/model/SyncState;)V
    .locals 6

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$3;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/SyncActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/SyncActivity;)Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liber8tech/tago/model/SyncState;->getProgress()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/liber8tech/tago/model/SyncState;->getProgress()D

    move-result-wide v3

    :goto_0
    invoke-virtual {v0, v3, v4}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->setProgressValue(D)V

    .line 85
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$3;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/SyncActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/SyncActivity;)Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->getDetailText()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$3;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    const v1, 0x7f0f00a0

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/activity/SyncActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/liber8tech/tago/model/SyncState;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$3;->accept(Lcom/liber8tech/tago/model/SyncState;)V

    return-void
.end method
