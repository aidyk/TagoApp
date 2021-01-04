.class public Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;
.super Ljava/lang/Object;
.source "IllegalOperationMessageCreator.java"


# instance fields
.field private propertiesParser:Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;->propertiesParser:Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    return-void
.end method


# virtual methods
.method public createMismatchMessage(Landroid/bluetooth/BluetoothGattCharacteristic;I)Ljava/lang/String;
    .locals 5

    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Characteristic %s supports properties: %s (%d) does not have any property matching %s (%d)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;->propertiesParser:Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    .line 28
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;->propertiesIntToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 29
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;->propertiesParser:Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    .line 30
    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;->propertiesIntToString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v2, p2

    .line 24
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
