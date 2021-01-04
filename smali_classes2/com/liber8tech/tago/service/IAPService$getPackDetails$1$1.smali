.class final Lcom/liber8tech/tago/service/IAPService$getPackDetails$1$1;
.super Ljava/lang/Object;
.source "IAPService.kt"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIAPService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IAPService.kt\ncom/liber8tech/tago/service/IAPService$getPackDetails$1$1\n*L\n1#1,153:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032*\u0010\u0004\u001a&\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006 \u0007*\u0012\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\u00080\u0005H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "responseCode",
        "",
        "skuDetailsList",
        "",
        "Lcom/android/billingclient/api/SkuDetails;",
        "kotlin.jvm.PlatformType",
        "",
        "onSkuDetailsResponse"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $emitter:Lio/reactivex/ObservableEmitter;

.field final synthetic this$0:Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1$1;->this$0:Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;

    iput-object p2, p0, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSkuDetailsResponse(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const-string p1, "skuDetailsList"

    .line 125
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1$1;->$emitter:Lio/reactivex/ObservableEmitter;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 127
    iget-object p1, p0, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "The purchased list is empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object p2, p0, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1$1;->this$0:Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;

    iget-object p2, p2, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;->this$0:Lcom/liber8tech/tago/service/IAPService;

    iget-object v0, p0, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1$1;->$emitter:Lio/reactivex/ObservableEmitter;

    const-string v1, "emitter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1, v0}, Lcom/liber8tech/tago/service/IAPService;->access$handlePurchaseResponseIncomplete(Lcom/liber8tech/tago/service/IAPService;ILio/reactivex/ObservableEmitter;)V

    :goto_0
    return-void
.end method
