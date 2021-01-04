.class public final Lcom/liber8tech/tago/service/FirmwareService_Factory;
.super Ljava/lang/Object;
.source "FirmwareService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/liber8tech/tago/service/FirmwareService;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private final runtimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/liber8tech/tago/service/FirmwareService_Factory;->retrofitProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/liber8tech/tago/service/FirmwareService_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/liber8tech/tago/service/FirmwareService_Factory;->runtimeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/FirmwareService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;)",
            "Lcom/liber8tech/tago/service/FirmwareService_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/liber8tech/tago/service/FirmwareService_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/liber8tech/tago/service/FirmwareService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/liber8tech/tago/service/FirmwareService;
    .locals 4

    .line 28
    new-instance v0, Lcom/liber8tech/tago/service/FirmwareService;

    iget-object v1, p0, Lcom/liber8tech/tago/service/FirmwareService_Factory;->retrofitProvider:Ljavax/inject/Provider;

    .line 29
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Retrofit;

    iget-object v2, p0, Lcom/liber8tech/tago/service/FirmwareService_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/liber8tech/tago/service/FirmwareService_Factory;->runtimeProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-direct {v0, v1, v2, v3}, Lcom/liber8tech/tago/service/FirmwareService;-><init>(Lretrofit2/Retrofit;Landroid/content/Context;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/liber8tech/tago/service/FirmwareService_Factory;->get()Lcom/liber8tech/tago/service/FirmwareService;

    move-result-object v0

    return-object v0
.end method
