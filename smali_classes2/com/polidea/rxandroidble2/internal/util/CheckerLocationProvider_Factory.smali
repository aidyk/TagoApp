.class public final Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;
.super Ljava/lang/Object;
.source "CheckerLocationProvider_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final contentResolverProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final locationManagerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/location/LocationManager;",
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
            "Landroid/content/ContentResolver;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/location/LocationManager;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;->contentResolverProvider:Lbleshadow/javax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;->locationManagerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/location/LocationManager;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newCheckerLocationProvider(Landroid/content/ContentResolver;Landroid/location/LocationManager;)Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;
    .locals 1

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;-><init>(Landroid/content/ContentResolver;Landroid/location/LocationManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;
    .locals 3

    .line 23
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;->contentResolverProvider:Lbleshadow/javax/inject/Provider;

    .line 24
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;->locationManagerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;-><init>(Landroid/content/ContentResolver;Landroid/location/LocationManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;->get()Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    move-result-object v0

    return-object v0
.end method
