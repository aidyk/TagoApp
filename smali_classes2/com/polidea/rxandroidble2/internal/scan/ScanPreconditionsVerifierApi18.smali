.class public Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;
.super Ljava/lang/Object;
.source "ScanPreconditionsVerifierApi18.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;


# instance fields
.field final locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

.field final rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    .line 20
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;->locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    return-void
.end method


# virtual methods
.method public verify()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->hasBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;->locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;->isLocationPermissionOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;->locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;->isLocationProviderOk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(I)V

    throw v0

    .line 30
    :cond_1
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(I)V

    throw v0

    .line 28
    :cond_2
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(I)V

    throw v0

    .line 26
    :cond_3
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(I)V

    throw v0
.end method
