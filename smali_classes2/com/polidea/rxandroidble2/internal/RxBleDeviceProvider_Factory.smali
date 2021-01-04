.class public final Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider_Factory;
.super Ljava/lang/Object;
.source "RxBleDeviceProvider_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceComponentBuilderProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceComponentCacheProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentCache;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider_Factory;->deviceComponentCacheProvider:Lbleshadow/javax/inject/Provider;

    .line 17
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider_Factory;->deviceComponentBuilderProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentCache;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider_Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;
    .locals 3

    .line 22
    new-instance v0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider_Factory;->deviceComponentCacheProvider:Lbleshadow/javax/inject/Provider;

    .line 23
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentCache;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider_Factory;->deviceComponentBuilderProvider:Lbleshadow/javax/inject/Provider;

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;-><init>(Lcom/polidea/rxandroidble2/internal/cache/DeviceComponentCache;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider_Factory;->get()Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;

    move-result-object v0

    return-object v0
.end method
