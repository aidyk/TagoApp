.class final Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1$2;
.super Ljava/lang/Object;
.source "AddTagoActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1;->invoke(Lcom/polidea/rxandroidble2/RxBleDevice;)V
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
        "error",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 13

    .line 57
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;

    move-result-object v1

    const-string v2, "Add Device"

    const-string v3, "Tago"

    const-string v4, "Add Tago"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f0

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/liber8tech/tago/analytics/AnalyticsApi$DefaultImpls;->trackEvent$default(Lcom/liber8tech/tago/analytics/AnalyticsApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;ILjava/lang/Object;)V

    .line 58
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 59
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/liber8tech/tago/util/AuthValidationKt;->showError(Landroid/app/Activity;Ljava/lang/Throwable;)V

    return-void
.end method
