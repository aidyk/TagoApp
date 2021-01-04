.class public final Lcom/liber8tech/tago/service/TagoService;
.super Ljava/lang/Object;
.source "TagoService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTagoService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagoService.kt\ncom/liber8tech/tago/service/TagoService\n+ 2 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm\n+ 3 Observables.kt\nio/reactivex/rxkotlin/ObservablesKt\n*L\n1#1,102:1\n13#2,10:103\n185#3:113\n*E\n*S KotlinDebug\n*F\n+ 1 TagoService.kt\ncom/liber8tech/tago/service/TagoService\n*L\n25#1,10:103\n44#1:113\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J$\u0010\t\u001a \u0012\u001c\u0012\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000b0\nJ\u0018\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000b0\nJ\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\u0012\u001a\u00020\u0013J\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\nJ\u001c\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\n2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J\u0012\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u000c0\nJ\u0012\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\nJ\u0012\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\nJ\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00110\nJ\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\u001d\u001a\u00020\rJ\u001c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/TagoService;",
        "",
        "apiService",
        "Lcom/liber8tech/tago/service/TagoApiService;",
        "bluetoothService",
        "Lcom/liber8tech/tago/service/BluetoothService;",
        "locationService",
        "Lcom/liber8tech/tago/service/LocationService;",
        "(Lcom/liber8tech/tago/service/TagoApiService;Lcom/liber8tech/tago/service/BluetoothService;Lcom/liber8tech/tago/service/LocationService;)V",
        "allDevices",
        "Lio/reactivex/Observable;",
        "Lkotlin/Pair;",
        "",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "bleAndLocationStates",
        "",
        "delete",
        "",
        "id",
        "",
        "deleteAll",
        "devices",
        "own",
        "get",
        "Lcom/liber8tech/tago/model/TagoDevice;",
        "nearByDevices",
        "ownDevices",
        "sync",
        "update",
        "device",
        "lowBat",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final apiService:Lcom/liber8tech/tago/service/TagoApiService;

.field private final bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

.field private final locationService:Lcom/liber8tech/tago/service/LocationService;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/service/TagoApiService;Lcom/liber8tech/tago/service/BluetoothService;Lcom/liber8tech/tago/service/LocationService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/TagoApiService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/liber8tech/tago/service/BluetoothService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/liber8tech/tago/service/LocationService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "apiService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bluetoothService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/service/TagoService;->apiService:Lcom/liber8tech/tago/service/TagoApiService;

    iput-object p2, p0, Lcom/liber8tech/tago/service/TagoService;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    iput-object p3, p0, Lcom/liber8tech/tago/service/TagoService;->locationService:Lcom/liber8tech/tago/service/LocationService;

    return-void
.end method

.method public static final synthetic access$getApiService$p(Lcom/liber8tech/tago/service/TagoService;)Lcom/liber8tech/tago/service/TagoApiService;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/liber8tech/tago/service/TagoService;->apiService:Lcom/liber8tech/tago/service/TagoApiService;

    return-object p0
.end method

.method public static final synthetic access$getBluetoothService$p(Lcom/liber8tech/tago/service/TagoService;)Lcom/liber8tech/tago/service/BluetoothService;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/liber8tech/tago/service/TagoService;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    return-object p0
.end method

