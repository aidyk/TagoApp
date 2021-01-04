.class public Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;
.super Ljava/lang/Object;
.source "CheckerLocationProvider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final locationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/location/LocationManager;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->contentResolver:Landroid/content/ContentResolver;

    .line 22
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->locationManager:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public isLocationProviderEnabled()Z
    .locals 5

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v0, v3, :cond_1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->contentResolver:Landroid/content/ContentResolver;

    const-string v3, "location_mode"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v3, "Could not use LOCATION_MODE check. Falling back to legacy method."

    .line 30
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    .line 34
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method
