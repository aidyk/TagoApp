.class public final Lcom/liber8tech/tago/service/AuthService_Factory;
.super Ljava/lang/Object;
.source "AuthService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/liber8tech/tago/service/AuthService;",
        ">;"
    }
.end annotation


# instance fields
.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
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
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liber8tech/tago/service/AuthService_Factory;->retrofitProvider:Ljavax/inject/Provider;

    .line 17
    iput-object p2, p0, Lcom/liber8tech/tago/service/AuthService_Factory;->runtimeConfigProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/AuthService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;)",
            "Lcom/liber8tech/tago/service/AuthService_Factory;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/liber8tech/tago/service/AuthService_Factory;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/service/AuthService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/liber8tech/tago/service/AuthService;
    .locals 3

    .line 22
    new-instance v0, Lcom/liber8tech/tago/service/AuthService;

    iget-object v1, p0, Lcom/liber8tech/tago/service/AuthService_Factory;->retrofitProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Retrofit;

    iget-object v2, p0, Lcom/liber8tech/tago/service/AuthService_Factory;->runtimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-direct {v0, v1, v2}, Lcom/liber8tech/tago/service/AuthService;-><init>(Lretrofit2/Retrofit;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/liber8tech/tago/service/AuthService_Factory;->get()Lcom/liber8tech/tago/service/AuthService;

    move-result-object v0

    return-object v0
.end method
