.class public final Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;
.super Ljava/lang/Object;
.source "DeviceModule_ProvideMacAddressFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/polidea/rxandroidble2/internal/DeviceModule;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/DeviceModule;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;->module:Lcom/polidea/rxandroidble2/internal/DeviceModule;

    return-void
.end method

.method public static create(Lcom/polidea/rxandroidble2/internal/DeviceModule;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;
    .locals 1

    .line 21
    new-instance v0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;-><init>(Lcom/polidea/rxandroidble2/internal/DeviceModule;)V

    return-object v0
.end method

.method public static proxyProvideMacAddress(Lcom/polidea/rxandroidble2/internal/DeviceModule;)Ljava/lang/String;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/DeviceModule;->provideMacAddress()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 25
    invoke-static {p0, v0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideMacAddressFactory;->module:Lcom/polidea/rxandroidble2/internal/DeviceModule;

    .line 17
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/DeviceModule;->provideMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 16
    invoke-static {v0, v1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
