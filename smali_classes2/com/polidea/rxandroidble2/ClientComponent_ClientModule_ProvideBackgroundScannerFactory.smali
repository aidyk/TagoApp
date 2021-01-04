.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBackgroundScannerFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideBackgroundScannerFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/scan/BackgroundScanner;",
        ">;"
    }
.end annotation


# instance fields
.field private final backgroundScannerImplProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;",
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
            "Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBackgroundScannerFactory;->module:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    .line 20
    iput-object p2, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBackgroundScannerFactory;->backgroundScannerImplProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBackgroundScannerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;",
            ">;)",
            "Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBackgroundScannerFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBackgroundScannerFactory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBackgroundScannerFactory;-><init>(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideBackgroundScanner(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;)Lcom/polidea/rxandroidble2/scan/BackgroundScanner;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideBackgroundScanner(Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;)Lcom/polidea/rxandroidble2/scan/BackgroundScanner;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/scan/BackgroundScanner;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/scan/BackgroundScanner;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBackgroundScannerFactory;->module:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBackgroundScannerFactory;->backgroundScannerImplProvider:Lbleshadow/javax/inject/Provider;

    .line 26
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideBackgroundScanner(Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;)Lcom/polidea/rxandroidble2/scan/BackgroundScanner;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 25
    invoke-static {v0, v1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/scan/BackgroundScanner;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBackgroundScannerFactory;->get()Lcom/polidea/rxandroidble2/scan/BackgroundScanner;

    move-result-object v0

    return-object v0
.end method
