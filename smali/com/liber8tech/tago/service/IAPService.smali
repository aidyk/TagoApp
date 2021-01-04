.class public final Lcom/liber8tech/tago/service/IAPService;
.super Ljava/lang/Object;
.source "IAPService.kt"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u001c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0012J(\u0010\u0018\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010\u0019*\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00190\nH\u0002J \u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00142\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001eH\u0016J\"\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u000e2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0012J\u001a\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u000e2\u0006\u0010\u000c\u001a\u00020\u000bR\u001c\u0010\u0003\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/IAPService;",
        "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
        "()V",
        "purchaseUpdateSubject",
        "Lio/reactivex/subjects/PublishSubject;",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "connect",
        "",
        "emitter",
        "Lio/reactivex/ObservableEmitter;",
        "Lcom/android/billingclient/api/BillingClient;",
        "billingClient",
        "createConnection",
        "Lio/reactivex/Observable;",
        "ctx",
        "Landroid/content/Context;",
        "getIAPErrorType",
        "",
        "code",
        "",
        "getPackDetails",
        "Lcom/android/billingclient/api/SkuDetails;",
        "sku",
        "handlePurchaseResponseIncomplete",
        "T",
        "",
        "onPurchasesUpdated",
        "responseCode",
        "purchases",
        "",
        "purchasePack",
        "activity",
        "Landroid/app/Activity;",
        "skuID",
        "queryPurchases",
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
.field private purchaseUpdateSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$connect(Lcom/liber8tech/tago/service/IAPService;Lio/reactivex/ObservableEmitter;Lcom/android/billingclient/api/BillingClient;)V
    .locals 0
    .param p1    # Lio/reactivex/ObservableEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/billingclient/api/BillingClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/liber8tech/tago/service/IAPService;->connect(Lio/reactivex/ObservableEmitter;Lcom/android/billingclient/api/BillingClient;)V

    return-void
.end method

.method public static final synthetic access$getIAPErrorType(Lcom/liber8tech/tago/service/IAPService;I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/service/IAPService;->getIAPErrorType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPurchaseUpdateSubject$p(Lcom/liber8tech/tago/service/IAPService;)Lio/reactivex/subjects/PublishSubject;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/liber8tech/tago/service/IAPService;->purchaseUpdateSubject:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$handlePurchaseResponseIncomplete(Lcom/liber8tech/tago/service/IAPService;ILio/reactivex/ObservableEmitter;)V
    .locals 0
    .param p2    # Lio/reactivex/ObservableEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/liber8tech/tago/service/IAPService;->handlePurchaseResponseIncomplete(ILio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static final synthetic access$setPurchaseUpdateSubject$p(Lcom/liber8tech/tago/service/IAPService;Lio/reactivex/subjects/PublishSubject;)V
    .locals 0
    .param p1    # Lio/reactivex/subjects/PublishSubject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 17
    iput-object p1, p0, Lcom/liber8tech/tago/service/IAPService;->purchaseUpdateSubject:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method private final connect(Lio/reactivex/ObservableEmitter;Lcom/android/billingclient/api/BillingClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/android/billingclient/api/BillingClient;",
            ">;",
            "Lcom/android/billingclient/api/BillingClient;",
            ")V"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/liber8tech/tago/service/IAPService$connect$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/liber8tech/tago/service/IAPService$connect$1;-><init>(Lcom/liber8tech/tago/service/IAPService;Lio/reactivex/ObservableEmitter;Lcom/android/billingclient/api/BillingClient;)V

    check-cast v0, Lcom/android/billingclient/api/BillingClientStateListener;

    .line 62
    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method private final getIAPErrorType(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 46
    :pswitch_0
    sget-object p1, Lcom/liber8tech/tago/service/IAPError;->ERROR:Lcom/liber8tech/tago/service/IAPError;

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/IAPError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 41
    :pswitch_1
    sget-object p1, Lcom/liber8tech/tago/service/IAPError;->ITEM_NOT_OWNED:Lcom/liber8tech/tago/service/IAPError;

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/IAPError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 40
    :pswitch_2
    sget-object p1, Lcom/liber8tech/tago/service/IAPError;->ITEM_ALREADY_OWNED:Lcom/liber8tech/tago/service/IAPError;

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/IAPError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 36
    :pswitch_3
    sget-object p1, Lcom/liber8tech/tago/service/IAPError;->ERROR:Lcom/liber8tech/tago/service/IAPError;

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/IAPError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 38
    :pswitch_4
    sget-object p1, Lcom/liber8tech/tago/service/IAPError;->DEVELOPER_ERROR:Lcom/liber8tech/tago/service/IAPError;

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/IAPError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 42
    :pswitch_5
    sget-object p1, Lcom/liber8tech/tago/service/IAPError;->ITEM_UNAVAILABLE:Lcom/liber8tech/tago/service/IAPError;

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/IAPError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 37
    :pswitch_6
    sget-object p1, Lcom/liber8tech/tago/service/IAPError;->BILLING_UNAVAILABLE:Lcom/liber8tech/tago/service/IAPError;

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/IAPError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 44
    :pswitch_7
    sget-object p1, Lcom/liber8tech/tago/service/IAPError;->SERVICE_UNAVAILABLE:Lcom/liber8tech/tago/service/IAPError;

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/IAPError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 45
    :pswitch_8
    sget-object p1, Lcom/liber8tech/tago/service/IAPError;->USER_CANCELED:Lcom/liber8tech/tago/service/IAPError;

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/IAPError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 43
    :pswitch_9
    sget-object p1, Lcom/liber8tech/tago/service/IAPError;->SERVICE_DISCONNECTED:Lcom/liber8tech/tago/service/IAPError;

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/IAPError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 39
    :pswitch_a
    sget-object p1, Lcom/liber8tech/tago/service/IAPError;->FEATURE_NOT_SUPPORTED:Lcom/liber8tech/tago/service/IAPError;

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/IAPError;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final handlePurchaseResponseIncomplete(ILio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lcom/liber8tech/tago/service/IAPService;->getIAPErrorType(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p2, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final createConnection(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/android/billingclient/api/BillingClient;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/liber8tech/tago/service/IAPService$createConnection$1;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/service/IAPService$createConnection$1;-><init>(Lcom/liber8tech/tago/service/IAPService;Lcom/android/billingclient/api/BillingClient;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create({ emit\u2026ingClient)\n      }\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getPackDetails(Lcom/android/billingclient/api/BillingClient;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Lcom/android/billingclient/api/BillingClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingClient;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/liber8tech/tago/android/TagoApplication;->Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/TagoApplication$Companion;->getMock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance p1, Lcom/android/billingclient/api/SkuDetails;

    const-string/jumbo p2, "{\"productId\":\"temples.tago.liber8tech.com\",\"type\":\"inapp\",\"price\":\"\u20ac7.99\",\"price_currency_code\":\"EUR\",\"title\":\"Temples pack\",\"description\":\"Pattern of temples\"}"

    invoke-direct {p1, p2}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.just(SkuDetai\u2026\"Pattern of temples\\\"}\"))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/liber8tech/tago/service/IAPService$getPackDetails$1;-><init>(Lcom/liber8tech/tago/service/IAPService;Ljava/lang/String;Lcom/android/billingclient/api/BillingClient;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create({ emit\u2026    }\n        })\n      })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public onPurchasesUpdated(ILjava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 24
    iget-object p1, p0, Lcom/liber8tech/tago/service/IAPService;->purchaseUpdateSubject:Lio/reactivex/subjects/PublishSubject;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/service/IAPService;->purchaseUpdateSubject:Lio/reactivex/subjects/PublishSubject;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    :cond_1
    const/4 p1, 0x0

    .line 26
    check-cast p1, Lio/reactivex/subjects/PublishSubject;

    iput-object p1, p0, Lcom/liber8tech/tago/service/IAPService;->purchaseUpdateSubject:Lio/reactivex/subjects/PublishSubject;

    :cond_2
    return-void
.end method

.method public final purchasePack(Landroid/app/Activity;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSku(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    const-string v0, "inapp"

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    .line 81
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/service/IAPService;->createConnection(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/liber8tech/tago/service/IAPService$purchasePack$1;

    invoke-direct {v1, p1, p2}, Lcom/liber8tech/tago/service/IAPService$purchasePack$1;-><init>(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams$Builder;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 83
    new-instance p2, Lcom/liber8tech/tago/service/IAPService$purchasePack$2;

    invoke-direct {p2, p0}, Lcom/liber8tech/tago/service/IAPService$purchasePack$2;-><init>(Lcom/liber8tech/tago/service/IAPService;)V

    check-cast p2, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "createConnection(activit\u2026e(it)))\n        }\n      }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final queryPurchases(Lcom/android/billingclient/api/BillingClient;)Lio/reactivex/Observable;
    .locals 4
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

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/liber8tech/tago/android/TagoApplication;->Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/TagoApplication$Companion;->getMock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    .line 95
    new-array p1, p1, [Lcom/android/billingclient/api/Purchase;

    const/4 v0, 0x0

    .line 96
    new-instance v1, Lcom/android/billingclient/api/Purchase;

    const-string/jumbo v2, "{\"packageName\":\"com.liber8tech.tago\",\"orderId\":\"transactionId.android.test.purchased\",\"productId\":\"temples.tago.liber8tech.com\",\"developerPayload\":\"\",\"purchaseTime\":0,\"purchaseState\":0,\"purchaseToken\":\"inapp:com.liber8tech.tago:android.test.purchased\"}"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, p1, v0

    const/4 v0, 0x1

    .line 97
    new-instance v1, Lcom/android/billingclient/api/Purchase;

    const-string/jumbo v2, "{\"packageName\":\"com.liber8tech.tago\",\"orderId\":\"transactionId.android.test.purchased\",\"productId\":\"assassins.tago.liber8tech.com\",\"developerPayload\":\"\",\"purchaseTime\":0,\"purchaseState\":0,\"purchaseToken\":\"inapp:com.liber8tech.tago:android.test.purchased\"}"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, p1, v0

    const/4 v0, 0x2

    .line 98
    new-instance v1, Lcom/android/billingclient/api/Purchase;

    const-string/jumbo v2, "{\"packageName\":\"com.liber8tech.tago\",\"orderId\":\"transactionId.android.test.purchased\",\"productId\":\"car.tago.liber8tech.com\",\"developerPayload\":\"\",\"purchaseTime\":0,\"purchaseState\":0,\"purchaseToken\":\"inapp:com.liber8tech.tago:android.test.purchased\"}"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, p1, v0

    .line 95
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.just(listOf(\n\u2026test.purchased\\\"}\", \"\")))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 100
    :cond_0
    new-instance v0, Lcom/liber8tech/tago/service/IAPService$queryPurchases$1;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/service/IAPService$queryPurchases$1;-><init>(Lcom/liber8tech/tago/service/IAPService;Lcom/android/billingclient/api/BillingClient;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create({ emit\u2026    }\n        })\n      })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
