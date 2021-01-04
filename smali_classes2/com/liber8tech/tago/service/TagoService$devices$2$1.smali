.class final Lcom/liber8tech/tago/service/TagoService$devices$2$1;
.super Ljava/lang/Object;
.source "TagoService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/TagoService$devices$2;->apply(Lkotlin/Pair;)Lio/reactivex/Observable;
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
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002 \u0004*\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0002H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "kotlin.jvm.PlatformType",
        "saved",
        "Lcom/liber8tech/tago/model/TagoDevice;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/service/TagoService$devices$2;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/TagoService$devices$2;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/TagoService$devices$2$1;->this$0:Lcom/liber8tech/tago/service/TagoService$devices$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;>;"
        }
    .end annotation

    const-string v0, "saved"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoService$devices$2$1;->this$0:Lcom/liber8tech/tago/service/TagoService$devices$2;

    iget-object v0, v0, Lcom/liber8tech/tago/service/TagoService$devices$2;->this$0:Lcom/liber8tech/tago/service/TagoService;

    invoke-static {v0}, Lcom/liber8tech/tago/service/TagoService;->access$getBluetoothService$p(Lcom/liber8tech/tago/service/TagoService;)Lcom/liber8tech/tago/service/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/service/BluetoothService;->discover()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/service/TagoService$devices$2$1$1;

    invoke-direct {v1, p0, p1}, Lcom/liber8tech/tago/service/TagoService$devices$2$1$1;-><init>(Lcom/liber8tech/tago/service/TagoService$devices$2$1;Ljava/util/List;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoService$devices$2$1;->this$0:Lcom/liber8tech/tago/service/TagoService$devices$2;

    iget-object v0, v0, Lcom/liber8tech/tago/service/TagoService$devices$2;->this$0:Lcom/liber8tech/tago/service/TagoService;

    invoke-static {v0}, Lcom/liber8tech/tago/service/TagoService;->access$getBluetoothService$p(Lcom/liber8tech/tago/service/TagoService;)Lcom/liber8tech/tago/service/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/service/BluetoothService;->bluetoothOff()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/TagoService$devices$2$1;->apply(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
