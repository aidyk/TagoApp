.class public final Lcom/liber8tech/tago/service/BluetoothService;
.super Ljava/lang/Object;
.source "BluetoothService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liber8tech/tago/service/BluetoothService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothService.kt\ncom/liber8tech/tago/service/BluetoothService\n*L\n1#1,137:1\n*E\n"
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
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 /2\u00020\u0001:\u0001/B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001bJ\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001b2\u0006\u0010\u001e\u001a\u00020\u0015J\u0012\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150 0\u001bJ\u001c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001b2\u0006\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020%J\u001c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001b2\u0006\u0010#\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\'J\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001b2\u0006\u0010#\u001a\u00020\u001dJ\u0014\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u001b2\u0006\u0010#\u001a\u00020\u001dJ\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001bJ\u001c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001b2\u0006\u0010#\u001a\u00020\u001d2\u0006\u0010-\u001a\u00020.R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0010\u0012\u000c\u0012\n \u0013*\u0004\u0018\u00010\u00120\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u00060"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/BluetoothService;",
        "",
        "ctx",
        "Landroid/content/Context;",
        "bleClient",
        "Lcom/polidea/rxandroidble2/RxBleClient;",
        "eventBus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "runtime",
        "Lcom/liber8tech/tago/util/RuntimeConfig;",
        "(Landroid/content/Context;Lcom/polidea/rxandroidble2/RxBleClient;Lorg/greenrobot/eventbus/EventBus;Lcom/liber8tech/tago/util/RuntimeConfig;)V",
        "bluetoothManager",
        "Landroid/bluetooth/BluetoothManager;",
        "bluetoothStates",
        "Lio/reactivex/subjects/BehaviorSubject;",
        "",
        "doneSignal",
        "Lio/reactivex/subjects/PublishSubject;",
        "",
        "kotlin.jvm.PlatformType",
        "selectedDevice",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "getSelectedDevice",
        "()Lcom/polidea/rxandroidble2/RxBleDevice;",
        "setSelectedDevice",
        "(Lcom/polidea/rxandroidble2/RxBleDevice;)V",
        "bluetoothOff",
        "Lio/reactivex/Observable;",
        "connect",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
        "device",
        "discover",
        "",
        "firmwareUpdate",
        "Lcom/liber8tech/tago/model/SyncState;",
        "connection",
        "firmware",
        "Lcom/liber8tech/tago/model/Firmware;",
        "kioskMode",
        "",
        "resetDevice",
        "startCommunication",
        "Lcom/liber8tech/tago/model/ExtendedConnection;",
        "states",
        "syncPattern",
        "pattern",
        "Lcom/liber8tech/tago/model/Pattern;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final Companion:Lcom/liber8tech/tago/service/BluetoothService$Companion;

.field private static final clientId:Ljava/util/UUID;

.field public static final connectionTimeout:J = 0x3a98L

.field private static final deviceTTL:J = 0x1f40L

.field public static final lowBattery:I = 0xea6

.field public static final messageTimeout:J = 0x2710L

.field public static final payloadMtu:I = 0x14

.field public static final payloadSize:I = 0x3fc

.field private static final rxId:Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final txId:Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final uartId:Ljava/util/UUID;


# instance fields
.field private final bleClient:Lcom/polidea/rxandroidble2/RxBleClient;

.field private final bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final bluetoothStates:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Landroid/content/Context;

.field private final doneSignal:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBus:Lorg/greenrobot/eventbus/EventBus;

.field private final runtime:Lcom/liber8tech/tago/util/RuntimeConfig;

