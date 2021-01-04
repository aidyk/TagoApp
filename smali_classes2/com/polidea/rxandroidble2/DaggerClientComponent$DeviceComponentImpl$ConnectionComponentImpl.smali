.class final Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectionComponentImpl"
.end annotation


# instance fields
.field private bluetoothGattProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;",
            ">;"
        }
    .end annotation
.end field

.field private connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;",
            ">;"
        }
    .end annotation
.end field

.field private descriptorWriterProvider:Lbleshadow/javax/inject/Provider;

.field private disconnectActionProvider:Lbleshadow/javax/inject/Provider;

.field private disconnectOperationProvider:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;

.field private disconnectionRouterProvider:Lbleshadow/javax/inject/Provider;

.field private illegalOperationCheckerProvider:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;

.field private illegalOperationMessageCreatorProvider:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;

.field private loggingIllegalOperationHandlerProvider:Lcom/polidea/rxandroidble2/internal/connection/LoggingIllegalOperationHandler_Factory;

.field private longWriteOperationBuilderImplProvider:Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;

.field private mtuBasedPayloadSizeLimitProvider:Lbleshadow/javax/inject/Provider;

.field private mtuWatcherProvider:Lbleshadow/javax/inject/Provider;

.field private notificationAndIndicationManagerProvider:Lbleshadow/javax/inject/Provider;

.field private operationsProviderImplProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;

.field private provideAutoConnectProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private provideCharacteristicPropertiesParserProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;

.field private provideIllegalOperationHandlerProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;

.field private providesOperationTimeoutConfProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvidesOperationTimeoutConfFactory;

.field private readRssiOperationProvider:Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;

.field private rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private rxBleServicesLoggerProvider:Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;

.field private serviceDiscoveryManagerProvider:Lbleshadow/javax/inject/Provider;

.field final synthetic this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

.field private throwingIllegalOperationHandlerProvider:Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;


# direct methods
.method private constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    invoke-direct {p0, p2}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->initialize(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;Lcom/polidea/rxandroidble2/DaggerClientComponent$1;)V
    .locals 0

    .line 538
    invoke-direct {p0, p1, p2}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;)V

    return-void
.end method

