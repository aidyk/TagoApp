.class public Lcom/polidea/rxandroidble2/exceptions/BleGattCharacteristicException;
.super Lcom/polidea/rxandroidble2/exceptions/BleGattException;
.source "BleGattCharacteristicException.java"


# instance fields
.field public final characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p3, p4}, Lcom/polidea/rxandroidble2/exceptions/BleGattException;-><init>(Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V

    .line 23
    iput-object p2, p0, Lcom/polidea/rxandroidble2/exceptions/BleGattCharacteristicException;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method
