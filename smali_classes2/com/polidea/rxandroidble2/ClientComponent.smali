.class public interface abstract Lcom/polidea/rxandroidble2/ClientComponent;
.super Ljava/lang/Object;
.source "ClientComponent.java"


# annotations
.annotation runtime Lbleshadow/dagger/Component;
    modules = {
        Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;,
        Lcom/polidea/rxandroidble2/ClientComponent$ClientModuleBinder;
    }
.end annotation

.annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;,
        Lcom/polidea/rxandroidble2/ClientComponent$ClientModuleBinder;,
        Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;,
        Lcom/polidea/rxandroidble2/ClientComponent$BluetoothConstants;,
        Lcom/polidea/rxandroidble2/ClientComponent$NamedBooleanObservables;,
        Lcom/polidea/rxandroidble2/ClientComponent$PlatformConstants;,
        Lcom/polidea/rxandroidble2/ClientComponent$NamedSchedulers;,
        Lcom/polidea/rxandroidble2/ClientComponent$NamedExecutors;
    }
.end annotation


# virtual methods
.method public abstract locationServicesOkObservable()Lcom/polidea/rxandroidble2/helpers/LocationServicesOkObservable;
.end method

.method public abstract rxBleClient()Lcom/polidea/rxandroidble2/RxBleClient;
.end method
