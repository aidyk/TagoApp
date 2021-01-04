.class public final Lcom/liber8tech/tago/di/CoreModule_PicassoFactory;
.super Ljava/lang/Object;
.source "CoreModule_PicassoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/squareup/picasso/Picasso;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private final ctxProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/liber8tech/tago/di/CoreModule;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/di/CoreModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/di/CoreModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/liber8tech/tago/di/CoreModule_PicassoFactory;->module:Lcom/liber8tech/tago/di/CoreModule;

    .line 21
    iput-object p2, p0, Lcom/liber8tech/tago/di/CoreModule_PicassoFactory;->ctxProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p3, p0, Lcom/liber8tech/tago/di/CoreModule_PicassoFactory;->clientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/liber8tech/tago/di/CoreModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/liber8tech/tago/di/CoreModule_PicassoFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/di/CoreModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;)",
            "Lcom/liber8tech/tago/di/CoreModule_PicassoFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/liber8tech/tago/di/CoreModule_PicassoFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/liber8tech/tago/di/CoreModule_PicassoFactory;-><init>(Lcom/liber8tech/tago/di/CoreModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyPicasso(Lcom/liber8tech/tago/di/CoreModule;Landroid/content/Context;Lokhttp3/OkHttpClient;)Lcom/squareup/picasso/Picasso;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/liber8tech/tago/di/CoreModule;->picasso(Landroid/content/Context;Lokhttp3/OkHttpClient;)Lcom/squareup/picasso/Picasso;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 38
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/picasso/Picasso;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/squareup/picasso/Picasso;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/liber8tech/tago/di/CoreModule_PicassoFactory;->module:Lcom/liber8tech/tago/di/CoreModule;

    iget-object v1, p0, Lcom/liber8tech/tago/di/CoreModule_PicassoFactory;->ctxProvider:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/liber8tech/tago/di/CoreModule_PicassoFactory;->clientProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1, v2}, Lcom/liber8tech/tago/di/CoreModule;->picasso(Landroid/content/Context;Lokhttp3/OkHttpClient;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 27
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/liber8tech/tago/di/CoreModule_PicassoFactory;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    return-object v0
.end method
