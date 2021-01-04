.class public Lcom/android/billingclient/api/BillingFlowParams$Builder;
.super Ljava/lang/Object;
.source "BillingFlowParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mParams:Lcom/android/billingclient/api/BillingFlowParams;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/billingclient/api/BillingFlowParams;

    invoke-direct {v0}, Lcom/android/billingclient/api/BillingFlowParams;-><init>()V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mParams:Lcom/android/billingclient/api/BillingFlowParams;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingFlowParams$1;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addOldSku(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mParams:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingFlowParams;->access$300(Lcom/android/billingclient/api/BillingFlowParams;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mParams:Lcom/android/billingclient/api/BillingFlowParams;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$302(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mParams:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingFlowParams;->access$300(Lcom/android/billingclient/api/BillingFlowParams;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/android/billingclient/api/BillingFlowParams;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mParams:Lcom/android/billingclient/api/BillingFlowParams;

    return-object v0
.end method

.method public setAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mParams:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams;->access$502(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setOldSkus(Ljava/util/ArrayList;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/billingclient/api/BillingFlowParams$Builder;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mParams:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams;->access$302(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-object p0
.end method

.method public setReplaceSkusProration(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mParams:Lcom/android/billingclient/api/BillingFlowParams;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams;->access$402(Lcom/android/billingclient/api/BillingFlowParams;Z)Z

    return-object p0
.end method

.method public setSku(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mParams:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams;->access$102(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mParams:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams;->access$202(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setVrPurchaseFlow(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mParams:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-static {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams;->access$602(Lcom/android/billingclient/api/BillingFlowParams;Z)Z

    return-object p0
.end method
