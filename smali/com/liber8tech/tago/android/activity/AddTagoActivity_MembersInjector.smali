.class public final Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;
.super Ljava/lang/Object;
.source "AddTagoActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/AddTagoActivity;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/LocationService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
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
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->locationServiceProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->imageEditorServiceProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/LocationService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/AddTagoActivity;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalytics(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public static injectImageEditorService(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;

    return-void
.end method

.method public static injectLocationService(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/service/LocationService;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->locationService:Lcom/liber8tech/tago/service/LocationService;

    return-void
.end method

.method public static injectTagoService(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/service/TagoService;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->locationServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/LocationService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->injectLocationService(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/service/LocationService;)V

    .line 46
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 47
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->imageEditorServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->injectImageEditorService(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    .line 48
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)V

    return-void
.end method
