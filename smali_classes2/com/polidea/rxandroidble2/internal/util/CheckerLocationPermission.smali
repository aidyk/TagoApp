.class public Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;
.super Ljava/lang/Object;
.source "CheckerLocationPermission.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;->context:Landroid/content/Context;

    return-void
.end method

.method private isPermissionGranted(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;->context:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "permission is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method isLocationPermissionGranted()Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 21
    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 22
    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;->isPermissionGranted(Ljava/lang/String;)Z

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