.method private getBleConnectionCompat()Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;
    .locals 2

    .line 604
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    iget-object v1, v1, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 606
    invoke-static {v1}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$1200(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideApplicationContextFactory;->proxyProvideApplicationContext(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initialize(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;)V
    .locals 11

    .line 611
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider_Factory;->create()Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider_Factory;

    move-result-object v0

    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 612
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    .line 615
    invoke-static {v0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->access$1300(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    iget-object v1, v1, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 616
    invoke-static {v1}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$700(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper_Factory;

    move-result-object v1

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    iget-object v2, v2, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 617
    invoke-static {v2}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$1400(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable_Factory;

    move-result-object v2

    .line 614
    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouter_Factory;

    move-result-object v0

    .line 613
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->disconnectionRouterProvider:Lbleshadow/javax/inject/Provider;

    .line 618
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 621
    invoke-static {v0}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$1000(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->disconnectionRouterProvider:Lbleshadow/javax/inject/Provider;

    .line 624
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher_Factory;->create()Lcom/polidea/rxandroidble2/internal/connection/NativeCallbackDispatcher_Factory;

    move-result-object v3

    .line 620
    invoke-static {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback_Factory;

    move-result-object v0

    .line 619
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 627
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;->access$1500(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    move-result-object v0

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideAutoConnectFactory;->create(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideAutoConnectFactory;

    move-result-object v0

    .line 626
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideAutoConnectProvider:Lbleshadow/javax/inject/Provider;

    .line 628
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    .line 631
    invoke-static {v0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->access$1300(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->disconnectionRouterProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    iget-object v2, v2, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 633
    invoke-static {v2}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$1600(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lbleshadow/javax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    iget-object v3, v3, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 634
    invoke-static {v3}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$1700(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lbleshadow/javax/inject/Provider;

    move-result-object v3

    .line 630
    invoke-static {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;

    move-result-object v0

    .line 629
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    .line 635
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 637
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModuleBinder_ProvideBluetoothGattFactory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModuleBinder_ProvideBluetoothGattFactory;

    move-result-object v0

    .line 636
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 640
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;->access$1500(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    move-result-object v0

    .line 639
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;->create(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideCharacteristicPropertiesParserProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;

    .line 641
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideCharacteristicPropertiesParserProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;

    .line 642
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleServicesLoggerProvider:Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;

    .line 645
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;->access$1500(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    move-result-object v0

    .line 646
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;

    move-result-object v1

    .line 644
    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvidesOperationTimeoutConfFactory;->create(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvidesOperationTimeoutConfFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->providesOperationTimeoutConfProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvidesOperationTimeoutConfFactory;

    .line 647
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->providesOperationTimeoutConfProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvidesOperationTimeoutConfFactory;

    .line 648
    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->readRssiOperationProvider:Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;

    .line 652
    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleServicesLoggerProvider:Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->providesOperationTimeoutConfProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvidesOperationTimeoutConfFactory;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 658
    invoke-static {v0}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$1700(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lbleshadow/javax/inject/Provider;

    move-result-object v5

    .line 659
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;

    move-result-object v6

    iget-object v7, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->readRssiOperationProvider:Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;

    .line 653
    invoke-static/range {v1 .. v7}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->operationsProviderImplProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;

    .line 661
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->operationsProviderImplProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;

    .line 663
    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/ServiceDiscoveryManager_Factory;

    move-result-object v0

    .line 662
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->serviceDiscoveryManagerProvider:Lbleshadow/javax/inject/Provider;

    .line 667
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->operationsProviderImplProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;

    .line 669
    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter_Factory;

    move-result-object v0

    .line 668
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->descriptorWriterProvider:Lbleshadow/javax/inject/Provider;

    .line 675
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;->create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;

    move-result-object v1

    .line 676
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory;->create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory;

    move-result-object v2

    .line 677
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory;->create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    iget-object v5, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    iget-object v6, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->descriptorWriterProvider:Lbleshadow/javax/inject/Provider;

    .line 674
    invoke-static/range {v1 .. v6}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;

    move-result-object v0

    .line 673
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->notificationAndIndicationManagerProvider:Lbleshadow/javax/inject/Provider;

    .line 681
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 684
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModuleBinder_MinimumMtuFactory;->create()Lcom/polidea/rxandroidble2/internal/connection/ConnectionModuleBinder_MinimumMtuFactory;

    move-result-object v1

    .line 683
    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher_Factory;

    move-result-object v0

    .line 682
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->mtuWatcherProvider:Lbleshadow/javax/inject/Provider;

    .line 685
    new-instance v0, Lbleshadow/dagger/internal/DelegateFactory;

    invoke-direct {v0}, Lbleshadow/dagger/internal/DelegateFactory;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;

    .line 686
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;

    .line 690
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModuleBinder_GattWriteMtuOverheadFactory;->create()Lcom/polidea/rxandroidble2/internal/connection/ConnectionModuleBinder_GattWriteMtuOverheadFactory;

    move-result-object v1

    .line 688
    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit_Factory;

    move-result-object v0

    .line 687
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->mtuBasedPayloadSizeLimitProvider:Lbleshadow/javax/inject/Provider;

    .line 691
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->mtuBasedPayloadSizeLimitProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->operationsProviderImplProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;

    .line 692
    invoke-static {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->longWriteOperationBuilderImplProvider:Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;

    .line 697
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideCharacteristicPropertiesParserProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;

    .line 698
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->illegalOperationMessageCreatorProvider:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;

    .line 700
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->illegalOperationMessageCreatorProvider:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;

    .line 701
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/LoggingIllegalOperationHandler_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/LoggingIllegalOperationHandler_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->loggingIllegalOperationHandlerProvider:Lcom/polidea/rxandroidble2/internal/connection/LoggingIllegalOperationHandler_Factory;

    .line 702
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->illegalOperationMessageCreatorProvider:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;

    .line 703
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->throwingIllegalOperationHandlerProvider:Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;

    .line 706
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;->access$1500(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->loggingIllegalOperationHandlerProvider:Lcom/polidea/rxandroidble2/internal/connection/LoggingIllegalOperationHandler_Factory;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->throwingIllegalOperationHandlerProvider:Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;

    .line 705
    invoke-static {p1, v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;->create(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideIllegalOperationHandlerProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;

    .line 709
    iget-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideIllegalOperationHandlerProvider:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;

    .line 710
    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->illegalOperationCheckerProvider:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;

    .line 711
    iget-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;

    check-cast p1, Lbleshadow/dagger/internal/DelegateFactory;

    .line 713
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->serviceDiscoveryManagerProvider:Lbleshadow/javax/inject/Provider;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->notificationAndIndicationManagerProvider:Lbleshadow/javax/inject/Provider;

    iget-object v5, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->mtuWatcherProvider:Lbleshadow/javax/inject/Provider;

    iget-object v6, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->descriptorWriterProvider:Lbleshadow/javax/inject/Provider;

    iget-object v7, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->operationsProviderImplProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProviderImpl_Factory;

    iget-object v8, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->longWriteOperationBuilderImplProvider:Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;

    iget-object v9, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    iget-object v9, v9, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 725
    invoke-static {v9}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$1700(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lbleshadow/javax/inject/Provider;

    move-result-object v9

    iget-object v10, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->illegalOperationCheckerProvider:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;

    .line 715
    invoke-static/range {v0 .. v10}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl_Factory;

    move-result-object v0

    .line 714
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;

    .line 727
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;

    invoke-virtual {p1, v0}, Lbleshadow/dagger/internal/DelegateFactory;->setDelegatedProvider(Lbleshadow/javax/inject/Provider;)V

    .line 728
    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    iget-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    .line 732
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->access$1300(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;

    move-result-object v3

    iget-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    iget-object p1, p1, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 733
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$1800(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothManagerFactory;

    move-result-object v4

    iget-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    iget-object p1, p1, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 734
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$1700(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lbleshadow/javax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    .line 735
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->access$1900(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesDisconnectTimeoutConfFactory;

    move-result-object v6

    iget-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    .line 736
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->access$2000(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v7

    .line 729
    invoke-static/range {v1 .. v7}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->disconnectOperationProvider:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;

    .line 737
    iget-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    iget-object p1, p1, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->this$0:Lcom/polidea/rxandroidble2/DaggerClientComponent;

    .line 740
    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->access$900(Lcom/polidea/rxandroidble2/DaggerClientComponent;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->disconnectOperationProvider:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation_Factory;

    .line 739
    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction_Factory;

    move-result-object p1

    .line 738
    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->disconnectActionProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method


# virtual methods
.method public connectOperation()Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;
    .locals 8

    .line 746
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    .line 747
    invoke-static {v0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->access$2100(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 748
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->getBleConnectionCompat()Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;

    move-result-object v2

    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 749
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 750
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    .line 751
    invoke-static {v0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->access$2200(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    move-result-object v5

    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->provideAutoConnectProvider:Lbleshadow/javax/inject/Provider;

    .line 752
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    .line 753
    invoke-static {v0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->access$2000(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

    .line 746
    invoke-static/range {v1 .. v7}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation_Factory;->newConnectOperation(Landroid/bluetooth/BluetoothDevice;Lcom/polidea/rxandroidble2/internal/util/BleConnectionCompat;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;ZLcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;)Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    move-result-object v0

    return-object v0
.end method

.method public connectionSubscriptionWatchers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 768
    invoke-static {v0}, Lbleshadow/dagger/internal/SetBuilder;->newSetBuilder(I)Lbleshadow/dagger/internal/SetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->mtuWatcherProvider:Lbleshadow/javax/inject/Provider;

    .line 769
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;

    invoke-virtual {v0, v1}, Lbleshadow/dagger/internal/SetBuilder;->add(Ljava/lang/Object;)Lbleshadow/dagger/internal/SetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->disconnectActionProvider:Lbleshadow/javax/inject/Provider;

    .line 770
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;

    invoke-virtual {v0, v1}, Lbleshadow/dagger/internal/SetBuilder;->add(Ljava/lang/Object;)Lbleshadow/dagger/internal/SetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    .line 771
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbleshadow/dagger/internal/SetBuilder;->add(Ljava/lang/Object;)Lbleshadow/dagger/internal/SetBuilder;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Lbleshadow/dagger/internal/SetBuilder;->build()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public gattCallback()Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    return-object v0
.end method

.method public rxBleConnection()Lcom/polidea/rxandroidble2/RxBleConnection;
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;->rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/RxBleConnection;

    return-object v0
.end method
