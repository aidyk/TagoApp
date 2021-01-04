.class public Lcom/polidea/rxandroidble2/exceptions/BleGattCannotStartException;
.super Lcom/polidea/rxandroidble2/exceptions/BleGattException;
.source "BleGattCannotStartException.java"


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/polidea/rxandroidble2/exceptions/BleGattException;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V

    return-void
.end method

.method public constructor <init>(Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, p1}, Lcom/polidea/rxandroidble2/exceptions/BleGattException;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V

    return-void
.end method
