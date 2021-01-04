.class Lcom/android/billingclient/api/BillingClientImpl;
.super Lcom/android/billingclient/api/BillingClient;
.source "BillingClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;,
        Lcom/android/billingclient/api/BillingClientImpl$ClientState;
    }
.end annotation


# static fields
.field private static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field private static final KEY_VR:Ljava/lang/String; = "vr"

.field private static final LIBRARY_VERSION:Ljava/lang/String; = "1.0"

.field private static final LIBRARY_VERSION_KEY:Ljava/lang/String; = "libraryVersion"

.field private static final MAX_SKU_DETAILS_ITEMS_PER_REQUEST:I = 0x14

.field private static final TAG:Ljava/lang/String; = "BillingClient"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

.field private mClientState:I

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIABv6Supported:Z

.field private mService:Lcom/android/vending/billing/IInAppBillingService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSubscriptionUpdateSupported:Z

.field private mSubscriptionsSupported:Z

.field private final mUiThreadHandler:Landroid/os/Handler;

.field private final onPurchaseFinishedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/billingclient/api/PurchasesUpdatedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 141
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUiThreadHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$1;

    invoke-direct {v0, p0}, Lcom/android/billingclient/api/BillingClientImpl$1;-><init>(Lcom/android/billingclient/api/BillingClientImpl;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->onPurchaseFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 143
    new-instance p1, Lcom/android/billingclient/api/BillingBroadcastManager;

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/android/billingclient/api/BillingBroadcastManager;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingBroadcastManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/billingclient/api/BillingClientImpl;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->consumeInternal(Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Z)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->queryPurchasesInternal(Ljava/lang/String;Z)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/billingclient/api/BillingClientImpl;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionsSupported:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionUpdateSupported:Z

    return p1
.end method

.method private constructExtraParams(Lcom/android/billingclient/api/BillingFlowParams;)Landroid/os/Bundle;
    .locals 3

    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 495
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams;->getReplaceSkusProration()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "replaceSkusProration"

    const/4 v2, 0x0

    .line 496
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 498
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams;->getAccountId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "accountId"

    .line 499
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams;->getVrPurchaseFlow()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "vr"

    const/4 v2, 0x1

    .line 502
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 504
    :cond_2
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSkus()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "skusToReplace"

    .line 505
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSkus()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    return-object v0
.end method

.method private consumeInternal(Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    const-string v0, "BillingClient"

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consuming purchase with token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 745
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 744
    invoke-interface {v0, v1, v2, p1}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "BillingClient"

    const-string v2, "Successfully consumed purchase."

    .line 748
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 750
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$5;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/billingclient/api/BillingClientImpl$5;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v1, "BillingClient"

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming purchase with token. Response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$6;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/billingclient/api/BillingClientImpl$6;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->postToUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 772
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$7;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/billingclient/api/BillingClientImpl$7;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/RemoteException;Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private executeAsync(Ljava/lang/Runnable;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 513
    sget v0, Lcom/android/billingclient/util/BillingHelper;->NUMBER_OF_CORES:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private generateVrBundle()Landroid/os/Bundle;
    .locals 3

    .line 543
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "vr"

    const/4 v2, 0x1

    .line 544
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private isBillingSupportedOnVr(Ljava/lang/String;)I
    .locals 4

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 525
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->generateVrBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 523
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupportedExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    :goto_0
    return p1

    :catch_0
    const-string p1, "BillingClient"

    const-string v0, "RemoteException while checking if billing is supported; try to reconnect"

    .line 532
    invoke-static {p1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method private postToUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private queryPurchasesInternal(Ljava/lang/String;Z)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v8, p2

    const-string v2, "BillingClient"

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Querying owned items, item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; history: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    move-object v6, v10

    :cond_0
    if-eqz v8, :cond_2

    .line 638
    :try_start_0
    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    if-nez v2, :cond_1

    const-string v0, "BillingClient"

    const-string v2, "getPurchaseHistory is not supported on current device"

    .line 639
    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    new-instance v0, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v10}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(ILjava/util/List;)V

    return-object v0

    .line 643
    :cond_1
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x6

    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 646
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v5, p1

    .line 644
    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getPurchaseHistory(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 651
    :cond_2
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 653
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 652
    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v3, 0x6

    if-nez v2, :cond_3

    const-string v0, "BillingClient"

    const-string v2, "queryPurchases got null owned items list"

    .line 662
    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    new-instance v0, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    invoke-direct {v0, v3, v10}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_3
    const-string v4, "BillingClient"

    .line 666
    invoke-static {v2, v4}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "BillingClient"

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPurchases() failed. Response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    new-instance v0, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    invoke-direct {v0, v4, v10}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_4
    const-string v4, "INAPP_PURCHASE_ITEM_LIST"

    .line 673
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    .line 674
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "INAPP_DATA_SIGNATURE_LIST"

    .line 675
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v4, "INAPP_PURCHASE_ITEM_LIST"

    .line 682
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "INAPP_PURCHASE_DATA_LIST"

    .line 684
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "INAPP_DATA_SIGNATURE_LIST"

    .line 686
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v4, :cond_6

    const-string v0, "BillingClient"

    const-string v2, "Bundle returned from getPurchases() contains null SKUs list."

    .line 689
    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    new-instance v0, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    invoke-direct {v0, v3, v10}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_6
    if-nez v5, :cond_7

    const-string v0, "BillingClient"

    const-string v2, "Bundle returned from getPurchases() contains null purchases list."

    .line 694
    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    new-instance v0, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    invoke-direct {v0, v3, v10}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_7
    if-nez v6, :cond_8

    const-string v0, "BillingClient"

    const-string v2, "Bundle returned from getPurchases() contains null signatures list."

    .line 700
    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    new-instance v0, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    invoke-direct {v0, v3, v10}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_8
    const/4 v11, 0x0

    .line 705
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_a

    .line 706
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 707
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 708
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "BillingClient"

    .line 710
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sku is owned: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :try_start_1
    new-instance v3, Lcom/android/billingclient/api/Purchase;

    invoke-direct {v3, v12, v13}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 719
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "BillingClient"

    const-string v12, "BUG: empty/null token!"

    .line 720
    invoke-static {v7, v12}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_9
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x6

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "BillingClient"

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got an exception trying to decode the purchase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    new-instance v0, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v10}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_a
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    .line 726
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "BillingClient"

    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuation token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    new-instance v0, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v9}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_b
    :goto_2
    const-string v0, "BillingClient"

    const-string v2, "Bundle returned from getPurchases() doesn\'t contain required fields."

    .line 676
    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    new-instance v0, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v10}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(ILjava/util/List;)V

    return-object v0

    :goto_3
    const-string v2, "BillingClient"

    .line 656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception trying to get purchases: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; try to reconnect"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    new-instance v0, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v10}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public consumeAsync(Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 2

    .line 444
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 445
    invoke-interface {p2, v0, v1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(ILjava/lang/String;)V

    .line 449
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BillingClient"

    const-string v1, "Please provide a valid purchase token got from queryPurchases result."

    .line 450
    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 452
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(ILjava/lang/String;)V

    return-void

    .line 456
    :cond_1
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$3;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public endConnection()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/billingclient/api/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/android/billingclient/api/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->onPurchaseFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingBroadcastManager;->destroy()V

    const/4 v0, 0x3

    .line 265
    iput v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    .line 266
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "BillingClient"

    const-string v2, "Unbinding from service."

    .line 267
    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 269
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 271
    :cond_0
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 272
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 274
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_1
    return-void
.end method

.method public isFeatureSupported(Ljava/lang/String;)I
    .locals 4

    .line 148
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 152
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x1928a0a1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const v2, 0x116ae57f

    if-eq v0, v2, :cond_3

    const v2, 0x48aff111

    if-eq v0, v2, :cond_2

    const v2, 0x7674caf6

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "subscriptions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "subscriptionsOnVr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const-string v0, "inAppItemsOnVr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const-string v0, "subscriptionsUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_0
    const/4 v0, -0x2

    packed-switch v1, :pswitch_data_0

    const-string v0, "BillingClient"

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    return p1

    :pswitch_0
    const-string p1, "subs"

    .line 165
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->isBillingSupportedOnVr(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_1
    const-string p1, "inapp"

    .line 162
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->isBillingSupportedOnVr(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 157
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionUpdateSupported:Z

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    :cond_6
    return v0

    .line 154
    :pswitch_3
    iget-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionsSupported:Z

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    :cond_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isReady()Z
    .locals 2

    .line 175
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    .line 284
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getSkuType()Ljava/lang/String;

    move-result-object v8

    .line 285
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getSku()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    if-nez v2, :cond_1

    const-string v1, "BillingClient"

    const-string v2, "Please fix the input params. SKU can\'t be null."

    .line 289
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    if-nez v8, :cond_2

    const-string v1, "BillingClient"

    const-string v2, "Please fix the input params. SkuType can\'t be null."

    .line 294
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 298
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSkus()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSkus()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v6, :cond_3

    const-string v1, "BillingClient"

    const-string v2, "Please fix the input params. OldSkus size can\'t be 0."

    .line 299
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_3
    const-string v4, "subs"

    .line 304
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x2

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionsSupported:Z

    if-nez v4, :cond_4

    const-string v1, "BillingClient"

    const-string v2, "Current client doesn\'t support subscriptions."

    .line 305
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 309
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSkus()Ljava/util/ArrayList;

    move-result-object v4

    const/16 v16, 0x0

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_6

    .line 311
    iget-boolean v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionUpdateSupported:Z

    if-nez v4, :cond_6

    const-string v1, "BillingClient"

    const-string v2, "Current client doesn\'t support subscriptions update."

    .line 312
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 316
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->hasExtraParams()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    if-nez v4, :cond_7

    const-string v1, "BillingClient"

    const-string v2, "Current client doesn\'t support extra params for buy intent."

    .line 317
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_7
    :try_start_0
    const-string v4, "BillingClient"

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Constructing buy intent for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", item type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-boolean v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    if-eqz v4, :cond_9

    move-object/from16 v4, p2

    .line 328
    invoke-direct {v0, v4}, Lcom/android/billingclient/api/BillingClientImpl;->constructExtraParams(Lcom/android/billingclient/api/BillingFlowParams;)Landroid/os/Bundle;

    move-result-object v10

    const-string v5, "libraryVersion"

    const-string v6, "1.0"

    .line 329
    invoke-virtual {v10, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getVrPurchaseFlow()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x7

    const/4 v5, 0x7

    goto :goto_1

    :cond_8
    const/4 v4, 0x6

    const/4 v5, 0x6

    .line 331
    :goto_1
    iget-object v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    iget-object v6, v0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 334
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    move-object v7, v2

    .line 332
    invoke-interface/range {v4 .. v10}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_2

    :cond_9
    move-object/from16 v4, p2

    if-eqz v6, :cond_a

    .line 341
    iget-object v9, v0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v10, 0x5

    iget-object v5, v0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 344
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 345
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSkus()Ljava/util/ArrayList;

    move-result-object v12

    const-string v14, "subs"

    const/4 v15, 0x0

    move-object v13, v2

    .line 342
    invoke-interface/range {v9 .. v15}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentToReplaceSkus(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_2

    .line 350
    :cond_a
    iget-object v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, v0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 353
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    move-object v7, v2

    .line 351
    invoke-interface/range {v4 .. v9}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    :goto_2
    const-string v5, "BillingClient"

    .line 359
    invoke-static {v4, v5}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_b

    const-string v1, "BillingClient"

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to buy item, Error response code: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 365
    :cond_b
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/billingclient/api/ProxyBillingActivity;

    invoke-direct {v5, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "BUY_INTENT"

    const-string v7, "BUY_INTENT"

    .line 366
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 371
    invoke-virtual {v1, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v16

    .line 373
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException while launching launching replace subscriptions flow: ; for sku: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; try to reconnect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BillingClient"

    .line 378
    invoke-static {v2, v1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 2

    .line 468
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 469
    invoke-interface {p2, v0, v1}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->onPurchaseHistoryResponse(ILjava/util/List;)V

    .line 473
    :cond_0
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$4;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 388
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(ILjava/util/List;)V

    return-object p1

    .line 392
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid SKU type."

    .line 393
    invoke-static {p1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    const/4 v0, 0x5

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->queryPurchasesInternal(Ljava/lang/String;Z)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object p1

    return-object p1
.end method

.method public querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 4

    .line 403
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 404
    invoke-interface {p2, v0, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(ILjava/util/List;)V

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->getSkuType()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->getSkusList()Ljava/util/List;

    move-result-object p1

    .line 412
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please fix the input params. SKU type can\'t be empty."

    .line 413
    invoke-static {p1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-interface {p2, v3, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(ILjava/util/List;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "BillingClient"

    const-string v0, "Please fix the input params. The list of SKUs can\'t be empty."

    .line 419
    invoke-static {p1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-interface {p2, v3, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(ILjava/util/List;)V

    return-void

    .line 424
    :cond_2
    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$2;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    invoke-direct {p0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method querySkuDetailsInternal(Ljava/lang/String;Ljava/util/List;)Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;
    .locals 12
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    add-int/lit8 v4, v3, 0x14

    if-le v4, v1, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v4

    .line 560
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p2, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 561
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "ITEM_ID_LIST"

    .line 562
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v5, "libraryVersion"

    const-string v6, "1.0"

    .line 563
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 566
    :try_start_0
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 567
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, p1, v3}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x4

    if-nez v3, :cond_1

    const-string p1, "BillingClient"

    const-string p2, "querySkuDetailsAsync got null sku details list"

    .line 576
    invoke-static {p1, p2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance p1, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    invoke-direct {p1, v6, v5}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_1
    const-string v7, "DETAILS_LIST"

    .line 580
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x6

    if-nez v7, :cond_3

    const-string p1, "BillingClient"

    .line 582
    invoke-static {v3, p1}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    const-string p2, "BillingClient"

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSkuDetails() failed. Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    new-instance p2, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    invoke-direct {p2, p1, v0}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/util/List;)V

    return-object p2

    :cond_2
    const-string p1, "BillingClient"

    const-string p2, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 588
    invoke-static {p1, p2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    new-instance p1, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    invoke-direct {p1, v8, v0}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_3
    const-string v7, "DETAILS_LIST"

    .line 596
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_4

    const-string p1, "BillingClient"

    const-string p2, "querySkuDetailsAsync got null response list"

    .line 599
    invoke-static {p1, p2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    new-instance p1, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    invoke-direct {p1, v6, v5}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_4
    const/4 v6, 0x0

    .line 603
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 604
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 607
    :try_start_1
    new-instance v9, Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {v9, v7}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "BillingClient"

    .line 612
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got sku details: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_0
    const-string p1, "BillingClient"

    const-string p2, "Got a JSON exception trying to decode SkuDetails"

    .line 609
    invoke-static {p1, p2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    new-instance p1, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    invoke-direct {p1, v8, v5}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_5
    move v3, v4

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 569
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "querySkuDetailsAsync got a remote exception (try to reconnect): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BillingClient"

    .line 570
    invoke-static {p2, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    new-instance p1, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    const/4 p2, -0x1

    invoke-direct {p1, p2, v5}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/util/List;)V

    return-object p1

    .line 620
    :cond_6
    new-instance p1, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    invoke-direct {p1, v2, v0}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/util/List;)V

    return-object p1
.end method

.method public startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 7
    .param p1    # Lcom/android/billingclient/api/BillingClientStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 180
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "BillingClient"

    const-string v2, "Service connection is valid. No need to re-initialize."

    .line 181
    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(I)V

    return-void

    .line 186
    :cond_0
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, "BillingClient"

    const-string v1, "Client is already in the process of connecting to billing service."

    .line 187
    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(I)V

    return-void

    .line 193
    :cond_1
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    const-string v0, "BillingClient"

    const-string v1, "Client was already closed and can\'t be reused. Please create another instance."

    .line 194
    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(I)V

    return-void

    .line 201
    :cond_2
    iput v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    .line 204
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingBroadcastManager;->registerReceiver()V

    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "proxy_activity_response_intent_action"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/billingclient/api/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/android/billingclient/api/LocalBroadcastManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->onPurchaseFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    invoke-virtual {v2, v5, v0}, Lcom/android/billingclient/api/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string v0, "BillingClient"

    const-string v2, "Starting in-app billing setup."

    .line 213
    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/BillingClientImpl$1;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending"

    .line 217
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 219
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 221
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 223
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 224
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_5

    .line 225
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 226
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v6, "com.android.vending"

    .line 227
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 228
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 234
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "libraryVersion"

    const-string v5, "1.0"

    .line 235
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 237
    invoke-virtual {v0, v2, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "BillingClient"

    const-string v0, "Service was bonded successfully."

    .line 241
    invoke-static {p1, v0}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "BillingClient"

    const-string v2, "Connection to Billing service is blocked."

    .line 246
    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "BillingClient"

    const-string v2, "The device doesn\'t have valid Play Store."

    .line 250
    invoke-static {v0, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_5
    :goto_0
    iput v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    const-string v0, "BillingClient"

    const-string v1, "Billing service unavailable on device."

    .line 256
    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-interface {p1, v4}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(I)V

    return-void
.end method
