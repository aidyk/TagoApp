.class final Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$4;
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
        "Ljava/lang/Throwable;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic $pattern:Lcom/liber8tech/tago/model/Pattern;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/model/Pattern;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$4;->$pattern:Lcom/liber8tech/tago/model/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$4;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 20

    move-object/from16 v0, p0

    .line 87
    iget-object v1, v0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/activity/SyncActivity;->getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;

    move-result-object v2

    const-string v3, "Sync"

    const-string v4, "Upload"

    const-string v5, "Firmware update"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1f8

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/liber8tech/tago/analytics/AnalyticsApi$DefaultImpls;->trackEvent$default(Lcom/liber8tech/tago/analytics/AnalyticsApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;ILjava/lang/Object;)V

    .line 88
    invoke-static/range {p1 .. p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 89
    iget-object v14, v0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    iget-object v15, v0, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$4;->$pattern:Lcom/liber8tech/tago/model/Pattern;

    const-wide/16 v16, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lcom/liber8tech/tago/android/activity/SyncActivity;->startPatternSync$default(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/model/Pattern;JILjava/lang/Object;)V

    return-void
.end method
