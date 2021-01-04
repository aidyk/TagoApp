.class public final Lcom/liber8tech/tago/service/StoreService_Factory;
.super Ljava/lang/Object;
.source "StoreService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/liber8tech/tago/service/StoreService;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/liber8tech/tago/service/StoreService_Factory;->retrofitProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/StoreService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Lcom/liber8tech/tago/service/StoreService_Factory;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/liber8tech/tago/service/StoreService_Factory;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/service/StoreService_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/liber8tech/tago/service/StoreService;
    .locals 2

    .line 17
    new-instance v0, Lcom/liber8tech/tago/service/StoreService;

    iget-object v1, p0, Lcom/liber8tech/tago/service/StoreService_Factory;->retrofitProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Retrofit;

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/service/StoreService;-><init>(Lretrofit2/Retrofit;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/liber8tech/tago/service/StoreService_Factory;->get()Lcom/liber8tech/tago/service/StoreService;

    move-result-object v0

    return-object v0
.end method
