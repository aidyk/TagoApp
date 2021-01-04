.class public final Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;
.super Ljava/lang/Object;
.source "DeviceModule_ProvideBluetoothDeviceFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterWrapperProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/polidea/rxandroidble2/internal/DeviceModule;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/DeviceModule;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/DeviceModule;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;->module:Lcom/polidea/rxandroidble2/internal/DeviceModule;

    .line 18
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;->adapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/polidea/rxandroidble2/internal/DeviceModule;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/DeviceModule;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;-><init>(Lcom/polidea/rxandroidble2/internal/DeviceModule;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideBluetoothDevice(Lcom/polidea/rxandroidble2/internal/DeviceModule;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/DeviceModule;->provideBluetoothDevice(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {p0, p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;->module:Lcom/polidea/rxandroidble2/internal/DeviceModule;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;->adapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 24
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/internal/DeviceModule;->provideBluetoothDevice(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {v0, v1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;->get()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method
