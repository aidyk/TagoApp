.class final Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1$1;
.super Ljava/lang/Object;
.source "TagoDetailsActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1;->invoke(Landroid/view/View;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "kotlin.jvm.PlatformType",
        "accept",
        "(Lkotlin/Unit;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1$1;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1$1;->accept(Lkotlin/Unit;)V

    return-void
.end method

.method public final accept(Lkotlin/Unit;)V
    .locals 12

    .line 55
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1$1;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;

    move-result-object v0

    const-string v1, "Change Password"

    const-string v2, "Tago"

    const-string v3, "Delete Tago"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f8

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/liber8tech/tago/analytics/AnalyticsApi$DefaultImpls;->trackEvent$default(Lcom/liber8tech/tago/analytics/AnalyticsApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;ILjava/lang/Object;)V

    .line 56
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1$1;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->finish()V

    return-void
.end method
