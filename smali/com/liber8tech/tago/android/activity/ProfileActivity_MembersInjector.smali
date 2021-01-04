.class public final Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;
.super Ljava/lang/Object;
.source "ProfileActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/ProfileActivity;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ProfileService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->profileServiceProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->runtimeConfigProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ProfileService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/ProfileActivity;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalytics(Lcom/liber8tech/tago/android/activity/ProfileActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public static injectProfileService(Lcom/liber8tech/tago/android/activity/ProfileActivity;Lcom/liber8tech/tago/service/ProfileService;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity;->profileService:Lcom/liber8tech/tago/service/ProfileService;

    return-void
.end method

.method public static injectRuntimeConfig(Lcom/liber8tech/tago/android/activity/ProfileActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/ProfileActivity;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->profileServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ProfileService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->injectProfileService(Lcom/liber8tech/tago/android/activity/ProfileActivity;Lcom/liber8tech/tago/service/ProfileService;)V

    .line 37
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/ProfileActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    .line 38
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->runtimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->injectRuntimeConfig(Lcom/liber8tech/tago/android/activity/ProfileActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/ProfileActivity;)V

    return-void
.end method
