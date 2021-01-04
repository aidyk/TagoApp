.class public final Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;
.super Ljava/lang/Object;
.source "MainActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/MainActivity;",
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

.field private final firmwareServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/FirmwareService;",
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

.field private final locationServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/LocationService;",
            ">;"
        }
    .end annotation
.end field

.field private final profileServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ProfileService;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/LocationService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/FirmwareService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/StoreService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/IAPService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ProfileService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->runtimeConfigProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->locationServiceProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->imageEditorServiceProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p5, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->firmwareServiceProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p6, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->storeServiceProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->iapServiceProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p8, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->profileServiceProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p9, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/LocationService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/FirmwareService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/StoreService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/IAPService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ProfileService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/MainActivity;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v10, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static injectAnalytics(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public static injectFirmwareService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/FirmwareService;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity;->firmwareService:Lcom/liber8tech/tago/service/FirmwareService;

    return-void
.end method

.method public static injectIapService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/IAPService;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity;->iapService:Lcom/liber8tech/tago/service/IAPService;

    return-void
.end method

.method public static injectImageEditorService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity;->imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;

    return-void
.end method

.method public static injectLocationService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/LocationService;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity;->locationService:Lcom/liber8tech/tago/service/LocationService;

    return-void
.end method

.method public static injectProfileService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/ProfileService;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity;->profileService:Lcom/liber8tech/tago/service/ProfileService;

    return-void
.end method

.method public static injectRuntimeConfig(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    return-void
.end method

.method public static injectStoreService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/StoreService;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity;->storeService:Lcom/liber8tech/tago/service/StoreService;

    return-void
.end method

.method public static injectTagoService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/TagoService;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/MainActivity;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->runtimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectRuntimeConfig(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    .line 81
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->locationServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/LocationService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectLocationService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/LocationService;)V

    .line 82
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->imageEditorServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectImageEditorService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    .line 83
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    .line 84
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->firmwareServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/FirmwareService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectFirmwareService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/FirmwareService;)V

    .line 85
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->storeServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/StoreService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectStoreService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/StoreService;)V

    .line 86
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->iapServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/IAPService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectIapService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/IAPService;)V

    .line 87
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->profileServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ProfileService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectProfileService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/ProfileService;)V

    .line 88
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/TagoService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/MainActivity;)V

    return-void
.end method
