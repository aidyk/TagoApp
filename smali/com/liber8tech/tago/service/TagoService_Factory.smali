.class public final Lcom/liber8tech/tago/service/TagoService_Factory;
.super Ljava/lang/Object;
.source "TagoService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/liber8tech/tago/service/TagoService;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoApiService;",
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

.field private final locationServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/LocationService;",
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
            "Lcom/liber8tech/tago/service/TagoApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/BluetoothService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/LocationService;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/liber8tech/tago/service/TagoService_Factory;->apiServiceProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcom/liber8tech/tago/service/TagoService_Factory;->bluetoothServiceProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p3, p0, Lcom/liber8tech/tago/service/TagoService_Factory;->locationServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/TagoService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/BluetoothService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/LocationService;",
            ">;)",
            "Lcom/liber8tech/tago/service/TagoService_Factory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/liber8tech/tago/service/TagoService_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/liber8tech/tago/service/TagoService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/liber8tech/tago/service/TagoService;
    .locals 4

    .line 25
    new-instance v0, Lcom/liber8tech/tago/service/TagoService;

    iget-object v1, p0, Lcom/liber8tech/tago/service/TagoService_Factory;->apiServiceProvider:Ljavax/inject/Provider;

    .line 26
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liber8tech/tago/service/TagoApiService;

    iget-object v2, p0, Lcom/liber8tech/tago/service/TagoService_Factory;->bluetoothServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liber8tech/tago/service/BluetoothService;

    iget-object v3, p0, Lcom/liber8tech/tago/service/TagoService_Factory;->locationServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liber8tech/tago/service/LocationService;

    invoke-direct {v0, v1, v2, v3}, Lcom/liber8tech/tago/service/TagoService;-><init>(Lcom/liber8tech/tago/service/TagoApiService;Lcom/liber8tech/tago/service/BluetoothService;Lcom/liber8tech/tago/service/LocationService;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/liber8tech/tago/service/TagoService_Factory;->get()Lcom/liber8tech/tago/service/TagoService;

    move-result-object v0

    return-object v0
.end method
