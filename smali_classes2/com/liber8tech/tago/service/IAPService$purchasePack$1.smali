.class final Lcom/liber8tech/tago/service/IAPService$purchasePack$1;
.super Ljava/lang/Object;
.source "IAPService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/IAPService;->purchasePack(Landroid/app/Activity;Ljava/lang/String;)Lio/reactivex/Observable;
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
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $params:Lcom/android/billingclient/api/BillingFlowParams$Builder;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/IAPService$purchasePack$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/liber8tech/tago/service/IAPService$purchasePack$1;->$params:Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/billingclient/api/BillingClient;)I
    .locals 2
    .param p1    # Lcom/android/billingclient/api/BillingClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/liber8tech/tago/service/IAPService$purchasePack$1;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/liber8tech/tago/service/IAPService$purchasePack$1;->$params:Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/IAPService$purchasePack$1;->apply(Lcom/android/billingclient/api/BillingClient;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
