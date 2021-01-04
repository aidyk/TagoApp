.class public Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;
.super Ljava/lang/Object;
.source "AndroidScanObjectsConverter.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final deviceSdk:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "device-sdk"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;->deviceSdk:I

    return-void
.end method

.method private setMarshmallowSettings(Lcom/polidea/rxandroidble2/scan/ScanSettings;Landroid/bluetooth/le/ScanSettings$Builder;)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 44
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanSettings;->getCallbackType()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p2

    .line 45
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanSettings;->getMatchMode()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p2

    .line 46
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanSettings;->getNumOfMatches()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    return-void
.end method

.method private toNative(Lcom/polidea/rxandroidble2/scan/ScanFilter;)Landroid/bluetooth/le/ScanFilter;
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 67
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter;->getServiceData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter;->getServiceDataMask()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter;->getManufacturerId()I

    move-result v1

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter;->getManufacturerData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter;->getManufacturerDataMask()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public varargs toNativeFilters([Lcom/polidea/rxandroidble2/scan/ScanFilter;)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/polidea/rxandroidble2/scan/ScanFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 52
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    array-length v2, p1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 57
    invoke-direct {p0, v3}, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;->toNative(Lcom/polidea/rxandroidble2/scan/ScanFilter;)Landroid/bluetooth/le/ScanFilter;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method public toNativeSettings(Lcom/polidea/rxandroidble2/scan/ScanSettings;)Landroid/bluetooth/le/ScanSettings;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 31
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 32
    iget v1, p0, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;->deviceSdk:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;->setMarshmallowSettings(Lcom/polidea/rxandroidble2/scan/ScanSettings;Landroid/bluetooth/le/ScanSettings$Builder;)V

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanSettings;->getReportDelayMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanSettings;->getScanMode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    return-object p1
.end method
