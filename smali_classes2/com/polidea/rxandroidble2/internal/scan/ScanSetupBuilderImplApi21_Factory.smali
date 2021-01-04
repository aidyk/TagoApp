.class public final Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;
.super Ljava/lang/Object;
.source "ScanSetupBuilderImplApi21_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;",
        ">;"
    }
.end annotation


# instance fields
.field private final androidScanObjectsConverterProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
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
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    .line 24
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;->scanSettingsEmulatorProvider:Lbleshadow/javax/inject/Provider;

    .line 25
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;->androidScanObjectsConverterProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;
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
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newScanSetupBuilderImplApi21(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;)Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;
    .locals 1

    .line 54
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;-><init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;
    .locals 5

    .line 30
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 31
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    .line 32
    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;->scanSettingsEmulatorProvider:Lbleshadow/javax/inject/Provider;

    .line 33
    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;->androidScanObjectsConverterProvider:Lbleshadow/javax/inject/Provider;

    .line 34
    invoke-interface {v4}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;-><init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21_Factory;->get()Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;

    move-result-object v0

    return-object v0
.end method
