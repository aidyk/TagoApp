.class final Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivity;->setupCreatedPatternList()V
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
        "Ljava/util/List<",
        "+",
        "Lcom/liber8tech/tago/model/Pattern;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1\n*L\n1#1,625:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "createdPatternList",
        "",
        "Lcom/liber8tech/tago/model/Pattern;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/liber8tech/tago/model/Pattern;",
            ">;)V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/MainActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/MainActivity;)Lcom/liber8tech/tago/android/activity/MainActivityUI;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "createdPatternList"

    .line 266
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 267
    new-array v2, v3, [Lkotlin/Pair;

    const/4 v3, 0x0

    new-instance v4, Lkotlin/Pair;

    iget-object v5, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    const v6, 0x7f0f0084

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 269
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 270
    :goto_0
    new-instance v2, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$1;

    invoke-direct {v2, p0}, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$1;-><init>(Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 277
    new-instance v3, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$2;

    invoke-direct {v3, p0}, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$2;-><init>(Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 265
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/liber8tech/tago/android/activity/MainActivityUI;->setPatterns(Landroid/app/Activity;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
