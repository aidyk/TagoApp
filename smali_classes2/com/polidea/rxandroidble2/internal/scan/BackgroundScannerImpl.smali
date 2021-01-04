.class public Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;
.super Ljava/lang/Object;
.source "BackgroundScannerImpl.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/scan/BackgroundScanner;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BackgroundScanner"


# instance fields
.field private final internalScanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

.field private final internalToExternalScanResultConverter:Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;

.field private final rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

.field private final scanObjectsConverter:Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    .line 40
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->scanObjectsConverter:Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    .line 41
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->internalScanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    .line 42
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->internalToExternalScanResultConverter:Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;

    return-void
.end method

.method private convertScanResultToRxAndroidBLEModel(ILandroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2/scan/ScanResult;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->internalToExternalScanResultConverter:Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->internalScanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    invoke-virtual {v1, p1, p2}, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;->create(ILandroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;->apply(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;)Lcom/polidea/rxandroidble2/scan/ScanResult;

    move-result-object p1

    return-object p1
.end method

.method private static extractScanResults(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    const-string v0, "android.bluetooth.le.extra.LIST_SCAN_RESULT"

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public onScanResultReceived(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;"
        }
    .end annotation

    const-string v0, "android.bluetooth.le.extra.CALLBACK_TYPE"

    const/4 v1, -0x1

    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.le.extra.ERROR_CODE"

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 89
    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->extractScanResults(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 94
    invoke-direct {p0, v0, v1}, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->convertScanResultToRxAndroidBLEModel(ILandroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2/scan/ScanResult;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2

    .line 99
    :cond_1
    new-instance p1, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    invoke-direct {p1, v1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(I)V

    throw p1
.end method

.method public varargs scanBleDeviceInBackground(Landroid/app/PendingIntent;Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)V
    .locals 5
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_0

    const-string p1, "BackgroundScanner"

    .line 49
    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "PendingIntent based scanning is available for Android O and higher only."

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "BackgroundScanner"

    .line 57
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Requesting pending intent based scan."

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->scanObjectsConverter:Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    invoke-virtual {v0, p3}, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;->toNativeFilters([Lcom/polidea/rxandroidble2/scan/ScanFilter;)Ljava/util/List;

    move-result-object p3

    .line 59
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->scanObjectsConverter:Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    invoke-virtual {v0, p2}, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;->toNativeSettings(Lcom/polidea/rxandroidble2/scan/ScanSettings;)Landroid/bluetooth/le/ScanSettings;

    move-result-object p2

    .line 60
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0, p3, p2, p1}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->startLeScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/app/PendingIntent;)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 63
    :cond_1
    new-instance p2, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    invoke-direct {p2, p1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(I)V

    const/4 p1, 0x2

    .line 64
    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "Failed to start scan"

    aput-object p3, p1, v1

    aput-object p2, p1, v2

    const-string p3, "BackgroundScanner"

    invoke-static {p3, p1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    throw p2

    .line 53
    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "PendingIntent based scanning is available only when Bluetooth is ON."

    aput-object p2, p1, v1

    const-string p2, "BackgroundScanner"

    invoke-static {p2, p1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance p1, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    invoke-direct {p1, v2}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(I)V

    throw p1
.end method

.method public stopBackgroundBleScan(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_0

    const-string p1, "BackgroundScanner"

    .line 73
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "PendingIntent based scanning is available for Android O and higher only."

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "BackgroundScanner"

    .line 77
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "PendingIntent based scanning is available only when Bluetooth is ON."

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "BackgroundScanner"

    .line 81
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Stopping pending intent based scan."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->stopLeScan(Landroid/app/PendingIntent;)V

    return-void
.end method
