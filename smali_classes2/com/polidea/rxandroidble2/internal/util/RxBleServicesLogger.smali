.class public Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;
.super Ljava/lang/Object;
.source "RxBleServicesLogger.java"


# instance fields
.field private final characteristicPropertiesParser:Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->characteristicPropertiesParser:Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    return-void
.end method

.method private appendCharacteristicNameHeader(Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    const/16 v0, 0xa

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "* "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->createCharacteristicName(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendCharacteristicProperties(Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    const/16 v0, 0xa

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "  "

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Properties: "

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->characteristicPropertiesParser:Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;->propertiesIntToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendDescriptorNameHeader(Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 1

    const/16 v0, 0xa

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "* "

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->createDescriptorName(Landroid/bluetooth/BluetoothGattDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendDescriptors(Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 67
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->appendDescriptorsHeader(Ljava/lang/StringBuilder;)V

    .line 69
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->appendDescriptorNameHeader(Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothGattDescriptor;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendDescriptorsHeader(Ljava/lang/StringBuilder;)V
    .locals 1

    const/16 v0, 0xa

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "  "

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-> Descriptors: "

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendDeviceHeader(Landroid/bluetooth/BluetoothDevice;Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "--------------- ====== Printing peripheral content ====== ---------------\n"

    .line 123
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PERIPHERAL ADDRESS: "

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "PERIPHERAL NAME: "

    .line 125
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "-------------------------------------------------------------------------"

    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendServiceDescription(Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothGattService;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->appendServiceHeader(Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothGattService;)V

    const-string v0, "-> Characteristics:"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->appendCharacteristicNameHeader(Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->appendCharacteristicProperties(Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->appendDescriptors(Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendServiceHeader(Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothGattService;)V
    .locals 1

    const-string v0, "\n"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {p0, p2}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->createServiceType(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {p0, p2}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->createServiceName(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Instance ID: "

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private createCharacteristicName(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .locals 0

    .line 117
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/rxandroidble2/utils/StandardUUIDsParser;->getCharacteristicName(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown characteristic"

    :cond_0
    return-object p1
.end method

.method private createDescriptorName(Landroid/bluetooth/BluetoothGattDescriptor;)Ljava/lang/String;
    .locals 0

    .line 104
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/rxandroidble2/utils/StandardUUIDsParser;->getDescriptorName(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown descriptor"

    :cond_0
    return-object p1
.end method

.method private createServiceName(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;
    .locals 0

    .line 143
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/rxandroidble2/utils/StandardUUIDsParser;->getServiceName(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown service"

    :cond_0
    return-object p1
.end method

.method private createServiceType(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;
    .locals 0

    .line 148
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Primary Service"

    return-object p1

    :cond_0
    const-string p1, "Secondary Service"

    return-object p1
.end method

.method private prepareServicesDescription(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-direct {p0, p2, v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->appendDeviceHeader(Landroid/bluetooth/BluetoothDevice;Ljava/lang/StringBuilder;)V

    .line 48
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getBluetoothGattServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothGattService;

    const/16 v1, 0xa

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {p0, v0, p2}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->appendServiceDescription(Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothGattService;)V

    goto :goto_0

    :cond_0
    const-string p1, "\n--------------- ====== Finished peripheral content ====== ---------------"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public log(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const/4 v0, 0x2

    .line 39
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->isAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Preparing services description"

    const/4 v1, 0x0

    .line 40
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;->prepareServicesDescription(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
