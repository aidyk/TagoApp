.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideDeviceSdkFactory.java"

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


# static fields
.field private static final INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;
    .locals 1

    .line 17
    sget-object v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->INSTANCE:Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    return-object v0
.end method

.method public static proxyProvideDeviceSdk()I
    .locals 1

    .line 21
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideDeviceSdk()I

    move-result v0

    return v0
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .line 13
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideDeviceSdk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
