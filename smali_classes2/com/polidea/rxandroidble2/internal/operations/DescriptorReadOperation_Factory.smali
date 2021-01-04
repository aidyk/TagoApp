.class public final Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;
.super Ljava/lang/Object;
.source "DescriptorReadOperation_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothGattProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private final descriptorProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;->timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;

    .line 27
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;->descriptorProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newDescriptorReadOperation(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Landroid/bluetooth/BluetoothGattDescriptor;)Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;
    .locals 1

    .line 56
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Landroid/bluetooth/BluetoothGattDescriptor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;
    .locals 5

    .line 32
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 33
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 34
    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;->timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;

    .line 35
    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;->descriptorProvider:Lbleshadow/javax/inject/Provider;

    .line 36
    invoke-interface {v4}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;Landroid/bluetooth/BluetoothGattDescriptor;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation_Factory;->get()Lcom/polidea/rxandroidble2/internal/operations/DescriptorReadOperation;

    move-result-object v0

    return-object v0
.end method
