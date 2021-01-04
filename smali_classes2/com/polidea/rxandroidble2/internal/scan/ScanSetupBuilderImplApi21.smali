.class public Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;
.super Ljava/lang/Object;
.source "ScanSetupBuilderImplApi21.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final androidScanObjectsConverter:Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

.field private final internalScanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

.field private final rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

.field private final scanSettingsEmulator:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    .line 34
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;->internalScanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    .line 35
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;->scanSettingsEmulator:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

    .line 36
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;->androidScanObjectsConverter:Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    return-void
.end method


# virtual methods
.method public varargs build(Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;
    .locals 10
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;->scanSettingsEmulator:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

    .line 47
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanSettings;->getCallbackType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->emulateCallbackType(I)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;

    new-instance v9, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;->internalScanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    iget-object v5, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;->androidScanObjectsConverter:Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    new-instance v7, Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;

    invoke-direct {v7, p2}, Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;-><init>([Lcom/polidea/rxandroidble2/scan/ScanFilter;)V

    const/4 v8, 0x0

    move-object v2, v9

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi21;-><init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;Lcom/polidea/rxandroidble2/scan/ScanSettings;Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)V

    new-instance p1, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21$1;

    invoke-direct {p1, p0, v0}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21$1;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;Lio/reactivex/ObservableTransformer;)V

    invoke-direct {v1, v9, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;-><init>(Lcom/polidea/rxandroidble2/internal/operations/Operation;Lio/reactivex/ObservableTransformer;)V

    return-object v1
.end method
