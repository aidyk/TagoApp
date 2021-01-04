.class public abstract Lcom/polidea/rxandroidble2/RxBleClient;
.super Ljava/lang/Object;
.source "RxBleClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/RxBleClient$State;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/polidea/rxandroidble2/RxBleClient;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-static {}, Lcom/polidea/rxandroidble2/DaggerClientComponent;->builder()Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    invoke-direct {v1, p0}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;->clientModule(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;)Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;->build()Lcom/polidea/rxandroidble2/ClientComponent;

    move-result-object p0

    .line 56
    invoke-interface {p0}, Lcom/polidea/rxandroidble2/ClientComponent;->rxBleClient()Lcom/polidea/rxandroidble2/RxBleClient;

    move-result-object p0

    return-object p0
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->setLogLevel(I)V

    return-void
.end method


# virtual methods
.method public abstract getBackgroundScanner()Lcom/polidea/rxandroidble2/scan/BackgroundScanner;
.end method

.method public abstract getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2/RxBleDevice;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getBondedDevices()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getState()Lcom/polidea/rxandroidble2/RxBleClient$State;
.end method

.method public abstract observeStateChanges()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleClient$State;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract scanBleDevices(Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/scan/ScanSettings;",
            "[",
            "Lcom/polidea/rxandroidble2/scan/ScanFilter;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract scanBleDevices([Ljava/util/UUID;)Lio/reactivex/Observable;
    .param p1    # [Ljava/util/UUID;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleScanResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
