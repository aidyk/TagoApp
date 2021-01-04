.class public abstract Lcom/polidea/rxandroidble2/ClientComponent$ClientModuleBinder;
.super Ljava/lang/Object;
.source "ClientComponent.java"


# annotations
.annotation runtime Lbleshadow/dagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/ClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ClientModuleBinder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract bindClientOperationQueue(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;)Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;
    .annotation runtime Lbleshadow/dagger/Binds;
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
    .end annotation
.end method

.method abstract bindRxBleClient(Lcom/polidea/rxandroidble2/RxBleClientImpl;)Lcom/polidea/rxandroidble2/RxBleClient;
    .annotation runtime Lbleshadow/dagger/Binds;
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
    .end annotation
.end method

.method abstract bindStateObs(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;)Lio/reactivex/Observable;
    .annotation runtime Lbleshadow/dagger/Binds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;"
        }
    .end annotation
.end method

.method abstract bindTimeoutScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .param p1    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "computation"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Binds;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "timeout"
    .end annotation
.end method

.method abstract provideScanResultMapper(Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;)Lio/reactivex/functions/Function;
    .annotation runtime Lbleshadow/dagger/Binds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;"
        }
    .end annotation
.end method
