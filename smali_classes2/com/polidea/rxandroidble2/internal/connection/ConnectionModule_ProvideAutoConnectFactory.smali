.class public final Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideAutoConnectFactory;
.super Ljava/lang/Object;
.source "ConnectionModule_ProvideAutoConnectFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideAutoConnectFactory;->module:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    return-void
.end method

.method public static create(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideAutoConnectFactory;
    .locals 1

    .line 19
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideAutoConnectFactory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideAutoConnectFactory;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)V

    return-object v0
.end method

.method public static proxyProvideAutoConnect(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;->provideAutoConnect()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideAutoConnectFactory;->module:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;->provideAutoConnect()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideAutoConnectFactory;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
