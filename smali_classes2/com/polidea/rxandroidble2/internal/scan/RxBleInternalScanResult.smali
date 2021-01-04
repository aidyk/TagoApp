.class public Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;
.super Ljava/lang/Object;
.source "RxBleInternalScanResult.java"


# instance fields
.field private final bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final rssi:I

.field private final scanCallbackType:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

.field private final scanRecord:Lcom/polidea/rxandroidble2/scan/ScanRecord;

.field private final timestampNanos:J


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IJLcom/polidea/rxandroidble2/scan/ScanRecord;Lcom/polidea/rxandroidble2/scan/ScanCallbackType;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 18
    iput p2, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->rssi:I

    .line 19
    iput-wide p3, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->timestampNanos:J

    .line 20
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->scanRecord:Lcom/polidea/rxandroidble2/scan/ScanRecord;

    .line 21
    iput-object p6, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->scanCallbackType:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    return-void
.end method


# virtual methods
.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->rssi:I

    return v0
.end method

.method public getScanCallbackType()Lcom/polidea/rxandroidble2/scan/ScanCallbackType;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->scanCallbackType:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    return-object v0
.end method

.method public getScanRecord()Lcom/polidea/rxandroidble2/scan/ScanRecord;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->scanRecord:Lcom/polidea/rxandroidble2/scan/ScanRecord;

    return-object v0
.end method

.method public getTimestampNanos()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->timestampNanos:J

    return-wide v0
.end method
