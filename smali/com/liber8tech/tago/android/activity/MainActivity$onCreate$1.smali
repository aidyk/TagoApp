.class final Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/liber8tech/tago/android/activity/MainActivity$onCreate$1\n+ 2 Intents.kt\norg/jetbrains/anko/IntentsKt\n*L\n1#1,625:1\n31#2:626\n*E\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/liber8tech/tago/android/activity/MainActivity$onCreate$1\n*L\n94#1:626\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 93
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/MainActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/MainActivity;)Lcom/liber8tech/tago/android/activity/MainActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/MainActivityUI;->getFabIsOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    .line 626
    const-class v1, Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {p1, v1, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->internalStartActivity(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/MainActivity;->getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;

    move-result-object v0

    const-string v1, "Main"

    const-string v2, "Main"

    const-string v3, "FAB expand"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f8

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/liber8tech/tago/analytics/AnalyticsApi$DefaultImpls;->trackEvent$default(Lcom/liber8tech/tago/analytics/AnalyticsApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;ILjava/lang/Object;)V

    .line 97
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/MainActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/MainActivity;)Lcom/liber8tech/tago/android/activity/MainActivityUI;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivityUI;->fabShow(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
