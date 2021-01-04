.class final Lcom/liber8tech/tago/service/IAPService$createConnection$1;
.super Ljava/lang/Object;
.source "IAPService.kt"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/IAPService;->createConnection(Landroid/content/Context;)Lio/reactivex/Observable;
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
        "Lcom/android/billingclient/api/BillingClient;",
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

.field final synthetic this$0:Lcom/liber8tech/tago/service/IAPService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/IAPService;Lcom/android/billingclient/api/BillingClient;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/IAPService$createConnection$1;->this$0:Lcom/liber8tech/tago/service/IAPService;

    iput-object p2, p0, Lcom/liber8tech/tago/service/IAPService$createConnection$1;->$billingClient:Lcom/android/billingclient/api/BillingClient;

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
            "Lcom/android/billingclient/api/BillingClient;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/liber8tech/tago/service/IAPService$createConnection$1;->$billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "billingClient"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/liber8tech/tago/service/IAPService$createConnection$1;->$billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 54
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/service/IAPService$createConnection$1;->this$0:Lcom/liber8tech/tago/service/IAPService;

    iget-object v1, p0, Lcom/liber8tech/tago/service/IAPService$createConnection$1;->$billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v2, "billingClient"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/liber8tech/tago/service/IAPService;->access$connect(Lcom/liber8tech/tago/service/IAPService;Lio/reactivex/ObservableEmitter;Lcom/android/billingclient/api/BillingClient;)V

    :goto_0
    return-void
.end method
