.class final Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/DaggerClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;,
        Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;
    }
.end annotation


# instance fields
.field private connectionComponentBuilderProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private connectorImplProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;

.field private deviceModule:Lcom/polidea/rxandroidble2/internal/DeviceModule;

.field private provideBluetoothDeviceProvider:Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;

.field private provideConnectionStateChangeListenerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectionStateRelayProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideMacAddressProvider:Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;

.field private providesDisconnectTimeoutConfProvider:Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesDisconnectTimeoutConfFactory;

.field private rxBleDeviceImplProvider:Lbleshadow/javax/inject/Provider;

.field final synthetic this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;


# direct methods
.method private constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent;Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-direct {p0, p2}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->initialize(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent;Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;Lcom/polidea/rxandroidble2/DaggerClientComponent$1;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent;Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideMacAddressProvider:Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesDisconnectTimeoutConfFactory;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->providesDisconnectTimeoutConfProvider:Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesDisconnectTimeoutConfFactory;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lbleshadow/javax/inject/Provider;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideConnectionStateChangeListenerProvider:Lbleshadow/javax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 441
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
    .locals 0

    .line 441
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->getNamedTimeoutConfiguration()Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->deviceModule:Lcom/polidea/rxandroidble2/internal/DeviceModule;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 468
    invoke-static {v1}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$500(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    move-result-object v1

    .line 467
    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;->proxyProvideBluetoothDevice(Lcom/polidea/rxandroidble2/internal/DeviceModule;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private getNamedTimeoutConfiguration()Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
    .locals 1

    .line 474
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->proxyProvideComputationScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 472
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesConnectTimeoutConfFactory;->proxyProvidesConnectTimeoutConf(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;)V
    .locals 3

    .line 481
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;->access$600(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;)Lcom/polidea/rxandroidble2/internal/DeviceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$700(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper_Factory;

    move-result-object v1

    .line 480
    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;->create(Lcom/polidea/rxandroidble2/internal/DeviceModule;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideBluetoothDeviceProvider:Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;

    .line 482
    new-instance v0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$1;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->connectionComponentBuilderProvider:Lbleshadow/javax/inject/Provider;

    .line 489
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 491
    invoke-static {v0}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$900(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->connectionComponentBuilderProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 493
    invoke-static {v2}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$1000(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lbleshadow/javax/inject/Provider;

    move-result-object v2

    .line 490
    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->connectorImplProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;

    .line 495
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateRelayFactory;->create()Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateRelayFactory;

    move-result-object v0

    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideConnectionStateRelayProvider:Lbleshadow/javax/inject/Provider;

    .line 496
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideBluetoothDeviceProvider:Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->connectorImplProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideConnectionStateRelayProvider:Lbleshadow/javax/inject/Provider;

    .line 498
    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;

    move-result-object v0

    .line 497
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->rxBleDeviceImplProvider:Lbleshadow/javax/inject/Provider;

    .line 502
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;->access$600(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;)Lcom/polidea/rxandroidble2/internal/DeviceModule;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->deviceModule:Lcom/polidea/rxandroidble2/internal/DeviceModule;

    .line 504
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;->access$600(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;)Lcom/polidea/rxandroidble2/internal/DeviceModule;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;->create(Lcom/polidea/rxandroidble2/internal/DeviceModule;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideMacAddressProvider:Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;

    .line 505
    iget-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideConnectionStateRelayProvider:Lbleshadow/javax/inject/Provider;

    .line 507
    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;

    move-result-object p1

    .line 506
    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideConnectionStateChangeListenerProvider:Lbleshadow/javax/inject/Provider;

    .line 511
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;

    move-result-object p1

    .line 510
    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesDisconnectTimeoutConfFactory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesDisconnectTimeoutConfFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->providesDisconnectTimeoutConfProvider:Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesDisconnectTimeoutConfFactory;

    return-void
.end method


# virtual methods
.method public provideDevice()Lcom/polidea/rxandroidble2/RxBleDevice;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->rxBleDeviceImplProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/RxBleDevice;

    return-object v0
.end method
