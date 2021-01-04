.class public interface abstract Lcom/polidea/rxandroidble2/internal/DeviceComponent;
.super Ljava/lang/Object;
.source "DeviceComponent.java"


# annotations
.annotation runtime Lbleshadow/dagger/Subcomponent;
    modules = {
        Lcom/polidea/rxandroidble2/internal/DeviceModule;,
        Lcom/polidea/rxandroidble2/internal/DeviceModuleBinder;
    }
.end annotation

.annotation runtime Lcom/polidea/rxandroidble2/internal/DeviceScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/internal/DeviceComponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract provideDevice()Lcom/polidea/rxandroidble2/RxBleDevice;
    .annotation runtime Lcom/polidea/rxandroidble2/internal/DeviceScope;
    .end annotation
.end method
