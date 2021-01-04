.class public final Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SelectTagoActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/SelectTagoActivity;",
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

.field private final runtimeConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
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
            "Lcom/liber8tech/tago/service/BluetoothService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->bluetoothServiceProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->runtimeConfigProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p4, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/BluetoothService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/SelectTagoActivity;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalytics(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public static injectBluetoothService(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Lcom/liber8tech/tago/service/BluetoothService;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    return-void
.end method

.method public static injectRuntimeConfig(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    return-void
.end method

.method public static injectTagoService(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Lcom/liber8tech/tago/service/TagoService;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->bluetoothServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/BluetoothService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->injectBluetoothService(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Lcom/liber8tech/tago/service/BluetoothService;)V

    .line 44
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 45
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->runtimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->injectRuntimeConfig(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    .line 46
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->analyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)V

    return-void
.end method
