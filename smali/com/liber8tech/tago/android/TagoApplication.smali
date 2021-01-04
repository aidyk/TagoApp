.class public final Lcom/liber8tech/tago/android/TagoApplication;
.super Landroid/app/Application;
.source "TagoApplication.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liber8tech/tago/android/TagoApplication$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTagoApplication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagoApplication.kt\ncom/liber8tech/tago/android/TagoApplication\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,62:1\n137#2:63\n*E\n*S KotlinDebug\n*F\n+ 1 TagoApplication.kt\ncom/liber8tech/tago/android/TagoApplication\n*L\n54#1:63\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0014J\u0008\u0010\u0019\u001a\u00020\u0016H\u0016R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/TagoApplication;",
        "Landroid/app/Application;",
        "()V",
        "analytics",
        "Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "getAnalytics",
        "()Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "setAnalytics",
        "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V",
        "component",
        "Lcom/liber8tech/tago/di/TagoComponent;",
        "getComponent",
        "()Lcom/liber8tech/tago/di/TagoComponent;",
        "component$delegate",
        "Lkotlin/Lazy;",
        "runtimeConfig",
        "Lcom/liber8tech/tago/util/RuntimeConfig;",
        "getRuntimeConfig",
        "()Lcom/liber8tech/tago/util/RuntimeConfig;",
        "setRuntimeConfig",
        "(Lcom/liber8tech/tago/util/RuntimeConfig;)V",
        "attachBaseContext",
        "",
        "context",
        "Landroid/content/Context;",
        "onCreate",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

.field public static instance:Lcom/liber8tech/tago/android/TagoApplication; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final mock:Z = false


# instance fields
.field public analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final component$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/liber8tech/tago/android/TagoApplication;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "component"

    const-string v4, "getComponent()Lcom/liber8tech/tago/di/TagoComponent;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/liber8tech/tago/android/TagoApplication;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/liber8tech/tago/android/TagoApplication$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/android/TagoApplication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/liber8tech/tago/android/TagoApplication;->Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 31
    new-instance v0, Lcom/liber8tech/tago/android/TagoApplication$component$2;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/TagoApplication$component$2;-><init>(Lcom/liber8tech/tago/android/TagoApplication;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/android/TagoApplication;->component$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/liber8tech/tago/android/TagoApplication;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    sget-object v0, Lcom/liber8tech/tago/android/TagoApplication;->instance:Lcom/liber8tech/tago/android/TagoApplication;

    if-nez v0, :cond_0

    const-string v1, "instance"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getMock$cp()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/liber8tech/tago/android/TagoApplication;->mock:Z

    return v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/liber8tech/tago/android/TagoApplication;)V
    .locals 0
    .param p0    # Lcom/liber8tech/tago/android/TagoApplication;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 18
    sput-object p0, Lcom/liber8tech/tago/android/TagoApplication;->instance:Lcom/liber8tech/tago/android/TagoApplication;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 59
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public final getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/liber8tech/tago/android/TagoApplication;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez v0, :cond_0

    const-string v1, "analytics"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getComponent()Lcom/liber8tech/tago/di/TagoComponent;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/liber8tech/tago/android/TagoApplication;->component$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/liber8tech/tago/android/TagoApplication;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/di/TagoComponent;

    return-object v0
.end method

.method public final getRuntimeConfig()Lcom/liber8tech/tago/util/RuntimeConfig;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/liber8tech/tago/android/TagoApplication;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    if-nez v0, :cond_0

    const-string v1, "runtimeConfig"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .line 45
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 46
    move-object v0, p0

    check-cast v0, Lcom/liber8tech/tago/android/TagoApplication;

    sput-object v0, Lcom/liber8tech/tago/android/TagoApplication;->instance:Lcom/liber8tech/tago/android/TagoApplication;

    .line 47
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/TagoApplication;->getComponent()Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/TagoApplication;)V

    .line 51
    sget-object v0, Lcom/liber8tech/tago/android/TagoApplication;->instance:Lcom/liber8tech/tago/android/TagoApplication;

    if-nez v0, :cond_0

    const-string v1, "instance"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [Lio/fabric/sdk/android/Kit;

    const/4 v3, 0x0

    new-instance v4, Lcom/crashlytics/android/Crashlytics$Builder;

    invoke-direct {v4}, Lcom/crashlytics/android/Crashlytics$Builder;-><init>()V

    new-instance v5, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-direct {v5}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;-><init>()V

    iget-object v6, p0, Lcom/liber8tech/tago/android/TagoApplication;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    if-nez v6, :cond_1

    const-string v7, "runtimeConfig"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v6}, Lcom/liber8tech/tago/util/RuntimeConfig;->getCrashlyticsEnable()Z

    move-result v6

    xor-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->build()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/crashlytics/android/Crashlytics$Builder;->core(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/Crashlytics$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/crashlytics/android/Crashlytics$Builder;->build()Lcom/crashlytics/android/Crashlytics;

    move-result-object v4

    check-cast v4, Lio/fabric/sdk/android/Kit;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 52
    iget-object v0, p0, Lcom/liber8tech/tago/android/TagoApplication;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez v0, :cond_2

    const-string v2, "analytics"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/liber8tech/tago/android/TagoApplication;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    if-nez v2, :cond_3

    const-string v3, "runtimeConfig"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/liber8tech/tago/util/RuntimeConfig;->getAnalyticsEnable()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/analytics/AnalyticsService;->enableDryRun(Z)V

    .line 53
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    .line 54
    sget-object v0, Lcom/liber8tech/tago/Constants;->INSTANCE:Lcom/liber8tech/tago/Constants;

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "resources.displayMetrics"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3e696969

    mul-float v1, v1, v2

    .line 54
    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/Constants;->setTagoCameraGapHeightPx(F)V

    return-void
.end method

.method public final setAnalytics(Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/analytics/AnalyticsService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/liber8tech/tago/android/TagoApplication;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public final setRuntimeConfig(Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/util/RuntimeConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/liber8tech/tago/android/TagoApplication;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    return-void
.end method