.method private final devices(Z)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;>;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/liber8tech/tago/service/TagoService;->bleAndLocationStates()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/liber8tech/tago/service/TagoService$devices$1;->INSTANCE:Lcom/liber8tech/tago/service/TagoService$devices$1;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/service/TagoService$devices$2;

    invoke-direct {v1, p0, p1}, Lcom/liber8tech/tago/service/TagoService$devices$2;-><init>(Lcom/liber8tech/tago/service/TagoService;Z)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "bleAndLocationStates().f\u2026toothOff())\n      }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final allDevices()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;",
            "Ljava/util/List<",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/liber8tech/tago/service/TagoService;->bleAndLocationStates()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/liber8tech/tago/service/TagoService$allDevices$1;->INSTANCE:Lcom/liber8tech/tago/service/TagoService$allDevices$1;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/service/TagoService$allDevices$2;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/service/TagoService$allDevices$2;-><init>(Lcom/liber8tech/tago/service/TagoService;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "bleAndLocationStates().f\u2026toothOff())\n      }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bleAndLocationStates()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoService;->locationService:Lcom/liber8tech/tago/service/LocationService;

    invoke-virtual {v0}, Lcom/liber8tech/tago/service/LocationService;->states()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    iget-object v1, p0, Lcom/liber8tech/tago/service/TagoService;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/BluetoothService;->states()Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    .line 63
    sget-object v2, Lcom/liber8tech/tago/service/TagoService$bleAndLocationStates$1;->INSTANCE:Lcom/liber8tech/tago/service/TagoService$bleAndLocationStates$1;

    check-cast v2, Lio/reactivex/functions/BiFunction;

    .line 62
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.combineLatest\u2026tion, bluetooth)\n      })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final delete(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoService;->apiService:Lcom/liber8tech/tago/service/TagoApiService;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/TagoApiService;->delete(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/service/TagoService$delete$1;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/service/TagoService$delete$1;-><init>(Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "apiService.delete(id).fl\u2026java, \"identifier\", id) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final deleteAll()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    sget-object v0, Lcom/liber8tech/tago/util/RxRealm;->INSTANCE:Lcom/liber8tech/tago/util/RxRealm;

    const-class v1, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/util/RxRealm;->deleteAll(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final get()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    sget-object v0, Lcom/liber8tech/tago/util/RxRealm;->INSTANCE:Lcom/liber8tech/tago/util/RxRealm;

    const-class v1, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/util/RxRealm;->findAll(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final nearByDevices()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/liber8tech/tago/service/TagoService;->devices(Z)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final ownDevices()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, v0}, Lcom/liber8tech/tago/service/TagoService;->devices(Z)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final sync()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoService;->apiService:Lcom/liber8tech/tago/service/TagoApiService;

    .line 43
    invoke-virtual {v0}, Lcom/liber8tech/tago/service/TagoApiService;->get()Lio/reactivex/Observable;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/liber8tech/tago/util/RxRealm;->INSTANCE:Lcom/liber8tech/tago/util/RxRealm;

    const-class v2, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {v1, v2}, Lcom/liber8tech/tago/util/RxRealm;->findAll(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    .line 113
    new-instance v2, Lcom/liber8tech/tago/service/TagoService$sync$$inlined$zipWith$1;

    invoke-direct {v2}, Lcom/liber8tech/tago/service/TagoService$sync$$inlined$zipWith$1;-><init>()V

    check-cast v2, Lio/reactivex/functions/BiFunction;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->zipWith(Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "zipWith(other, BiFunctio\u2026-> zipper.invoke(t, u) })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/liber8tech/tago/service/TagoService$sync$2;->INSTANCE:Lcom/liber8tech/tago/service/TagoService$sync$2;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "apiService\n      .get()\n\u2026t(Unit)\n        }\n      }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final update(Lcom/polidea/rxandroidble2/RxBleDevice;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Lcom/polidea/rxandroidble2/RxBleDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ")",
            "Lio/reactivex/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoService;->apiService:Lcom/liber8tech/tago/service/TagoApiService;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/TagoApiService;->update(Lcom/polidea/rxandroidble2/RxBleDevice;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/liber8tech/tago/service/TagoService$update$1;->INSTANCE:Lcom/liber8tech/tago/service/TagoService$update$1;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "apiService.update(device\u2026tMap { RxRealm.save(it) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final update(Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/liber8tech/tago/util/RxRealm;->INSTANCE:Lcom/liber8tech/tago/util/RxRealm;

    .line 103
    invoke-virtual {v0}, Lcom/liber8tech/tago/util/RxRealm;->mainRealm()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/service/TagoService$update$$inlined$transactionWithResult$1;

    invoke-direct {v1, p1, p2}, Lcom/liber8tech/tago/service/TagoService$update$$inlined$transactionWithResult$1;-><init>(Ljava/lang/String;Z)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "mainRealm().flatMap { ma\u2026\n        )\n      })\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance p2, Lcom/liber8tech/tago/service/TagoService$update$3;

    invoke-direct {p2, p0}, Lcom/liber8tech/tago/service/TagoService$update$3;-><init>(Lcom/liber8tech/tago/service/TagoService;)V

    check-cast p2, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "RxRealm.transactionWithR\u2026      .map { Unit }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
