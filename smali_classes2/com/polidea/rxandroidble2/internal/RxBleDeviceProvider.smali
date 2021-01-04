.class public Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;
.super Ljava/lang/Object;
.source "RxBleDeviceProvider.java"


# annotations
.annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
.end annotation


# instance fields
.field private final cachedDeviceComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/polidea/rxandroidble2/internal/DeviceComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceComponentBuilder:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentCache;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentCache;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;->cachedDeviceComponents:Ljava/util/Map;

    .line 21
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;->deviceComponentBuilder:Lbleshadow/javax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2/RxBleDevice;
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;->cachedDeviceComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/DeviceComponent;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/DeviceComponent;->provideDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;->cachedDeviceComponents:Ljava/util/Map;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;->cachedDeviceComponents:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/DeviceComponent;

    if-eqz v1, :cond_1

    .line 35
    invoke-interface {v1}, Lcom/polidea/rxandroidble2/internal/DeviceComponent;->provideDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;->deviceComponentBuilder:Lbleshadow/javax/inject/Provider;

    .line 39
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;

    new-instance v2, Lcom/polidea/rxandroidble2/internal/DeviceModule;

    invoke-direct {v2, p1}, Lcom/polidea/rxandroidble2/internal/DeviceModule;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-interface {v1, v2}, Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;->deviceModule(Lcom/polidea/rxandroidble2/internal/DeviceModule;)Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;->build()Lcom/polidea/rxandroidble2/internal/DeviceComponent;

    move-result-object v1

    .line 43
    invoke-interface {v1}, Lcom/polidea/rxandroidble2/internal/DeviceComponent;->provideDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;->cachedDeviceComponents:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
