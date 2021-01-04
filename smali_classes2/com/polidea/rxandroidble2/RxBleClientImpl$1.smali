.class Lcom/polidea/rxandroidble2/RxBleClientImpl$1;
.super Ljava/lang/Object;
.source "RxBleClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/RxBleClientImpl;->scanBleDevices(Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/polidea/rxandroidble2/scan/ScanResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

.field final synthetic val$scanFilters:[Lcom/polidea/rxandroidble2/scan/ScanFilter;

.field final synthetic val$scanSettings:Lcom/polidea/rxandroidble2/scan/ScanSettings;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$1;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$1;->val$scanSettings:Lcom/polidea/rxandroidble2/scan/ScanSettings;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$1;->val$scanFilters:[Lcom/polidea/rxandroidble2/scan/ScanFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$1;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->access$000(Lcom/polidea/rxandroidble2/RxBleClientImpl;)Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;->verify()V

    .line 123
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$1;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->access$100(Lcom/polidea/rxandroidble2/RxBleClientImpl;)Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$1;->val$scanSettings:Lcom/polidea/rxandroidble2/scan/ScanSettings;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$1;->val$scanFilters:[Lcom/polidea/rxandroidble2/scan/ScanFilter;

    invoke-interface {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;->build(Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;

    move-result-object v0

    .line 124
    iget-object v1, v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;->scanOperation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    .line 125
    iget-object v2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$1;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    invoke-static {v2}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->access$500(Lcom/polidea/rxandroidble2/RxBleClientImpl;)Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$1;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    .line 126
    invoke-static {v2}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->access$400(Lcom/polidea/rxandroidble2/RxBleClientImpl;)Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;->scanOperationBehaviourEmulatorTransformer:Lio/reactivex/ObservableTransformer;

    .line 127
    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$1;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    .line 128
    invoke-static {v1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->access$300(Lcom/polidea/rxandroidble2/RxBleClientImpl;)Lio/reactivex/functions/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$1;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    .line 129
    invoke-static {v1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->access$200(Lcom/polidea/rxandroidble2/RxBleClientImpl;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->mergeWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/RxBleClientImpl$1;->call()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
