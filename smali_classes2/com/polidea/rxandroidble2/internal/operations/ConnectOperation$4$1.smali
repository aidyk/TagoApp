.class Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$4$1;
.super Ljava/lang/Object;
.source "ConnectOperation.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$4;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$4;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$4;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$4$1;->this$1:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->CONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    if-ne p1, v0, :cond_0

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

    .line 133
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$4$1;->test(Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;)Z

    move-result p1

    return p1
.end method
