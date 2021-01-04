.class final Lcom/liber8tech/tago/android/activity/SignUpActivity$signUpClick$2;
.super Ljava/lang/Object;
.source "SignUpActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SignUpActivity;->signUpClick()V
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
        "Lcom/liber8tech/tago/service/SignInResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSignUpActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SignUpActivity.kt\ncom/liber8tech/tago/android/activity/SignUpActivity$signUpClick$2\n+ 2 Intents.kt\norg/jetbrains/anko/IntentsKt\n*L\n1#1,110:1\n31#2:111\n*E\n*S KotlinDebug\n*F\n+ 1 SignUpActivity.kt\ncom/liber8tech/tago/android/activity/SignUpActivity$signUpClick$2\n*L\n91#1:111\n*E\n"
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
        "Lcom/liber8tech/tago/service/SignInResponse;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SignUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SignUpActivity$signUpClick$2;->this$0:Lcom/liber8tech/tago/android/activity/SignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/liber8tech/tago/service/SignInResponse;)V
    .locals 12

    .line 90
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SignUpActivity$signUpClick$2;->this$0:Lcom/liber8tech/tago/android/activity/SignUpActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/SignUpActivity;->getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;

    move-result-object v0

    const-string v1, "Sign Up"

    const-string v2, "Auth"

    const-string v3, "Sign Up"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f8

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/liber8tech/tago/analytics/AnalyticsApi$DefaultImpls;->trackEvent$default(Lcom/liber8tech/tago/analytics/AnalyticsApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;ILjava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SignUpActivity$signUpClick$2;->this$0:Lcom/liber8tech/tago/android/activity/SignUpActivity;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    .line 111
    const-class v1, Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-static {p1, v1, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->internalStartActivity(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/liber8tech/tago/service/SignInResponse;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SignUpActivity$signUpClick$2;->accept(Lcom/liber8tech/tago/service/SignInResponse;)V

    return-void
.end method
