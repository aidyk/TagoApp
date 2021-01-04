.class final Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$5;
.super Ljava/lang/Object;
.source "ResetSyncActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ResetSyncActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/ResetSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 59
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/ResetSyncActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;

    move-result-object v1

    const-string v2, "Sync"

    const-string v3, "Tago"

    const-string v4, "Reset Tago"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f8

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/liber8tech/tago/analytics/AnalyticsApi$DefaultImpls;->trackEvent$default(Lcom/liber8tech/tago/analytics/AnalyticsApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;ILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/ResetSyncActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->setResult(I)V

    .line 61
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/ResetSyncActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->finish()V

    return-void
.end method
