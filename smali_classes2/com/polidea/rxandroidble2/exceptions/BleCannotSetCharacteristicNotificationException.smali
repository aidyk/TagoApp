.class public Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;
.super Lcom/polidea/rxandroidble2/exceptions/BleException;
.source "BleCannotSetCharacteristicNotificationException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException$Reason;
    }
.end annotation


# static fields
.field public static final CANNOT_FIND_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR:I = 0x2

.field public static final CANNOT_SET_LOCAL_NOTIFICATION:I = 0x1

.field public static final CANNOT_WRITE_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR:I = 0x3

.field public static final UNKNOWN:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final reason:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 66
    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;->createMessage(Landroid/bluetooth/BluetoothGattCharacteristic;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleException;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;->bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 68
    iput v0, p0, Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;->reason:I

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;ILjava/lang/Throwable;)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 74
    invoke-static {p1, p2}, Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;->createMessage(Landroid/bluetooth/BluetoothGattCharacteristic;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/polidea/rxandroidble2/exceptions/BleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    iput-object p1, p0, Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;->bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 76
    iput p2, p0, Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;->reason:I

    return-void
.end method

.method private static createMessage(Landroid/bluetooth/BluetoothGattCharacteristic;I)Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;->reasonDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") with characteristic UUID "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static reasonDescription(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown error"

    return-object p0

    :pswitch_0
    const-string p0, "Cannot write client characteristic config descriptor"

    return-object p0

    :pswitch_1
    const-string p0, "Cannot find client characteristic config descriptor"

    return-object p0

    :pswitch_2
    const-string p0, "Cannot set local notification"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBluetoothGattCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;->bluetoothGattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getReason()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;->reason:I

    return v0
.end method
