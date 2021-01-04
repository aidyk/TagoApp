.class final Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$2;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->clickSave()V
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
        "Lokhttp3/ResponseBody;",
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
        "Lokhttp3/ResponseBody;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$2;->this$0:Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$2;->accept(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public final accept(Lokhttp3/ResponseBody;)V
    .locals 12

    .line 88
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$2;->this$0:Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;

    move-result-object v0

    const-string v1, "Change Password"

    const-string v2, "Auth"

    const-string v3, "Change Password"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f8

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/liber8tech/tago/analytics/AnalyticsApi$DefaultImpls;->trackEvent$default(Lcom/liber8tech/tago/analytics/AnalyticsApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;ILjava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity$clickSave$2;->this$0:Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;->finish()V

    return-void
.end method
