.class public Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;
.super Ljava/lang/Object;
.source "InternalScanResultCreator.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
.end annotation


# instance fields
.field private final uuidUtil:Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;->uuidUtil:Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;

    return-void
.end method

.method private static toScanCallbackType(I)Lcom/polidea/rxandroidble2/scan/ScanCallbackType;
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown callback type %d -> check android.bluetooth.le.ScanSettings"

    const/4 v0, 0x0

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    sget-object p0, Lcom/polidea/rxandroidble2/scan/ScanCallbackType;->CALLBACK_TYPE_UNKNOWN:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    return-object p0

    .line 59
    :pswitch_0
    sget-object p0, Lcom/polidea/rxandroidble2/scan/ScanCallbackType;->CALLBACK_TYPE_FIRST_MATCH:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    return-object p0

    .line 57
    :pswitch_1
    sget-object p0, Lcom/polidea/rxandroidble2/scan/ScanCallbackType;->CALLBACK_TYPE_ALL_MATCHES:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    return-object p0

    .line 61
    :cond_0
    sget-object p0, Lcom/polidea/rxandroidble2/scan/ScanCallbackType;->CALLBACK_TYPE_MATCH_LOST:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public create(ILandroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;
    .locals 8
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 48
    new-instance v5, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;-><init>(Landroid/bluetooth/le/ScanRecord;)V

    .line 49
    new-instance v7, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v3

    .line 50
    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;->toScanCallbackType(I)Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;IJLcom/polidea/rxandroidble2/scan/ScanRecord;Lcom/polidea/rxandroidble2/scan/ScanCallbackType;)V

    return-object v7
.end method

.method public create(Landroid/bluetooth/BluetoothDevice;I[B)Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;
    .locals 8

    .line 34
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;->uuidUtil:Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;

    invoke-virtual {v0, p3}, Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;->parseFromBytes([B)Lcom/polidea/rxandroidble2/scan/ScanRecord;

    move-result-object v6

    .line 35
    new-instance p3, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-object v7, Lcom/polidea/rxandroidble2/scan/ScanCallbackType;->CALLBACK_TYPE_UNSPECIFIED:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    move-object v1, p3

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;IJLcom/polidea/rxandroidble2/scan/ScanRecord;Lcom/polidea/rxandroidble2/scan/ScanCallbackType;)V

    return-object p3
.end method

.method public create(Landroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;
    .locals 8
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 41
    new-instance v5, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;-><init>(Landroid/bluetooth/le/ScanRecord;)V

    .line 42
    new-instance v7, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v3

    sget-object v6, Lcom/polidea/rxandroidble2/scan/ScanCallbackType;->CALLBACK_TYPE_BATCH:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;IJLcom/polidea/rxandroidble2/scan/ScanRecord;Lcom/polidea/rxandroidble2/scan/ScanCallbackType;)V

    return-object v7
.end method
