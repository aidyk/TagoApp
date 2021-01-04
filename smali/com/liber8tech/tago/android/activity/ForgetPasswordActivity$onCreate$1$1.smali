.class final Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$1;
.super Ljava/lang/Object;
.source "ForgetPasswordActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->invoke(Landroid/view/View;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForgetPasswordActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForgetPasswordActivity.kt\ncom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$1\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,66:1\n75#2:67\n*E\n*S KotlinDebug\n*F\n+ 1 ForgetPasswordActivity.kt\ncom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$1\n*L\n40#1:67\n*E\n"
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$1;->accept(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public final accept(Lokhttp3/ResponseBody;)V
    .locals 12

    .line 39
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;

    move-result-object v0

    const-string v1, "Sign In"

    const-string v2, "Auth"

    const-string v3, "Forgot Password"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f8

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/liber8tech/tago/analytics/AnalyticsApi$DefaultImpls;->trackEvent$default(Lcom/liber8tech/tago/analytics/AnalyticsApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;ILjava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    const v1, 0x7f0f00a2

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.forget_password_response)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;

    iget-object v1, v1, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    const v2, 0x1020002

    .line 67
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(id)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p1, v0, v1}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->tintedSnack(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
