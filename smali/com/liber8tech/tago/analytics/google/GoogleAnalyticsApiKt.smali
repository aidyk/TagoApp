.class public final Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApiKt;
.super Ljava/lang/Object;
.source "GoogleAnalyticsApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u001a\u000c\u0010\u0000\u001a\u00020\u0003*\u00020\u0004H\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "toGoogle",
        "Lcom/google/android/gms/analytics/ecommerce/Product;",
        "Lcom/liber8tech/tago/analytics/Product;",
        "Lcom/google/android/gms/analytics/ecommerce/ProductAction;",
        "Lcom/liber8tech/tago/analytics/ProductAction;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public static final synthetic access$toGoogle(Lcom/liber8tech/tago/analytics/Product;)Lcom/google/android/gms/analytics/ecommerce/Product;
    .locals 0
    .param p0    # Lcom/liber8tech/tago/analytics/Product;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApiKt;->toGoogle(Lcom/liber8tech/tago/analytics/Product;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toGoogle(Lcom/liber8tech/tago/analytics/ProductAction;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;
    .locals 0
    .param p0    # Lcom/liber8tech/tago/analytics/ProductAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApiKt;->toGoogle(Lcom/liber8tech/tago/analytics/ProductAction;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object p0

    return-object p0
.end method

.method private static final toGoogle(Lcom/liber8tech/tago/analytics/Product;)Lcom/google/android/gms/analytics/ecommerce/Product;
    .locals 3
    .param p0    # Lcom/liber8tech/tago/analytics/Product;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 58
    new-instance v0, Lcom/google/android/gms/analytics/ecommerce/Product;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/ecommerce/Product;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getBrand()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setBrand(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getCategory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getCouponCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getCouponCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCouponCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getCustomDimension()Lcom/liber8tech/tago/analytics/Dimension;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getCustomDimension()Lcom/liber8tech/tago/analytics/Dimension;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/analytics/Dimension;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getCustomDimension()Lcom/liber8tech/tago/analytics/Dimension;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liber8tech/tago/analytics/Dimension;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getCustomMetric()Lcom/liber8tech/tago/analytics/ProductMetric;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getCustomMetric()Lcom/liber8tech/tago/analytics/ProductMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/analytics/ProductMetric;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getCustomMetric()Lcom/liber8tech/tago/analytics/ProductMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liber8tech/tago/analytics/ProductMetric;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCustomMetric(II)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 64
    :cond_4
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 66
    :cond_6
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getPosition()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setPosition(I)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 67
    :cond_7
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getQuantity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getQuantity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setQuantity(I)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 68
    :cond_8
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getVariant()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/Product;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/ecommerce/Product;->setVariant(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_9
    return-object v0
.end method

.method private static final toGoogle(Lcom/liber8tech/tago/analytics/ProductAction;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;
    .locals 3
    .param p0    # Lcom/liber8tech/tago/analytics/ProductAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 73
    new-instance v0, Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getCheckoutOptions()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getCheckoutOptions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setCheckoutOptions(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getCheckoutStep()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getCheckoutStep()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setCheckoutStep(I)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getProductActionList()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getProductActionList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setProductActionList(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getProductListSource()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getProductListSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setProductListSource(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 78
    :cond_3
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getTransactionAffiliation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getTransactionAffiliation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionAffiliation(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 79
    :cond_4
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getTransactionCouponCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getTransactionCouponCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionCouponCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 80
    :cond_5
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 81
    :cond_6
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getTransactionRevenue()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getTransactionRevenue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionRevenue(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 82
    :cond_7
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getTransactionShipping()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getTransactionShipping()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionShipping(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 83
    :cond_8
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getTransactionTax()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/ProductAction;->getTransactionTax()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionTax(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_9
    return-object v0
.end method
