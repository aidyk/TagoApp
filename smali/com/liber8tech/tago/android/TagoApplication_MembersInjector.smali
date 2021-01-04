.class public final Lcom/liber8tech/tago/android/TagoApplication_MembersInjector;
.super Ljava/lang/Object;
.source "TagoApplication_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/TagoApplication;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liber8tech/tago/android/TagoApplication_MembersInjector;->runtimeConfigProvider:Ljavax/inject/Provider;

    .line 17
    iput-object p2, p0, Lcom/liber8tech/tago/android/TagoApplication_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/TagoApplication;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/liber8tech/tago/android/TagoApplication_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/android/TagoApplication_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalytics(Lcom/liber8tech/tago/android/TagoApplication;Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/liber8tech/tago/android/TagoApplication;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public static injectRuntimeConfig(Lcom/liber8tech/tago/android/TagoApplication;Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/liber8tech/tago/android/TagoApplication;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/TagoApplication;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/liber8tech/tago/android/TagoApplication_MembersInjector;->runtimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/TagoApplication_MembersInjector;->injectRuntimeConfig(Lcom/liber8tech/tago/android/TagoApplication;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    .line 28
    iget-object v0, p0, Lcom/liber8tech/tago/android/TagoApplication_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/TagoApplication_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/TagoApplication;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/liber8tech/tago/android/TagoApplication;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/TagoApplication_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/TagoApplication;)V

    return-void
.end method
