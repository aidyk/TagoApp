.class public final Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;
.super Ljava/lang/Object;
.source "GoogleAnalyticsApi.kt"

# interfaces
.implements Lcom/liber8tech/tago/analytics/AnalyticsApi;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoogleAnalyticsApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleAnalyticsApi.kt\ncom/liber8tech/tago/analytics/google/GoogleAnalyticsApi\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,86:1\n10667#2,2:87\n10667#2,2:89\n10667#2,2:91\n10667#2,2:93\n10667#2,2:95\n10667#2,2:97\n*E\n*S KotlinDebug\n*F\n+ 1 GoogleAnalyticsApi.kt\ncom/liber8tech/tago/analytics/google/GoogleAnalyticsApi\n*L\n28#1,2:87\n29#1,2:89\n30#1,2:91\n41#1,2:93\n42#1,2:95\n43#1,2:97\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J(\u0010\u0010\u001a\u00020\r2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u0014H\u0002Jy\u0010\u0015\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001c2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u001c2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016Jy\u0010&\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00122\u0008\u0010\'\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001c2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u001c2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0002\u0010$R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;",
        "Lcom/liber8tech/tago/analytics/AnalyticsApi;",
        "ctx",
        "Landroid/content/Context;",
        "xmlRes",
        "",
        "(Landroid/content/Context;I)V",
        "analytics",
        "Lcom/google/android/gms/analytics/GoogleAnalytics;",
        "kotlin.jvm.PlatformType",
        "tracker",
        "Lcom/google/android/gms/analytics/Tracker;",
        "enableDryRun",
        "",
        "enable",
        "",
        "send",
        "screen",
        "",
        "map",
        "",
        "trackEvent",
        "category",
        "action",
        "label",
        "value",
        "",
        "dimensions",
        "",
        "Lcom/liber8tech/tago/analytics/Dimension;",
        "metrics",
        "Lcom/liber8tech/tago/analytics/Metric;",
        "products",
        "Lcom/liber8tech/tago/analytics/Product;",
        "productAction",
        "Lcom/liber8tech/tago/analytics/ProductAction;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;)V",
        "trackScreen",
        "trackTiming",
        "variable",
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
.field private final analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final tracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    iput-object p1, p0, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 11
    iget-object p1, p0, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    iput-object p1, p0, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 14
    iget-object p1, p0, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 15
    iget-object p1, p0, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    return-void
.end method

.method private final send(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 51
    iget-object p1, p0, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic send$default(Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 48
    check-cast p1, Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->send(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public enableDryRun(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # [Lcom/liber8tech/tago/analytics/Dimension;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # [Lcom/liber8tech/tago/analytics/Metric;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # [Lcom/liber8tech/tago/analytics/Product;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/liber8tech/tago/analytics/ProductAction;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 23
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    :cond_0
    if-eqz p3, :cond_1

    .line 25
    invoke-virtual {v0, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    :cond_1
    if-eqz p4, :cond_2

    .line 26
    invoke-virtual {v0, p4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    :cond_2
    if-eqz p5, :cond_3

    .line 27
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    :cond_3
    const/4 p2, 0x0

    if-eqz p6, :cond_4

    .line 87
    array-length p3, p6

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_4

    aget-object p5, p6, p4

    .line 28
    invoke-virtual {p5}, Lcom/liber8tech/tago/analytics/Dimension;->getIndex()I

    move-result v1

    invoke-virtual {p5}, Lcom/liber8tech/tago/analytics/Dimension;->getValue()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, v1, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    if-eqz p7, :cond_5

    .line 89
    array-length p3, p7

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_5

    aget-object p5, p7, p4

    .line 29
    invoke-virtual {p5}, Lcom/liber8tech/tago/analytics/Metric;->getIndex()I

    move-result p6

    invoke-virtual {p5}, Lcom/liber8tech/tago/analytics/Metric;->getMetric()F

    move-result p5

    invoke-virtual {v0, p6, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomMetric(IF)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_5
    if-eqz p8, :cond_6

    .line 91
    array-length p3, p8

    :goto_2
    if-ge p2, p3, :cond_6

    aget-object p4, p8, p2

    .line 30
    invoke-static {p4}, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApiKt;->access$toGoogle(Lcom/liber8tech/tago/analytics/Product;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    if-eqz p9, :cond_7

    .line 31
    invoke-static {p9}, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApiKt;->access$toGoogle(Lcom/liber8tech/tago/analytics/ProductAction;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 32
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p2

    const-string p3, "builder.build()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->send(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackScreen(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    const-string v1, "HitBuilders.ScreenViewBuilder().build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->send(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # [Lcom/liber8tech/tago/analytics/Dimension;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # [Lcom/liber8tech/tago/analytics/Metric;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # [Lcom/liber8tech/tago/analytics/Product;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/liber8tech/tago/analytics/ProductAction;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 36
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    :cond_0
    if-eqz p3, :cond_1

    .line 38
    invoke-virtual {v0, p3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    :cond_1
    if-eqz p4, :cond_2

    .line 39
    invoke-virtual {v0, p4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    :cond_2
    if-eqz p5, :cond_3

    .line 40
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    :cond_3
    const/4 p2, 0x0

    if-eqz p6, :cond_4

    .line 93
    array-length p3, p6

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_4

    aget-object p5, p6, p4

    .line 41
    invoke-virtual {p5}, Lcom/liber8tech/tago/analytics/Dimension;->getIndex()I

    move-result v1

    invoke-virtual {p5}, Lcom/liber8tech/tago/analytics/Dimension;->getValue()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, v1, p5}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    if-eqz p7, :cond_5

    .line 95
    array-length p3, p7

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_5

    aget-object p5, p7, p4

    .line 42
    invoke-virtual {p5}, Lcom/liber8tech/tago/analytics/Metric;->getIndex()I

    move-result p6

    invoke-virtual {p5}, Lcom/liber8tech/tago/analytics/Metric;->getMetric()F

    move-result p5

    invoke-virtual {v0, p6, p5}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCustomMetric(IF)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_5
    if-eqz p8, :cond_6

    .line 97
    array-length p3, p8

    :goto_2
    if-ge p2, p3, :cond_6

    aget-object p4, p8, p2

    .line 43
    invoke-static {p4}, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApiKt;->access$toGoogle(Lcom/liber8tech/tago/analytics/Product;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    if-eqz p9, :cond_7

    .line 44
    invoke-static {p9}, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApiKt;->access$toGoogle(Lcom/liber8tech/tago/analytics/ProductAction;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 45
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object p2

    const-string p3, "builder.build()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;->send(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
