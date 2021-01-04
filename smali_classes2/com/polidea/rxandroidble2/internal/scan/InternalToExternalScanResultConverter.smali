.class public Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;
.super Ljava/lang/Object;
.source "InternalToExternalScanResultConverter.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
        "Lcom/polidea/rxandroidble2/scan/ScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceProvider:Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;->deviceProvider:Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;)Lcom/polidea/rxandroidble2/scan/ScanResult;
    .locals 8

    .line 25
    new-instance v7, Lcom/polidea/rxandroidble2/scan/ScanResult;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;->deviceProvider:Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;

    .line 26
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;->getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->getRssi()I

    move-result v2

    .line 28
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->getTimestampNanos()J

    move-result-wide v3

    .line 29
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->getScanCallbackType()Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    move-result-object v5

    .line 30
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->getScanRecord()Lcom/polidea/rxandroidble2/scan/ScanRecord;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/polidea/rxandroidble2/scan/ScanResult;-><init>(Lcom/polidea/rxandroidble2/RxBleDevice;IJLcom/polidea/rxandroidble2/scan/ScanCallbackType;Lcom/polidea/rxandroidble2/scan/ScanRecord;)V

    return-object v7
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    check-cast p1, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;->apply(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;)Lcom/polidea/rxandroidble2/scan/ScanResult;

    move-result-object p1

    return-object p1
.end method
