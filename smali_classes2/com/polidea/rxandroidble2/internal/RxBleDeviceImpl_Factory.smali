.class public final Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;
.super Ljava/lang/Object;
.source "RxBleDeviceImpl_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothDeviceProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionStateRelayProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectorProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/Connector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/Connector;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;->bluetoothDeviceProvider:Lbleshadow/javax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;->connectorProvider:Lbleshadow/javax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;->connectionStateRelayProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/Connector;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;>;)",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newRxBleDeviceImpl(Landroid/bluetooth/BluetoothDevice;Lcom/polidea/rxandroidble2/internal/connection/Connector;Lcom/jakewharton/rxrelay2/BehaviorRelay;)Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/polidea/rxandroidble2/internal/connection/Connector;",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/polidea/rxandroidble2/internal/connection/Connector;Lcom/jakewharton/rxrelay2/BehaviorRelay;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;
    .locals 4

    .line 30
    new-instance v0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;->bluetoothDeviceProvider:Lbleshadow/javax/inject/Provider;

    .line 31
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;->connectorProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/connection/Connector;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;->connectionStateRelayProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/polidea/rxandroidble2/internal/connection/Connector;Lcom/jakewharton/rxrelay2/BehaviorRelay;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;->get()Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;

    move-result-object v0

    return-object v0
.end method
