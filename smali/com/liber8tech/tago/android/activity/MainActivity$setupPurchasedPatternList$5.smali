.class final Lcom/liber8tech/tago/android/activity/MainActivity$setupPurchasedPatternList$5;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivity;->setupPurchasedPatternList()V
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
.field final synthetic $patternMap:Ljava/util/Map;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/MainActivity;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupPurchasedPatternList$5;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupPurchasedPatternList$5;->$patternMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 300
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupPurchasedPatternList$5;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/MainActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/MainActivity;)Lcom/liber8tech/tago/android/activity/MainActivityUI;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupPurchasedPatternList$5;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    check-cast v1, Landroid/app/Activity;

    .line 302
    iget-object v2, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupPurchasedPatternList$5;->$patternMap:Ljava/util/Map;

    invoke-static {v2}, Lkotlin/collections/MapsKt;->toSortedMap(Ljava/util/Map;)Ljava/util/SortedMap;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 303
    new-instance v3, Lcom/liber8tech/tago/android/activity/MainActivity$setupPurchasedPatternList$5$1;

    invoke-direct {v3, p0}, Lcom/liber8tech/tago/android/activity/MainActivity$setupPurchasedPatternList$5$1;-><init>(Lcom/liber8tech/tago/android/activity/MainActivity$setupPurchasedPatternList$5;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    .line 300
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liber8tech/tago/android/activity/MainActivityUI;->setPatterns(Landroid/app/Activity;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
