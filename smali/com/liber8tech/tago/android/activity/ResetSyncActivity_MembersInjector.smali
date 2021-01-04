.class public final Lcom/liber8tech/tago/android/activity/ResetSyncActivity_MembersInjector;
.super Ljava/lang/Object;
.source "ResetSyncActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/ResetSyncActivity;",
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

.field private final bluetoothServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/BluetoothService;",
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
            "Lcom/liber8tech/tago/service/BluetoothService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity_MembersInjector;->bluetoothServiceProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/BluetoothService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/ResetSyncActivity;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalytics(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public static injectBluetoothService(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;Lcom/liber8tech/tago/service/BluetoothService;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity_MembersInjector;->bluetoothServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/BluetoothService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity_MembersInjector;->injectBluetoothService(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;Lcom/liber8tech/tago/service/BluetoothService;)V

    .line 30
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V

    return-void
.end method
