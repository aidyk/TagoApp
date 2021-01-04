.class public final Lcom/liber8tech/tago/di/TagoModule_ProvideAuthInterceptorFactory;
.super Ljava/lang/Object;
.source "TagoModule_ProvideAuthInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/Interceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/liber8tech/tago/di/TagoModule;

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
.method public constructor <init>(Lcom/liber8tech/tago/di/TagoModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/di/TagoModule;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/liber8tech/tago/di/TagoModule_ProvideAuthInterceptorFactory;->module:Lcom/liber8tech/tago/di/TagoModule;

    .line 18
    iput-object p2, p0, Lcom/liber8tech/tago/di/TagoModule_ProvideAuthInterceptorFactory;->runtimeConfigProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/liber8tech/tago/di/TagoModule;Ljavax/inject/Provider;)Lcom/liber8tech/tago/di/TagoModule_ProvideAuthInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/di/TagoModule;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;)",
            "Lcom/liber8tech/tago/di/TagoModule_ProvideAuthInterceptorFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/liber8tech/tago/di/TagoModule_ProvideAuthInterceptorFactory;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/di/TagoModule_ProvideAuthInterceptorFactory;-><init>(Lcom/liber8tech/tago/di/TagoModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideAuthInterceptor(Lcom/liber8tech/tago/di/TagoModule;Lcom/liber8tech/tago/util/RuntimeConfig;)Lokhttp3/Interceptor;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/di/TagoModule;->provideAuthInterceptor(Lcom/liber8tech/tago/util/RuntimeConfig;)Lokhttp3/Interceptor;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Interceptor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/liber8tech/tago/di/TagoModule_ProvideAuthInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Interceptor;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/liber8tech/tago/di/TagoModule_ProvideAuthInterceptorFactory;->module:Lcom/liber8tech/tago/di/TagoModule;

    iget-object v1, p0, Lcom/liber8tech/tago/di/TagoModule_ProvideAuthInterceptorFactory;->runtimeConfigProvider:Ljavax/inject/Provider;

    .line 24
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/di/TagoModule;->provideAuthInterceptor(Lcom/liber8tech/tago/util/RuntimeConfig;)Lokhttp3/Interceptor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;

    return-object v0
.end method
