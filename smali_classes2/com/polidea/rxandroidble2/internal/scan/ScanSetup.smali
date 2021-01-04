.class public Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;
.super Ljava/lang/Object;
.source "ScanSetup.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final scanOperation:Lcom/polidea/rxandroidble2/internal/operations/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2/internal/operations/Operation<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public final scanOperationBehaviourEmulatorTransformer:Lio/reactivex/ObservableTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/Operation;Lio/reactivex/ObservableTransformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/operations/Operation<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;->scanOperation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    .line 28
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;->scanOperationBehaviourEmulatorTransformer:Lio/reactivex/ObservableTransformer;

    return-void
.end method
