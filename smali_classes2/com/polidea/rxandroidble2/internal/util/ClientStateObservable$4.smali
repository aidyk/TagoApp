.class Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$4;
.super Ljava/lang/Object;
.source "ClientStateObservable.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->subscribeActual(Lio/reactivex/Observer;)V
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
        "Lio/reactivex/Observable<",
        "Lcom/polidea/rxandroidble2/RxBleClient$State;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$4;->this$0:Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleClient$State;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$4;->this$0:Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;

    .line 135
    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->access$000(Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;)Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$4;->this$0:Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;

    .line 136
    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->access$100(Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;)Lio/reactivex/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$4;->this$0:Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;

    .line 137
    invoke-static {v2}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->access$200(Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;)Lio/reactivex/Observable;

    move-result-object v2

    .line 133
    invoke-static {p1, v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->access$300(Ljava/lang/Boolean;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;Lio/reactivex/Observable;)Lio/reactivex/Observable;

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

    .line 130
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$4;->apply(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
