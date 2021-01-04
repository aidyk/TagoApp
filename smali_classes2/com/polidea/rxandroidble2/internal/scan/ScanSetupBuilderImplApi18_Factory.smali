.class public final Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18_Factory;
.super Ljava/lang/Object;
.source "ScanSetupBuilderImplApi18_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;",
        ">;"
    }
.end annotation


# instance fields
.field private final internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final scanSettingsEmulatorProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18_Factory;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    .line 21
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18_Factory;->scanSettingsEmulatorProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newScanSetupBuilderImplApi18(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;
    .locals 1

    .line 46
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;-><init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;
    .locals 4

    .line 26
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 27
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18_Factory;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    .line 28
    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18_Factory;->scanSettingsEmulatorProvider:Lbleshadow/javax/inject/Provider;

    .line 29
    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;-><init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18_Factory;->get()Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;

    move-result-object v0

    return-object v0
.end method
