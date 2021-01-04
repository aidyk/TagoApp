.class final Lcom/liber8tech/tago/service/BluetoothService$connect$1;
.super Ljava/lang/Object;
.source "BluetoothService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/BluetoothService;->connect(Lcom/polidea/rxandroidble2/RxBleDevice;)Lio/reactivex/Observable;
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a&\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
        "kotlin.jvm.PlatformType",
        "connection",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/liber8tech/tago/service/BluetoothService$connect$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liber8tech/tago/service/BluetoothService$connect$1;

    invoke-direct {v0}, Lcom/liber8tech/tago/service/BluetoothService$connect$1;-><init>()V

    sput-object v0, Lcom/liber8tech/tago/service/BluetoothService$connect$1;->INSTANCE:Lcom/liber8tech/tago/service/BluetoothService$connect$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Lcom/polidea/rxandroidble2/RxBleConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-interface {p1}, Lcom/polidea/rxandroidble2/RxBleConnection;->discoverServices()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/service/BluetoothService$connect$1$1;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/service/BluetoothService$connect$1$1;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/BluetoothService$connect$1;->apply(Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
