.class final Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;
.super Ljava/lang/Object;
.source "IAPService.kt"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/IAPService;->getPackDetails(Lcom/android/billingclient/api/BillingClient;Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "emitter",
        "Lio/reactivex/ObservableEmitter;",
        "Lcom/android/billingclient/api/SkuDetails;",
        "kotlin.jvm.PlatformType",
        "subscribe"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $billingClient:Lcom/android/billingclient/api/BillingClient;

.field final synthetic $sku:Ljava/lang/String;

.field final synthetic this$0:Lcom/liber8tech/tago/service/IAPService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/IAPService;Ljava/lang/String;Lcom/android/billingclient/api/BillingClient;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;->this$0:Lcom/liber8tech/tago/service/IAPService;

    iput-object p2, p0, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;->$sku:Ljava/lang/String;

    iput-object p3, p0, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;->$billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .param p1    # Lio/reactivex/ObservableEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;->$sku:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;->$billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1$1;

    invoke-direct {v2, p0, p1}, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1$1;-><init>(Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;Lio/reactivex/ObservableEmitter;)V

    check-cast v2, Lcom/android/billingclient/api/SkuDetailsResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method
