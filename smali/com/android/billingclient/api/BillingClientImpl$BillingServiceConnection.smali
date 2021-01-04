.class final Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BillingServiceConnection"
.end annotation


# instance fields
.field private final mListener:Lcom/android/billingclient/api/BillingClientStateListener;

.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 0
    .param p1    # Lcom/android/billingclient/api/BillingClientImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 787
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 791
    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    return-void

    .line 789
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please specify a listener to know when init is done."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/BillingClientImpl$1;)V
    .locals 0

    .line 784
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    .line 804
    invoke-static {p1, v0}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->access$502(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 807
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->access$700(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 808
    iget-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$802(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 809
    iget-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$902(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 810
    iget-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$1002(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    const/4 p2, 0x0

    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    const-string v2, "subs"

    const/4 v3, 0x6

    invoke-interface {v1, v3, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string p1, "BillingClient"

    const-string v3, "In-app billing API version 6 with subs is supported."

    .line 826
    invoke-static {p1, v3}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$1002(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 828
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$802(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 829
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$902(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    goto/16 :goto_1

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    const-string v4, "inapp"

    invoke-interface {v1, v3, p1, v4}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BillingClient"

    const-string v3, "In-app billing API without subs version 6 supported."

    .line 837
    invoke-static {v1, v3}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$1002(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 844
    :cond_1
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    const/4 v3, 0x5

    const-string v4, "subs"

    invoke-interface {v1, v3, p1, v4}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "BillingClient"

    const-string v3, "In-app billing API version 5 supported."

    .line 847
    invoke-static {p1, v3}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$902(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 849
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$802(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    goto :goto_1

    .line 853
    :cond_2
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    const-string v3, "subs"

    const/4 v4, 0x3

    invoke-interface {v1, v4, p1, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "BillingClient"

    const-string v3, "In-app billing API version 3 with subscriptions is supported."

    .line 856
    invoke-static {p1, v3}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$802(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    goto :goto_1

    .line 859
    :cond_3
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$1000(Lcom/android/billingclient/api/BillingClientImpl;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    .line 867
    :cond_4
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 868
    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    const-string v2, "inapp"

    invoke-interface {v1, v4, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    const-string v1, "BillingClient"

    const-string v2, "In-app billing API version 3 with in-app items is supported."

    .line 871
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "BillingClient"

    const-string v2, "Even billing API version 3 is not supported on this device."

    .line 874
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v1, p1

    :goto_1
    if-nez v1, :cond_6

    .line 882
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$602(Lcom/android/billingclient/api/BillingClientImpl;I)I

    goto :goto_2

    .line 884
    :cond_6
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$602(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 885
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->access$502(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 887
    :goto_2
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-interface {p1, v1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v1, "BillingClient"

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while setting up in-app billing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$602(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 891
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->access$502(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 892
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(I)V

    :goto_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    .line 796
    invoke-static {p1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$502(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 798
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$602(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 799
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-interface {p1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V

    return-void
.end method
