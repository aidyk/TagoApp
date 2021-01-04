.class public final Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SignInActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/SignInActivity;",
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

.field private final authServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/AuthService;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/AuthService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->authServiceProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/AuthService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/SignInActivity;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalytics(Lcom/liber8tech/tago/android/activity/SignInActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SignInActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public static injectAuthService(Lcom/liber8tech/tago/android/activity/SignInActivity;Lcom/liber8tech/tago/service/AuthService;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SignInActivity;->authService:Lcom/liber8tech/tago/service/AuthService;

    return-void
.end method

.method public static injectTagoService(Lcom/liber8tech/tago/android/activity/SignInActivity;Lcom/liber8tech/tago/service/TagoService;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SignInActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/SignInActivity;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->authServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/AuthService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->injectAuthService(Lcom/liber8tech/tago/android/activity/SignInActivity;Lcom/liber8tech/tago/service/AuthService;)V

    .line 37
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/SignInActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 38
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/SignInActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/liber8tech/tago/android/activity/SignInActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/SignInActivity;)V

    return-void
.end method
