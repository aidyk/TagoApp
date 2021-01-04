.class public Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;
.super Ljava/lang/Object;
.source "ScanSetupBuilderImplApi18.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final internalScanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

.field private final rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

.field private final scanSettingsEmulator:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    .line 30
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;->internalScanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    .line 31
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;->scanSettingsEmulator:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

    return-void
.end method


# virtual methods
.method public varargs build(Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;->scanSettingsEmulator:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

    .line 37
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanSettings;->getScanMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->emulateScanMode(I)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;->scanSettingsEmulator:Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;

    .line 39
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanSettings;->getCallbackType()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->emulateCallbackType(I)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    .line 40
    new-instance v1, Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;

    new-instance v2, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;->internalScanResultCreator:Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    new-instance v5, Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;

    invoke-direct {v5, p2}, Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;-><init>([Lcom/polidea/rxandroidble2/scan/ScanFilter;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/polidea/rxandroidble2/internal/operations/ScanOperationApi18;-><init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/EmulatedScanFilterMatcher;)V

    new-instance p2, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18$1;

    invoke-direct {p2, p0, v0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18$1;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;Lio/reactivex/ObservableTransformer;Lio/reactivex/ObservableTransformer;)V

    invoke-direct {v1, v2, p2}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;-><init>(Lcom/polidea/rxandroidble2/internal/operations/Operation;Lio/reactivex/ObservableTransformer;)V

    return-object v1
.end method
