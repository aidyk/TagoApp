.class public final Lcom/liber8tech/tago/android/activity/IntroActivity_MembersInjector;
.super Ljava/lang/Object;
.source "IntroActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/IntroActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final authServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/AuthService;",
            ">;"
        }
    .end annotation
.end field

.field private final runTimeConfigProvider:Ljavax/inject/Provider;
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
            "Lcom/liber8tech/tago/service/AuthService;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity_MembersInjector;->runTimeConfigProvider:Ljavax/inject/Provider;

    .line 17
    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/IntroActivity_MembersInjector;->authServiceProvider:Ljavax/inject/Provider;

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
            "Lcom/liber8tech/tago/service/AuthService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/IntroActivity;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/liber8tech/tago/android/activity/IntroActivity_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/android/activity/IntroActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAuthService(Lcom/liber8tech/tago/android/activity/IntroActivity;Lcom/liber8tech/tago/service/AuthService;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->authService:Lcom/liber8tech/tago/service/AuthService;

    return-void
.end method

.method public static injectRunTimeConfig(Lcom/liber8tech/tago/android/activity/IntroActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity;->runTimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/IntroActivity;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity_MembersInjector;->runTimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity_MembersInjector;->injectRunTimeConfig(Lcom/liber8tech/tago/android/activity/IntroActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    .line 28
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity_MembersInjector;->authServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/AuthService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity_MembersInjector;->injectAuthService(Lcom/liber8tech/tago/android/activity/IntroActivity;Lcom/liber8tech/tago/service/AuthService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/liber8tech/tago/android/activity/IntroActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/IntroActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/IntroActivity;)V

    return-void
.end method
