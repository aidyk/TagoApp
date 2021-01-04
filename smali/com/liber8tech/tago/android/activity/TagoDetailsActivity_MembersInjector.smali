.class public final Lcom/liber8tech/tago/android/activity/TagoDetailsActivity_MembersInjector;
.super Ljava/lang/Object;
.source "TagoDetailsActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalytics(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public static injectTagoService(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Lcom/liber8tech/tago/service/TagoService;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 29
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)V

    return-void
.end method
