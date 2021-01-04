.class public Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;
.super Ljava/lang/Object;
.source "RxBleInternalScanResultLegacy.java"


# instance fields
.field private final bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final rssi:I

.field private final scanRecord:[B


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 13
    iput p2, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;->rssi:I

    .line 14
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;->scanRecord:[B

    return-void
.end method


# virtual methods
.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;->rssi:I

    return v0
.end method

.method public getScanRecord()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;->scanRecord:[B

    return-object v0
.end method
