.class public Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;
.super Ljava/lang/Object;
.source "LocationServicesStatusApi23.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;


# instance fields
.field private final checkerLocationPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;

.field private final checkerLocationProvider:Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

.field private final isAndroidWear:Z

.field private final targetSdk:I


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;IZ)V
    .locals 0
    .param p3    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "target-sdk"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "android-wear"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;->checkerLocationProvider:Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    .line 25
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;->checkerLocationPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;

    .line 26
    iput p3, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;->targetSdk:I

    .line 27
    iput-boolean p4, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;->isAndroidWear:Z

    return-void
.end method

.method private isLocationProviderEnabledRequired()Z
    .locals 2

    .line 46
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;->isAndroidWear:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;->targetSdk:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isLocationPermissionOk()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;->checkerLocationPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;->isLocationPermissionGranted()Z

    move-result v0

    return v0
.end method

.method public isLocationProviderOk()Z
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;->isLocationProviderEnabledRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;->checkerLocationProvider:Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->isLocationProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
