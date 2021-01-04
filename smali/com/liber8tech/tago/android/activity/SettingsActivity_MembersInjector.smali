.class public final Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SettingsActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/SettingsActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;"
        }
    .end annotation
.end field

.field private final iapServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/IAPService;",
            ">;"
        }
    .end annotation
.end field

.field private final imageEditorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
            ">;"
        }
    .end annotation
.end field

.field private final runtimeConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final storeServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/StoreService;",
            ">;"
        }
    .end annotation
.end field

.field private final tagoServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/StoreService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/IAPService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->runtimeConfigProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->imageEditorServiceProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->storeServiceProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->iapServiceProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p6, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/StoreService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/IAPService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/SettingsActivity;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v7, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectAnalytics(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public static injectIapService(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/service/IAPService;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->iapService:Lcom/liber8tech/tago/service/IAPService;

    return-void
.end method

.method public static injectImageEditorService(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;

    return-void
.end method

.method public static injectRuntimeConfig(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    return-void
.end method

.method public static injectStoreService(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/service/StoreService;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->storeService:Lcom/liber8tech/tago/service/StoreService;

    return-void
.end method

.method public static injectTagoService(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/service/TagoService;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->runtimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectRuntimeConfig(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    .line 60
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 61
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->imageEditorServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectImageEditorService(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    .line 62
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->storeServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/StoreService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectStoreService(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/service/StoreService;)V

    .line 63
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->iapServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/IAPService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectIapService(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/service/IAPService;)V

    .line 64
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/liber8tech/tago/android/activity/SettingsActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V

    return-void
.end method
