.class final Lcom/liber8tech/tago/service/FirmwareUpdate$perform$sendObs$2$1;
.super Ljava/lang/Object;
.source "FirmwareUpdate.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/FirmwareUpdate$perform$sendObs$2;->apply(Lcom/liber8tech/tago/protocol/Message;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0010\u0000\u001a&\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "",
        "kotlin.jvm.PlatformType",
        "it",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/service/FirmwareUpdate$perform$sendObs$2;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/FirmwareUpdate$perform$sendObs$2;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/FirmwareUpdate$perform$sendObs$2$1;->this$0:Lcom/liber8tech/tago/service/FirmwareUpdate$perform$sendObs$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply([B)Lio/reactivex/Observable;
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lio/reactivex/Observable<",
            "[B>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/liber8tech/tago/service/FirmwareUpdate$perform$sendObs$2$1;->this$0:Lcom/liber8tech/tago/service/FirmwareUpdate$perform$sendObs$2;

    iget-object v0, v0, Lcom/liber8tech/tago/service/FirmwareUpdate$perform$sendObs$2;->this$0:Lcom/liber8tech/tago/service/FirmwareUpdate;

    invoke-static {v0}, Lcom/liber8tech/tago/service/FirmwareUpdate;->access$getConnection$p(Lcom/liber8tech/tago/service/FirmwareUpdate;)Lcom/polidea/rxandroidble2/RxBleConnection;

    move-result-object v0

    sget-object v1, Lcom/liber8tech/tago/service/BluetoothService;->Companion:Lcom/liber8tech/tago/service/BluetoothService$Companion;

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/BluetoothService$Companion;->getTxId()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/polidea/rxandroidble2/RxBleConnection;->writeCharacteristic(Ljava/util/UUID;[B)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/FirmwareUpdate$perform$sendObs$2$1;->apply([B)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
