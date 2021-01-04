.class final Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$4;
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
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a&\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Single;",
        "Lcom/android/billingclient/api/BillingClient;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/liber8tech/tago/android/activity/StoreAdapterData;",
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

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/liber8tech/tago/android/activity/StoreAdapterData;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Lcom/liber8tech/tago/android/activity/StoreAdapterData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/android/activity/StoreAdapterData;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/android/billingclient/api/BillingClient;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/StoreActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/StoreActivity;->getIapService()Lcom/liber8tech/tago/service/IAPService;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/StoreActivity;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/service/IAPService;->createConnection(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->singleOrError()Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/liber8tech/tago/android/activity/StoreAdapterData;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$4;->apply(Lcom/liber8tech/tago/android/activity/StoreAdapterData;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
