.class Lcom/polidea/rxandroidble2/RxBleClientImpl$2;
.super Ljava/lang/Object;
.source "RxBleClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/RxBleClientImpl;->scanBleDevices([Ljava/util/UUID;)Lio/reactivex/Observable;
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
        "Lcom/polidea/rxandroidble2/RxBleScanResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

.field final synthetic val$filterServiceUUIDs:[Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;[Ljava/util/UUID;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$2;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$2;->val$filterServiceUUIDs:[Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/polidea/rxandroidble2/RxBleScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$2;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->access$000(Lcom/polidea/rxandroidble2/RxBleClientImpl;)Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;->verify()V

    .line 144
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$2;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$2;->val$filterServiceUUIDs:[Ljava/util/UUID;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->access$600(Lcom/polidea/rxandroidble2/RxBleClientImpl;[Ljava/util/UUID;)Lio/reactivex/Observable;

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

    .line 140
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/RxBleClientImpl$2;->call()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
