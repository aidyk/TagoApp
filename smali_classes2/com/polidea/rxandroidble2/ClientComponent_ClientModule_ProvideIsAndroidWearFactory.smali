.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsAndroidWearFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideIsAndroidWearFactory.java"

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
.field private final deviceSdkProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsAndroidWearFactory;->module:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    .line 16
    iput-object p2, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsAndroidWearFactory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsAndroidWearFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsAndroidWearFactory;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsAndroidWearFactory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsAndroidWearFactory;-><init>(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideIsAndroidWear(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;I)Z
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideIsAndroidWear(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsAndroidWearFactory;->module:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsAndroidWearFactory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideIsAndroidWear(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsAndroidWearFactory;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
