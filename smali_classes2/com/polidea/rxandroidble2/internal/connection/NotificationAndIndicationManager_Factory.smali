.class public final Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;
.super Ljava/lang/Object;
.source "NotificationAndIndicationManager_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;",
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

.field private final configDisableProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "[B>;"
        }
    .end annotation
.end field

.field private final configEnableIndicationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "[B>;"
        }
    .end annotation
.end field

.field private final configEnableNotificationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "[B>;"
        }
    .end annotation
.end field

.field private final descriptorWriterProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final gattCallbackProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "[B>;",
            "Lbleshadow/javax/inject/Provider<",
            "[B>;",
            "Lbleshadow/javax/inject/Provider<",
            "[B>;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->configEnableNotificationProvider:Lbleshadow/javax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->configEnableIndicationProvider:Lbleshadow/javax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->configDisableProvider:Lbleshadow/javax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 33
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->gattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 34
    iput-object p6, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->descriptorWriterProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "[B>;",
            "Lbleshadow/javax/inject/Provider<",
            "[B>;",
            "Lbleshadow/javax/inject/Provider<",
            "[B>;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;"
        }
    .end annotation

    .line 55
    new-instance v7, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v7
.end method

.method public static newNotificationAndIndicationManager([B[B[BLandroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Ljava/lang/Object;)Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;
    .locals 8

    .line 71
    new-instance v7, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    move-object v6, p5

    check-cast v6, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;-><init>([B[B[BLandroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;
    .locals 8

    .line 39
    new-instance v7, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->configEnableNotificationProvider:Lbleshadow/javax/inject/Provider;

    .line 40
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->configEnableIndicationProvider:Lbleshadow/javax/inject/Provider;

    .line 41
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [B

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->configDisableProvider:Lbleshadow/javax/inject/Provider;

    .line 42
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [B

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 43
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->gattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 44
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->descriptorWriterProvider:Lbleshadow/javax/inject/Provider;

    .line 45
    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;-><init>([B[B[BLandroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;)V

    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    move-result-object v0

    return-object v0
.end method
