.class public final Lcom/liber8tech/tago/service/IAPService$connect$1;
.super Ljava/lang/Object;
.source "IAPService.kt"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/IAPService;->connect(Lio/reactivex/ObservableEmitter;Lcom/android/billingclient/api/BillingClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/liber8tech/tago/service/IAPService$connect$1",
        "Lcom/android/billingclient/api/BillingClientStateListener;",
        "onBillingServiceDisconnected",
        "",
        "onBillingSetupFinished",
        "responseCode",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $billingClient:Lcom/android/billingclient/api/BillingClient;

.field final synthetic $emitter:Lio/reactivex/ObservableEmitter;

.field final synthetic this$0:Lcom/liber8tech/tago/service/IAPService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/IAPService;Lio/reactivex/ObservableEmitter;Lcom/android/billingclient/api/BillingClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter;",
            "Lcom/android/billingclient/api/BillingClient;",
            ")V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/liber8tech/tago/service/IAPService$connect$1;->this$0:Lcom/liber8tech/tago/service/IAPService;

    iput-object p2, p0, Lcom/liber8tech/tago/service/IAPService$connect$1;->$emitter:Lio/reactivex/ObservableEmitter;

    iput-object p3, p0, Lcom/liber8tech/tago/service/IAPService$connect$1;->$billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/liber8tech/tago/service/IAPService$connect$1;->this$0:Lcom/liber8tech/tago/service/IAPService;

    iget-object v1, p0, Lcom/liber8tech/tago/service/IAPService$connect$1;->$emitter:Lio/reactivex/ObservableEmitter;

    iget-object v2, p0, Lcom/liber8tech/tago/service/IAPService$connect$1;->$billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {v0, v1, v2}, Lcom/liber8tech/tago/service/IAPService;->access$connect(Lcom/liber8tech/tago/service/IAPService;Lio/reactivex/ObservableEmitter;Lcom/android/billingclient/api/BillingClient;)V

    return-void
.end method

.method public onBillingSetupFinished(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/liber8tech/tago/service/IAPService$connect$1;->$emitter:Lio/reactivex/ObservableEmitter;

    iget-object v0, p0, Lcom/liber8tech/tago/service/IAPService$connect$1;->$billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lcom/liber8tech/tago/service/IAPService$connect$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/service/IAPService$connect$1;->this$0:Lcom/liber8tech/tago/service/IAPService;

    iget-object v1, p0, Lcom/liber8tech/tago/service/IAPService$connect$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-static {v0, p1, v1}, Lcom/liber8tech/tago/service/IAPService;->access$handlePurchaseResponseIncomplete(Lcom/liber8tech/tago/service/IAPService;ILio/reactivex/ObservableEmitter;)V

    :goto_0
    return-void
.end method
