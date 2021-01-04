.class public final Lcom/liber8tech/tago/android/activity/ResetActivity_MembersInjector;
.super Ljava/lang/Object;
.source "ResetActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/ResetActivity;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/ResetActivity;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/liber8tech/tago/android/activity/ResetActivity_MembersInjector;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ResetActivity_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalytics(Lcom/liber8tech/tago/android/activity/ResetActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/ResetActivity;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ResetActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/ResetActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/liber8tech/tago/android/activity/ResetActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ResetActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/ResetActivity;)V

    return-void
.end method
