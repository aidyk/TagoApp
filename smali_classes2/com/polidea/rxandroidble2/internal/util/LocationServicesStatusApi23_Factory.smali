.class public final Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;
.super Ljava/lang/Object;
.source "LocationServicesStatusApi23_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;",
        ">;"
    }
.end annotation


# instance fields
.field private final checkerLocationPermissionProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final checkerLocationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final isAndroidWearProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final targetSdkProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->checkerLocationProvider:Lbleshadow/javax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->checkerLocationPermissionProvider:Lbleshadow/javax/inject/Provider;

    .line 24
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->targetSdkProvider:Lbleshadow/javax/inject/Provider;

    .line 25
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->isAndroidWearProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newLocationServicesStatusApi23(Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;IZ)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;
    .locals 1

    .line 54
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;-><init>(Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;IZ)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;
    .locals 5

    .line 30
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->checkerLocationProvider:Lbleshadow/javax/inject/Provider;

    .line 31
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->checkerLocationPermissionProvider:Lbleshadow/javax/inject/Provider;

    .line 32
    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->targetSdkProvider:Lbleshadow/javax/inject/Provider;

    .line 33
    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->isAndroidWearProvider:Lbleshadow/javax/inject/Provider;

    .line 34
    invoke-interface {v4}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;-><init>(Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;Lcom/polidea/rxandroidble2/internal/util/CheckerLocationPermission;IZ)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;

    move-result-object v0

    return-object v0
.end method
