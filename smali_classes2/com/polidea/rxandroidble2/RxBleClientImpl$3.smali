.class Lcom/polidea/rxandroidble2/RxBleClientImpl$3;
.super Ljava/lang/Object;
.source "RxBleClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/RxBleClientImpl;->bluetoothAdapterOffExceptionObservable()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
        "Lio/reactivex/MaybeSource<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$3;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Lio/reactivex/MaybeSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ")",
            "Lio/reactivex/MaybeSource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    new-instance p1, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(I)V

    invoke-static {p1}, Lio/reactivex/Maybe;->error(Ljava/lang/Throwable;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/RxBleClientImpl$3;->apply(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Lio/reactivex/MaybeSource;

    move-result-object p1

    return-object p1
.end method
