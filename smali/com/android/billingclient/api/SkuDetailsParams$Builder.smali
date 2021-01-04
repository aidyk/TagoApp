.class public Lcom/android/billingclient/api/SkuDetailsParams$Builder;
.super Ljava/lang/Object;
.source "SkuDetailsParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/SkuDetailsParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mParams:Lcom/android/billingclient/api/SkuDetailsParams;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/billingclient/api/SkuDetailsParams;

    invoke-direct {v0}, Lcom/android/billingclient/api/SkuDetailsParams;-><init>()V

    iput-object v0, p0, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->mParams:Lcom/android/billingclient/api/SkuDetailsParams;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/SkuDetailsParams$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/SkuDetailsParams;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->mParams:Lcom/android/billingclient/api/SkuDetailsParams;

    return-object v0
.end method

.method public setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/billingclient/api/SkuDetailsParams$Builder;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->mParams:Lcom/android/billingclient/api/SkuDetailsParams;

    invoke-static {v0, p1}, Lcom/android/billingclient/api/SkuDetailsParams;->access$102(Lcom/android/billingclient/api/SkuDetailsParams;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->mParams:Lcom/android/billingclient/api/SkuDetailsParams;

    invoke-static {v0, p1}, Lcom/android/billingclient/api/SkuDetailsParams;->access$202(Lcom/android/billingclient/api/SkuDetailsParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
