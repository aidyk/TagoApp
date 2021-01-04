.class final Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->accept(Ljava/util/List;)V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$1\n+ 2 Intents.kt\norg/jetbrains/anko/IntentsKt\n*L\n1#1,625:1\n31#2:626\n*E\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$1\n*L\n273#1:626\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "view",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-static {v0, p1}, Lcom/liber8tech/tago/android/activity/MainActivity;->access$setLastSelected$p(Lcom/liber8tech/tago/android/activity/MainActivity;Landroid/view/View;)V

    .line 272
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/MainActivity;->getLocationService()Lcom/liber8tech/tago/service/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/service/LocationService;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    new-instance v3, Lkotlin/Pair;

    const-string v4, "Pattern"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 626
    const-class p1, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {v0, p1, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->internalStartActivity(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/MainActivity;->getLocationService()Lcom/liber8tech/tago/service/LocationService;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/service/LocationService;->requestPermission(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
