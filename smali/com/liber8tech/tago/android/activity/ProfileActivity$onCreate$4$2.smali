.class final Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$2;
.super Ljava/lang/Object;
.source "ProfileActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->invoke(Landroid/view/View;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileActivity.kt\ncom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$2\n+ 2 Intents.kt\norg/jetbrains/anko/IntentsKt\n*L\n1#1,99:1\n31#2:100\n*E\n*S KotlinDebug\n*F\n+ 1 ProfileActivity.kt\ncom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$2\n*L\n78#1:100\n*E\n"
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$2;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$2;->accept(Lkotlin/Unit;)V

    return-void
.end method

.method public final accept(Lkotlin/Unit;)V
    .locals 13

    .line 70
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$2;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->$fromLogin:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_0

    .line 71
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$2;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "SignUpActivity"

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$2;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;

    move-result-object v1

    const-string v2, "Profile"

    const-string v3, "Auth"

    const-string v4, "Sign Up"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f8

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/liber8tech/tago/analytics/AnalyticsApi$DefaultImpls;->trackEvent$default(Lcom/liber8tech/tago/analytics/AnalyticsApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$2;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4$2;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    .line 100
    const-class v1, Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-static {p1, v1, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->internalStartActivity(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)V

    :goto_0
    return-void
.end method
