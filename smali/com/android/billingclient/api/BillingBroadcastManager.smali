.class Lcom/android/billingclient/api/BillingBroadcastManager;
.super Ljava/lang/Object;
.source "BillingBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.android.vending.billing.PURCHASES_UPDATED"

.field private static final TAG:Ljava/lang/String; = "BillingBroadcastManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 1
    .param p2    # Lcom/android/billingclient/api/PurchasesUpdatedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;-><init>(Lcom/android/billingclient/api/BillingBroadcastManager;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingBroadcastManager$1;)V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mReceiver:Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 4

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mReceiver:Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BillingBroadcastManager"

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver was already unregistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method getListener()Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mReceiver:Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->access$100(Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    return-object v0
.end method

.method registerReceiver()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingBroadcastManager;->mReceiver:Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