.field private selectedDevice:Lcom/polidea/rxandroidble2/RxBleDevice;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/liber8tech/tago/service/BluetoothService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/service/BluetoothService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/liber8tech/tago/service/BluetoothService;->Companion:Lcom/liber8tech/tago/service/BluetoothService$Companion;

    const-string v0, "6E400001-B5A3-F393-E0A9-E50E24DCCA9E"

    .line 44
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/liber8tech/tago/service/BluetoothService;->uartId:Ljava/util/UUID;

    const-string v0, "00002902-0000-1000-8000-00805F9B34FB"

    .line 45
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/liber8tech/tago/service/BluetoothService;->clientId:Ljava/util/UUID;

    const-string v0, "6E400002-B5A3-F393-E0A9-E50E24DCCA9E"

    .line 46
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"6E40000\u2026-F393-E0A9-E50E24DCCA9E\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/liber8tech/tago/service/BluetoothService;->txId:Ljava/util/UUID;

    const-string v0, "6E400003-B5A3-F393-E0A9-E50E24DCCA9E"

    .line 47
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"6E40000\u2026-F393-E0A9-E50E24DCCA9E\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/liber8tech/tago/service/BluetoothService;->rxId:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/polidea/rxandroidble2/RxBleClient;Lorg/greenrobot/eventbus/EventBus;Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/polidea/rxandroidble2/RxBleClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/liber8tech/tago/util/RuntimeConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bleClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtime"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/service/BluetoothService;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/liber8tech/tago/service/BluetoothService;->bleClient:Lcom/polidea/rxandroidble2/RxBleClient;

    iput-object p3, p0, Lcom/liber8tech/tago/service/BluetoothService;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    iput-object p4, p0, Lcom/liber8tech/tago/service/BluetoothService;->runtime:Lcom/liber8tech/tago/util/RuntimeConfig;

    .line 60
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<Unit>()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liber8tech/tago/service/BluetoothService;->doneSignal:Lio/reactivex/subjects/PublishSubject;

    .line 62
    iget-object p1, p0, Lcom/liber8tech/tago/service/BluetoothService;->ctx:Landroid/content/Context;

    const-string p2, "bluetooth"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/liber8tech/tago/service/BluetoothService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 63
    iget-object p1, p0, Lcom/liber8tech/tago/service/BluetoothService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const-string p2, "bluetoothManager.adapter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    const-string p2, "BehaviorSubject.createDe\u2026anager.adapter.isEnabled)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liber8tech/tago/service/BluetoothService;->bluetoothStates:Lio/reactivex/subjects/BehaviorSubject;

    .line 66
    new-instance p1, Lcom/liber8tech/tago/service/BluetoothService$receiver$1;

    invoke-direct {p1, p0}, Lcom/liber8tech/tago/service/BluetoothService$receiver$1;-><init>(Lcom/liber8tech/tago/service/BluetoothService;)V

    .line 76
    iget-object p2, p0, Lcom/liber8tech/tago/service/BluetoothService;->ctx:Landroid/content/Context;

    check-cast p1, Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 62
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.bluetooth.BluetoothManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getBluetoothStates$p(Lcom/liber8tech/tago/service/BluetoothService;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/liber8tech/tago/service/BluetoothService;->bluetoothStates:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method public static final synthetic access$getClientId$cp()Ljava/util/UUID;
    .locals 1

    .line 36
    sget-object v0, Lcom/liber8tech/tago/service/BluetoothService;->clientId:Ljava/util/UUID;

    return-object v0
.end method

.method public static final synthetic access$getDoneSignal$p(Lcom/liber8tech/tago/service/BluetoothService;)Lio/reactivex/subjects/PublishSubject;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/liber8tech/tago/service/BluetoothService;->doneSignal:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$getRxId$cp()Ljava/util/UUID;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    sget-object v0, Lcom/liber8tech/tago/service/BluetoothService;->rxId:Ljava/util/UUID;

    return-object v0
.end method

.method public static final synthetic access$getTxId$cp()Ljava/util/UUID;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    sget-object v0, Lcom/liber8tech/tago/service/BluetoothService;->txId:Ljava/util/UUID;

    return-object v0
.end method

.method public static final synthetic access$getUartId$cp()Ljava/util/UUID;
    .locals 1

    .line 36
    sget-object v0, Lcom/liber8tech/tago/service/BluetoothService;->uartId:Ljava/util/UUID;

    return-object v0
.end method


# virtual methods
.method public final bluetoothOff()Lio/reactivex/Observable;
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

    .line 82
    iget-object v0, p0, Lcom/liber8tech/tago/service/BluetoothService;->bluetoothStates:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/liber8tech/tago/service/BluetoothService$bluetoothOff$1;->INSTANCE:Lcom/liber8tech/tago/service/BluetoothService$bluetoothOff$1;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "bluetoothStates.distinct\u2026ged().filter { it.not() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final connect(Lcom/polidea/rxandroidble2/RxBleDevice;)Lio/reactivex/Observable;
    .locals 2
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
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 105
    invoke-interface {p1, v0}, Lcom/polidea/rxandroidble2/RxBleDevice;->establishConnection(Z)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/liber8tech/tago/service/BluetoothService$connect$1;->INSTANCE:Lcom/liber8tech/tago/service/BluetoothService$connect$1;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "device.establishConnecti\u2026out vs timeoutFirst\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3a98

    .line 116
    invoke-static {p1, v0, v1}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->timeoutFirst(Lio/reactivex/Observable;J)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->retry(J)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/service/BluetoothService;->doneSignal:Lio/reactivex/subjects/PublishSubject;

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "device.establishConnecti\u202610).takeUntil(doneSignal)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final discover()Lio/reactivex/Observable;
    .locals 7
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

    .line 85
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 86
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3, v1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 88
    iget-object v4, p0, Lcom/liber8tech/tago/service/BluetoothService;->bleClient:Lcom/polidea/rxandroidble2/RxBleClient;

    new-instance v5, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;

    invoke-direct {v5}, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->build()Lcom/polidea/rxandroidble2/scan/ScanSettings;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/polidea/rxandroidble2/scan/ScanFilter;

    invoke-virtual {v4, v5, v6}, Lcom/polidea/rxandroidble2/RxBleClient;->scanBleDevices(Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)Lio/reactivex/Observable;

    move-result-object v4

    sget-object v5, Lcom/liber8tech/tago/service/BluetoothService$discover$scan$1;->INSTANCE:Lcom/liber8tech/tago/service/BluetoothService$discover$scan$1;

    check-cast v5, Lio/reactivex/functions/Function;

    invoke-virtual {v4, v5}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v4

    sget-object v5, Lcom/liber8tech/tago/service/BluetoothService$discover$scan$2;->INSTANCE:Lcom/liber8tech/tago/service/BluetoothService$discover$scan$2;

    check-cast v5, Lio/reactivex/functions/Predicate;

    invoke-virtual {v4, v5}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v4

    .line 91
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Lio/reactivex/Observable;->buffer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v2

    .line 92
    check-cast v2, Lio/reactivex/ObservableSource;

    check-cast v1, Lio/reactivex/ObservableSource;

    .line 93
    sget-object v3, Lcom/liber8tech/tago/service/BluetoothService$discover$1;->INSTANCE:Lcom/liber8tech/tago/service/BluetoothService$discover$1;

    check-cast v3, Lio/reactivex/functions/BiFunction;

    .line 92
    invoke-static {v2, v1, v3}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v1

    .line 94
    new-instance v2, Lcom/liber8tech/tago/service/BluetoothService$discover$2;

    invoke-direct {v2, v0}, Lcom/liber8tech/tago/service/BluetoothService$discover$2;-><init>(Ljava/util/Map;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    .line 100
    new-instance v2, Lcom/liber8tech/tago/service/BluetoothService$discover$3;

    invoke-direct {v2, v0}, Lcom/liber8tech/tago/service/BluetoothService$discover$3;-><init>(Ljava/util/Map;)V

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 101
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.combineLatest\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final firmwareUpdate(Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/liber8tech/tago/model/Firmware;)Lio/reactivex/Observable;
    .locals 7
    .param p1    # Lcom/polidea/rxandroidble2/RxBleConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/liber8tech/tago/model/Firmware;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            "Lcom/liber8tech/tago/model/Firmware;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/liber8tech/tago/model/SyncState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firmware"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/liber8tech/tago/service/FirmwareUpdate;

    iget-object v2, p0, Lcom/liber8tech/tago/service/BluetoothService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/liber8tech/tago/service/BluetoothService;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 128
    iget-object v6, p0, Lcom/liber8tech/tago/service/BluetoothService;->runtime:Lcom/liber8tech/tago/util/RuntimeConfig;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    .line 127
    invoke-direct/range {v1 .. v6}, Lcom/liber8tech/tago/service/FirmwareUpdate;-><init>(Landroid/content/Context;Lorg/greenrobot/eventbus/EventBus;Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/liber8tech/tago/model/Firmware;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    .line 128
    invoke-virtual {v0}, Lcom/liber8tech/tago/service/FirmwareUpdate;->perform()Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/liber8tech/tago/service/BluetoothService$firmwareUpdate$1;

    invoke-direct {p2, p0}, Lcom/liber8tech/tago/service/BluetoothService$firmwareUpdate$1;-><init>(Lcom/liber8tech/tago/service/BluetoothService;)V

    check-cast p2, Lio/reactivex/functions/Action;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doAfterTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "FirmwareUpdate(ctx, even\u2026doneSignal.onNext(Unit) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getSelectedDevice()Lcom/polidea/rxandroidble2/RxBleDevice;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/liber8tech/tago/service/BluetoothService;->selectedDevice:Lcom/polidea/rxandroidble2/RxBleDevice;

    return-object v0
.end method

.method public final kioskMode(Lcom/polidea/rxandroidble2/RxBleConnection;I)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Lcom/polidea/rxandroidble2/RxBleConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/liber8tech/tago/service/KioskMode;

    invoke-direct {v0, p1, p2}, Lcom/liber8tech/tago/service/KioskMode;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection;I)V

    invoke-virtual {v0}, Lcom/liber8tech/tago/service/KioskMode;->perform()Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/liber8tech/tago/service/BluetoothService$kioskMode$1;

    invoke-direct {p2, p0}, Lcom/liber8tech/tago/service/BluetoothService$kioskMode$1;-><init>(Lcom/liber8tech/tago/service/BluetoothService;)V

    check-cast p2, Lio/reactivex/functions/Action;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doAfterTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "KioskMode(connection, ki\u2026doneSignal.onNext(Unit) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final resetDevice(Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/Observable;
    .locals 1
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
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/liber8tech/tago/service/ResetDevice;

    invoke-direct {v0, p1}, Lcom/liber8tech/tago/service/ResetDevice;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection;)V

    invoke-virtual {v0}, Lcom/liber8tech/tago/service/ResetDevice;->perform()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/liber8tech/tago/service/BluetoothService$resetDevice$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/service/BluetoothService$resetDevice$1;-><init>(Lcom/liber8tech/tago/service/BluetoothService;)V

    check-cast v0, Lio/reactivex/functions/Action;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doAfterTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "ResetDevice(connection).\u2026doneSignal.onNext(Unit) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setSelectedDevice(Lcom/polidea/rxandroidble2/RxBleDevice;)V
    .locals 0
    .param p1    # Lcom/polidea/rxandroidble2/RxBleDevice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 58
    iput-object p1, p0, Lcom/liber8tech/tago/service/BluetoothService;->selectedDevice:Lcom/polidea/rxandroidble2/RxBleDevice;

    return-void
.end method

.method public final startCommunication(Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/Observable;
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
            "Lcom/liber8tech/tago/model/ExtendedConnection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/liber8tech/tago/service/StartCommunication;

    iget-object v1, p0, Lcom/liber8tech/tago/service/BluetoothService;->runtime:Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-direct {v0, p1, v1}, Lcom/liber8tech/tago/service/StartCommunication;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    invoke-virtual {v0}, Lcom/liber8tech/tago/service/StartCommunication;->perform()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final states()Lio/reactivex/Observable;
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

    .line 79
    iget-object v0, p0, Lcom/liber8tech/tago/service/BluetoothService;->bluetoothStates:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "bluetoothStates.distinctUntilChanged()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final syncPattern(Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/liber8tech/tago/model/Pattern;)Lio/reactivex/Observable;
    .locals 3
    .param p1    # Lcom/polidea/rxandroidble2/RxBleConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/liber8tech/tago/model/Pattern;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            "Lcom/liber8tech/tago/model/Pattern;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/liber8tech/tago/model/SyncState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/liber8tech/tago/service/PatternSync;

    iget-object v1, p0, Lcom/liber8tech/tago/service/BluetoothService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/liber8tech/tago/service/BluetoothService;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/liber8tech/tago/service/PatternSync;-><init>(Landroid/content/Context;Lorg/greenrobot/eventbus/EventBus;Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/liber8tech/tago/model/Pattern;)V

    invoke-virtual {v0}, Lcom/liber8tech/tago/service/PatternSync;->perform()Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/liber8tech/tago/service/BluetoothService$syncPattern$1;

    invoke-direct {p2, p0}, Lcom/liber8tech/tago/service/BluetoothService$syncPattern$1;-><init>(Lcom/liber8tech/tago/service/BluetoothService;)V

    check-cast p2, Lio/reactivex/functions/Action;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doAfterTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "PatternSync(ctx, eventBu\u2026Signal.onNext(Unit)\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
