.class final Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$1;
.super Ljava/lang/Object;
.source "PackActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->invoke(Landroid/view/View;)V
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
        "Lio/reactivex/ObservableSource<",
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
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "",
        "Lcom/android/billingclient/api/Purchase;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$1;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/billingclient/api/BillingClient;)Lio/reactivex/Observable;
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
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$1;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/PackActivity;->getIapService()Lcom/liber8tech/tago/service/IAPService;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$1;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$1;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;

    iget-object v1, v1, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->$currentPack:Lcom/liber8tech/tago/model/Pack;

    invoke-virtual {v1}, Lcom/liber8tech/tago/model/Pack;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/liber8tech/tago/service/IAPService;->purchasePack(Landroid/app/Activity;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$1;->apply(Lcom/android/billingclient/api/BillingClient;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
