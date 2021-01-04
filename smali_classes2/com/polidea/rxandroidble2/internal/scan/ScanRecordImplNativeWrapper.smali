.class public Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;
.super Ljava/lang/Object;
.source "ScanRecordImplNativeWrapper.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/scan/ScanRecord;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final nativeScanRecord:Landroid/bluetooth/le/ScanRecord;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/ScanRecord;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    return-void
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getAdvertiseFlags()I

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object p1

    return-object p1
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getTxPowerLevel()I

    move-result v0

    return v0
.end method
