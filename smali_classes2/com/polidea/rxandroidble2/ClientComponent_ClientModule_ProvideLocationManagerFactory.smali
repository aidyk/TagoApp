.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationManagerFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideLocationManagerFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Landroid/location/LocationManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationManagerFactory;->module:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    return-void
.end method

.method public static create(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationManagerFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationManagerFactory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationManagerFactory;-><init>(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;)V

    return-object v0
.end method

.method public static proxyProvideLocationManager(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;)Landroid/location/LocationManager;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideLocationManager()Landroid/location/LocationManager;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/location/LocationManager;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationManagerFactory;->module:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    .line 20
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 19
    invoke-static {v0, v1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationManagerFactory;->get()Landroid/location/LocationManager;

    move-result-object v0

    return-object v0
.end method
