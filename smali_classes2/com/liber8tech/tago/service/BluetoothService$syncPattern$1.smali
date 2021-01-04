.class final Lcom/liber8tech/tago/service/BluetoothService$syncPattern$1;
.super Ljava/lang/Object;
.source "BluetoothService.kt"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/BluetoothService;->syncPattern(Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/liber8tech/tago/model/Pattern;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/service/BluetoothService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/BluetoothService;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/BluetoothService$syncPattern$1;->this$0:Lcom/liber8tech/tago/service/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/liber8tech/tago/service/BluetoothService$syncPattern$1;->this$0:Lcom/liber8tech/tago/service/BluetoothService;

    invoke-static {v0}, Lcom/liber8tech/tago/service/BluetoothService;->access$getDoneSignal$p(Lcom/liber8tech/tago/service/BluetoothService;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
