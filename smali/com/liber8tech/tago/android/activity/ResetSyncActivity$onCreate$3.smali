.class final Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$3;
.super Ljava/lang/Object;
.source "ResetSyncActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Ljava/lang/Long;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "accept",
        "(Ljava/lang/Long;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ResetSyncActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$3;->this$0:Lcom/liber8tech/tago/android/activity/ResetSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Long;)V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$3;->this$0:Lcom/liber8tech/tago/android/activity/ResetSyncActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-double v1, v1

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;->setProgress(D)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$3;->accept(Ljava/lang/Long;)V

    return-void
.end method
