.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideTargetSdkFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideTargetSdkFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideTargetSdkFactory;->module:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    return-void
.end method

.method public static create(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideTargetSdkFactory;
    .locals 1

    .line 21
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideTargetSdkFactory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideTargetSdkFactory;-><init>(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;)V

    return-object v0
.end method

.method public static proxyProvideTargetSdk(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;)I
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideTargetSdk()I

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideTargetSdkFactory;->module:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideTargetSdk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideTargetSdkFactory;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
