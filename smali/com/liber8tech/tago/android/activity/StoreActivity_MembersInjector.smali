.class public final Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;
.super Ljava/lang/Object;
.source "StoreActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/StoreActivity;",
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

.field private final imageServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/StoreService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/IAPService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->storeServiceProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->iapServiceProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->imageServiceProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/StoreService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/IAPService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/StoreActivity;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalytics(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public static injectIapService(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/service/IAPService;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity;->iapService:Lcom/liber8tech/tago/service/IAPService;

    return-void
.end method

.method public static injectImageService(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity;->imageService:Lcom/liber8tech/tago/service/ImageEditorService;

    return-void
.end method

.method public static injectStoreService(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/service/StoreService;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity;->storeService:Lcom/liber8tech/tago/service/StoreService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/StoreActivity;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->storeServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/StoreService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->injectStoreService(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/service/StoreService;)V

    .line 43
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->iapServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/IAPService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->injectIapService(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/service/IAPService;)V

    .line 44
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->imageServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->injectImageService(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    .line 45
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/liber8tech/tago/android/activity/StoreActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/StoreActivity;)V

    return-void
.end method
