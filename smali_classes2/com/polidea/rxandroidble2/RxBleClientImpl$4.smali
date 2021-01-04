.class Lcom/polidea/rxandroidble2/RxBleClientImpl$4;
.super Ljava/lang/Object;
.source "RxBleClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


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
        "Lio/reactivex/functions/Predicate<",
        "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$4;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/RxBleClientImpl$4;->test(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Z

    move-result p1

    return p1
.end method
