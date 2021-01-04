.class public Lcom/polidea/rxandroidble2/internal/DeviceModule;
.super Ljava/lang/Object;
.source "DeviceModule.java"


# annotations
.annotation runtime Lbleshadow/dagger/Module;
    subcomponents = {
        Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;
    }
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT:Ljava/lang/String; = "connect-timeout"

.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x23

.field private static final DEFAULT_DISCONNECT_TIMEOUT:I = 0xa

.field private static final DEFAULT_OPERATION_TIMEOUT:I = 0x1e

.field public static final DISCONNECT_TIMEOUT:Ljava/lang/String; = "disconnect-timeout"

.field public static final MAC_ADDRESS:Ljava/lang/String; = "mac-address"

.field public static final OPERATION_TIMEOUT:Ljava/lang/String; = "operation-timeout"


# instance fields
.field final macAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule;->macAddress:Ljava/lang/String;

    return-void
.end method

.method static provideConnectionStateChangeListener(Lcom/jakewharton/rxrelay2/BehaviorRelay;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/internal/DeviceScope;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/polidea/rxandroidble2/internal/DeviceModule$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/DeviceModule$1;-><init>(Lcom/jakewharton/rxrelay2/BehaviorRelay;)V

    return-object v0
.end method

.method static provideConnectionStateRelay()Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/internal/DeviceScope;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->DISCONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    invoke-static {v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->createDefault(Ljava/lang/Object;)Lcom/jakewharton/rxrelay2/BehaviorRelay;

    move-result-object v0

    return-object v0
.end method

.method static providesConnectTimeoutConf(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
    .locals 4
    .param p0    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "timeout"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "connect-timeout"
    .end annotation

    .line 52
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x23

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v0
.end method

.method static providesDisconnectTimeoutConf(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
    .locals 4
    .param p0    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "timeout"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "disconnect-timeout"
    .end annotation

    .line 58
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v0
.end method


# virtual methods
.method provideBluetoothDevice(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method provideMacAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "mac-address"
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule;->macAddress:Ljava/lang/String;

    return-object v0
.end method
