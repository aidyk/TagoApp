.class final Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$5;
.super Ljava/lang/Object;
.source "StoreActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/StoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/SingleSource<",
        "+TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002 \u0004*\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Single;",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/android/billingclient/api/BillingClient;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/StoreActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/StoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/billingclient/api/BillingClient;)Lio/reactivex/Single;
    .locals 2
    .param p1    # Lcom/android/billingclient/api/BillingClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingClient;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/StoreActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/StoreActivity;->getIapService()Lcom/liber8tech/tago/service/IAPService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/IAPService;->queryPurchases(Lcom/android/billingclient/api/BillingClient;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/StoreActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/StoreActivity;->getImageService()Lcom/liber8tech/tago/service/ImageEditorService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/service/ImageEditorService;->getLocalPurchasePatternId()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    sget-object v1, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$5$1;->INSTANCE:Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$5$1;

    check-cast v1, Lio/reactivex/functions/BiFunction;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->zipWith(Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lio/reactivex/Observable;->singleOrError()Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$5;->apply(Lcom/android/billingclient/api/BillingClient;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
