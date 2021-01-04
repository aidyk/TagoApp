.class Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BillingBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BillingBroadcastReceiver"
.end annotation


# instance fields
.field private final mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field final synthetic this$0:Lcom/android/billingclient/api/BillingBroadcastManager;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/BillingBroadcastManager;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 0
    .param p1    # Lcom/android/billingclient/api/BillingBroadcastManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    iput-object p1, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->this$0:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingBroadcastManager;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingBroadcastManager$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;-><init>(Lcom/android/billingclient/api/BillingBroadcastManager;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;)Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "BillingBroadcastManager"

    .line 77
    invoke-static {p2, p1}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromIntent(Landroid/content/Intent;Ljava/lang/String;)I

    move-result p1

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/android/billingclient/util/BillingHelper;->extractPurchases(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    .line 79
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(ILjava/util/List;)V

    return-void
.end method
