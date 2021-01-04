.class Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21$1;
.super Ljava/lang/Object;
.source "ScanSetupBuilderImplApi21.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;->build(Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
        "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;

.field final synthetic val$callbackTypeTransformer:Lio/reactivex/ObservableTransformer;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;Lio/reactivex/ObservableTransformer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21$1;->this$0:Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21$1;->val$callbackTypeTransformer:Lio/reactivex/ObservableTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21$1;->val$callbackTypeTransformer:Lio/reactivex/ObservableTransformer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21$1;->apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
