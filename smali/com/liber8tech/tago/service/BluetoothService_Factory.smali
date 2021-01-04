.class public final Lcom/liber8tech/tago/service/BluetoothService_Factory;
.super Ljava/lang/Object;
.source "BluetoothService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/liber8tech/tago/service/BluetoothService;",
        ">;"
    }
.end annotation


# instance fields
.field private final bleClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleClient;",
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

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/liber8tech/tago/service/BluetoothService_Factory;->ctxProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/liber8tech/tago/service/BluetoothService_Factory;->bleClientProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/liber8tech/tago/service/BluetoothService_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lcom/liber8tech/tago/service/BluetoothService_Factory;->runtimeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/BluetoothService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;)",
            "Lcom/liber8tech/tago/service/BluetoothService_Factory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/liber8tech/tago/service/BluetoothService_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liber8tech/tago/service/BluetoothService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/liber8tech/tago/service/BluetoothService;
    .locals 5

    .line 33
    new-instance v0, Lcom/liber8tech/tago/service/BluetoothService;

    iget-object v1, p0, Lcom/liber8tech/tago/service/BluetoothService_Factory;->ctxProvider:Ljavax/inject/Provider;

    .line 34
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/liber8tech/tago/service/BluetoothService_Factory;->bleClientProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/RxBleClient;

    iget-object v3, p0, Lcom/liber8tech/tago/service/BluetoothService_Factory;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/greenrobot/eventbus/EventBus;

    iget-object v4, p0, Lcom/liber8tech/tago/service/BluetoothService_Factory;->runtimeProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liber8tech/tago/service/BluetoothService;-><init>(Landroid/content/Context;Lcom/polidea/rxandroidble2/RxBleClient;Lorg/greenrobot/eventbus/EventBus;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/liber8tech/tago/service/BluetoothService_Factory;->get()Lcom/liber8tech/tago/service/BluetoothService;

    move-result-object v0

    return-object v0
.end method
