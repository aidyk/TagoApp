.class Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3$1;
.super Ljava/lang/Object;
.source "ClientStateObservable.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3;->apply(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Boolean;",
        "Lcom/polidea/rxandroidble2/RxBleClient$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3$1;->this$0:Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Boolean;)Lcom/polidea/rxandroidble2/RxBleClient$State;
    .locals 0

    .line 105
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/polidea/rxandroidble2/RxBleClient$State;->READY:Lcom/polidea/rxandroidble2/RxBleClient$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/polidea/rxandroidble2/RxBleClient$State;->LOCATION_SERVICES_NOT_ENABLED:Lcom/polidea/rxandroidble2/RxBleClient$State;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$3$1;->apply(Ljava/lang/Boolean;)Lcom/polidea/rxandroidble2/RxBleClient$State;

    move-result-object p1

    return-object p1
.end method
