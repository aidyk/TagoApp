.class public final Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;
.super Ljava/lang/Object;
.source "RxBleClientImpl_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/RxBleClientImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterStateObservableProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final backgroundScannerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/scan/BackgroundScanner;",
            ">;"
        }
    .end annotation
.end field

.field private final bluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final clientComponentFinalizerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;",
            ">;"
        }
    .end annotation
.end field

.field private final clientStateObservableProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;",
            ">;"
        }
    .end annotation
.end field

.field private final internalToExternalScanResultMapFunctionProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final locationServicesStatusProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final operationQueueProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleDeviceProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final scanPreconditionVerifierProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private final scanSetupBuilderProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final uuidUtilProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;>;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;>;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/scan/BackgroundScanner;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 69
    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->operationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 70
    iput-object p3, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->adapterStateObservableProvider:Lbleshadow/javax/inject/Provider;

    .line 71
    iput-object p4, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->uuidUtilProvider:Lbleshadow/javax/inject/Provider;

    .line 72
    iput-object p5, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->locationServicesStatusProvider:Lbleshadow/javax/inject/Provider;

    .line 73
    iput-object p6, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->clientStateObservableProvider:Lbleshadow/javax/inject/Provider;

    .line 74
    iput-object p7, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->rxBleDeviceProvider:Lbleshadow/javax/inject/Provider;

    .line 75
    iput-object p8, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->scanSetupBuilderProvider:Lbleshadow/javax/inject/Provider;

    .line 76
    iput-object p9, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->scanPreconditionVerifierProvider:Lbleshadow/javax/inject/Provider;

    .line 77
    iput-object p10, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->internalToExternalScanResultMapFunctionProvider:Lbleshadow/javax/inject/Provider;

    .line 79
    iput-object p11, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->bluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 80
    iput-object p12, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->clientComponentFinalizerProvider:Lbleshadow/javax/inject/Provider;

    .line 81
    iput-object p13, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->backgroundScannerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;>;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;>;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/scan/BackgroundScanner;",
            ">;)",
            "Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;"
        }
    .end annotation

    .line 118
    new-instance v14, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v14
.end method

.method public static newRxBleClientImpl(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lio/reactivex/Observable;Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lbleshadow/dagger/Lazy;Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;Lcom/polidea/rxandroidble2/scan/BackgroundScanner;)Lcom/polidea/rxandroidble2/RxBleClientImpl;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;",
            "Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            "Lbleshadow/dagger/Lazy<",
            "Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;",
            ">;",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;",
            "Lio/reactivex/Scheduler;",
            "Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;",
            "Lcom/polidea/rxandroidble2/scan/BackgroundScanner;",
            ")",
            "Lcom/polidea/rxandroidble2/RxBleClientImpl;"
        }
    .end annotation

    .line 148
    new-instance v14, Lcom/polidea/rxandroidble2/RxBleClientImpl;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/polidea/rxandroidble2/RxBleClientImpl;-><init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lio/reactivex/Observable;Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lbleshadow/dagger/Lazy;Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;Lcom/polidea/rxandroidble2/scan/BackgroundScanner;)V

    return-object v14
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/RxBleClientImpl;
    .locals 15

    .line 86
    new-instance v14, Lcom/polidea/rxandroidble2/RxBleClientImpl;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 87
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->operationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 88
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->adapterStateObservableProvider:Lbleshadow/javax/inject/Provider;

    .line 89
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/reactivex/Observable;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->uuidUtilProvider:Lbleshadow/javax/inject/Provider;

    .line 90
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->locationServicesStatusProvider:Lbleshadow/javax/inject/Provider;

    .line 91
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->clientStateObservableProvider:Lbleshadow/javax/inject/Provider;

    .line 92
    invoke-static {v0}, Lbleshadow/dagger/internal/DoubleCheck;->lazy(Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/Lazy;

    move-result-object v6

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->rxBleDeviceProvider:Lbleshadow/javax/inject/Provider;

    .line 93
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->scanSetupBuilderProvider:Lbleshadow/javax/inject/Provider;

    .line 94
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->scanPreconditionVerifierProvider:Lbleshadow/javax/inject/Provider;

    .line 95
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->internalToExternalScanResultMapFunctionProvider:Lbleshadow/javax/inject/Provider;

    .line 96
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lio/reactivex/functions/Function;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->bluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 97
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lio/reactivex/Scheduler;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->clientComponentFinalizerProvider:Lbleshadow/javax/inject/Provider;

    .line 98
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->backgroundScannerProvider:Lbleshadow/javax/inject/Provider;

    .line 99
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/polidea/rxandroidble2/scan/BackgroundScanner;

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/polidea/rxandroidble2/RxBleClientImpl;-><init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lio/reactivex/Observable;Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lbleshadow/dagger/Lazy;Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;Lcom/polidea/rxandroidble2/scan/BackgroundScanner;)V

    return-object v14
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->get()Lcom/polidea/rxandroidble2/RxBleClientImpl;

    move-result-object v0

    return-object v0
.end method
