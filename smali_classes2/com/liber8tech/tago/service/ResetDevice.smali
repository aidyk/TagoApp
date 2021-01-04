.class public final Lcom/liber8tech/tago/service/ResetDevice;
.super Ljava/lang/Object;
.source "ResetDevice.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\rJ\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J!\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u000b0\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/ResetDevice;",
        "",
        "connection",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
        "(Lcom/polidea/rxandroidble2/RxBleConnection;)V",
        "doneSignal",
        "Lio/reactivex/subjects/AsyncSubject;",
        "",
        "kotlin.jvm.PlatformType",
        "sendBuffer",
        "Lio/reactivex/subjects/BehaviorSubject;",
        "Lcom/liber8tech/tago/protocol/Message;",
        "perform",
        "Lio/reactivex/Observable;",
        "processMessage",
        "message",
        "send",
        "cmd",
        "Lcom/liber8tech/tago/protocol/Command;",
        "imageId",
        "",
        "(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;)V",
        "sendWithTimeStamp",
        "timeStamp",
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
.field private final connection:Lcom/polidea/rxandroidble2/RxBleConnection;

.field private final doneSignal:Lio/reactivex/subjects/AsyncSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/AsyncSubject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final sendBuffer:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/liber8tech/tago/protocol/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/RxBleConnection;)V
    .locals 1
    .param p1    # Lcom/polidea/rxandroidble2/RxBleConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/service/ResetDevice;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    .line 15
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    const-string v0, "BehaviorSubject.create<Message>()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liber8tech/tago/service/ResetDevice;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

    .line 16
    invoke-static {}, Lio/reactivex/subjects/AsyncSubject;->create()Lio/reactivex/subjects/AsyncSubject;

    move-result-object p1

    const-string v0, "AsyncSubject.create<Unit>()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liber8tech/tago/service/ResetDevice;->doneSignal:Lio/reactivex/subjects/AsyncSubject;

    return-void
.end method

.method public static final synthetic access$getConnection$p(Lcom/liber8tech/tago/service/ResetDevice;)Lcom/polidea/rxandroidble2/RxBleConnection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/liber8tech/tago/service/ResetDevice;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    return-object p0
.end method

.method public static final synthetic access$getDoneSignal$p(Lcom/liber8tech/tago/service/ResetDevice;)Lio/reactivex/subjects/AsyncSubject;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/liber8tech/tago/service/ResetDevice;->doneSignal:Lio/reactivex/subjects/AsyncSubject;

    return-object p0
.end method

.method public static final synthetic access$getSendBuffer$p(Lcom/liber8tech/tago/service/ResetDevice;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/liber8tech/tago/service/ResetDevice;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method public static final synthetic access$processMessage(Lcom/liber8tech/tago/service/ResetDevice;Lcom/liber8tech/tago/protocol/Message;)V
    .locals 0
    .param p1    # Lcom/liber8tech/tago/protocol/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/service/ResetDevice;->processMessage(Lcom/liber8tech/tago/protocol/Message;)V

    return-void
.end method

.method private final processMessage(Lcom/liber8tech/tago/protocol/Message;)V
    .locals 6

    .line 41
    invoke-virtual {p1}, Lcom/liber8tech/tago/protocol/Message;->isValid()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/liber8tech/tago/protocol/Message;->command()Lcom/liber8tech/tago/protocol/Command;

    move-result-object v0

    const-string v4, "<-- %s"

    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-static {v4, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    sget-object p1, Lcom/liber8tech/tago/service/ResetDevice$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/liber8tech/tago/protocol/Command;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    iget-object p1, p0, Lcom/liber8tech/tago/service/ResetDevice;->doneSignal:Lio/reactivex/subjects/AsyncSubject;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/AsyncSubject;->onNext(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/liber8tech/tago/service/ResetDevice;->doneSignal:Lio/reactivex/subjects/AsyncSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/AsyncSubject;->onComplete()V

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object p1, p0, Lcom/liber8tech/tago/service/ResetDevice;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/BehaviorSubject;->firstElement()Lio/reactivex/Maybe;

    move-result-object p1

    new-instance v0, Lcom/liber8tech/tago/service/ResetDevice$processMessage$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/service/ResetDevice$processMessage$1;-><init>(Lcom/liber8tech/tago/service/ResetDevice;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 48
    :pswitch_2
    sget-object p1, Lcom/liber8tech/tago/protocol/Command;->ACK:Lcom/liber8tech/tago/protocol/Command;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/liber8tech/tago/service/ResetDevice;->sendWithTimeStamp(Lcom/liber8tech/tago/protocol/Command;J)V

    .line 49
    sget-object p1, Lcom/liber8tech/tago/protocol/Command;->FULL_FLASH_ERASE:Lcom/liber8tech/tago/protocol/Command;

    invoke-static {p0, p1, v3, v2, v3}, Lcom/liber8tech/tago/service/ResetDevice;->send$default(Lcom/liber8tech/tago/service/ResetDevice;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;ILjava/lang/Object;)V

    goto :goto_0

    .line 46
    :pswitch_3
    sget-object p1, Lcom/liber8tech/tago/protocol/Command;->ACK:Lcom/liber8tech/tago/protocol/Command;

    invoke-static {p0, p1, v3, v2, v3}, Lcom/liber8tech/tago/service/ResetDevice;->send$default(Lcom/liber8tech/tago/service/ResetDevice;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 59
    sget-object p1, Lcom/liber8tech/tago/protocol/Command;->NACK:Lcom/liber8tech/tago/protocol/Command;

    invoke-static {p0, p1, v3, v2, v3}, Lcom/liber8tech/tago/service/ResetDevice;->send$default(Lcom/liber8tech/tago/service/ResetDevice;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final send(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;)V
    .locals 8

    .line 64
    iget-object v0, p0, Lcom/liber8tech/tago/service/ResetDevice;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/liber8tech/tago/protocol/Message;->Companion:Lcom/liber8tech/tago/protocol/Message$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/liber8tech/tago/protocol/Message$Companion;->fromCommand$default(Lcom/liber8tech/tago/protocol/Message$Companion;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/liber8tech/tago/protocol/Message;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/liber8tech/tago/protocol/Command;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic send$default(Lcom/liber8tech/tago/service/ResetDevice;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 63
    check-cast p2, Ljava/lang/Long;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/liber8tech/tago/service/ResetDevice;->send(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;)V

    return-void
.end method

.method private final sendWithTimeStamp(Lcom/liber8tech/tago/protocol/Command;J)V
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/liber8tech/tago/service/ResetDevice;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/liber8tech/tago/protocol/Message;->Companion:Lcom/liber8tech/tago/protocol/Message$Companion;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/liber8tech/tago/protocol/Message$Companion;->fromCommand$default(Lcom/liber8tech/tago/protocol/Message$Companion;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/liber8tech/tago/protocol/Message;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "--> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/liber8tech/tago/protocol/Command;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final perform()Lio/reactivex/Observable;
    .locals 4
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

    .line 19
    iget-object v0, p0, Lcom/liber8tech/tago/service/ResetDevice;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

    .line 20
    sget-object v1, Lcom/liber8tech/tago/service/ResetDevice$perform$sendObs$1;->INSTANCE:Lcom/liber8tech/tago/service/ResetDevice$perform$sendObs$1;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/liber8tech/tago/service/ResetDevice$perform$sendObs$2;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/service/ResetDevice$perform$sendObs$2;-><init>(Lcom/liber8tech/tago/service/ResetDevice;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/liber8tech/tago/service/ResetDevice$perform$sendObs$3;->INSTANCE:Lcom/liber8tech/tago/service/ResetDevice$perform$sendObs$3;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/liber8tech/tago/service/ResetDevice;->doneSignal:Lio/reactivex/subjects/AsyncSubject;

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/liber8tech/tago/service/ResetDevice;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    sget-object v2, Lcom/liber8tech/tago/service/BluetoothService;->Companion:Lcom/liber8tech/tago/service/BluetoothService$Companion;

    invoke-virtual {v2}, Lcom/liber8tech/tago/service/BluetoothService$Companion;->getRxId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/polidea/rxandroidble2/RxBleConnection;->setupNotification(Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object v1

    .line 26
    sget-object v2, Lcom/liber8tech/tago/service/ResetDevice$perform$notificationsObs$1;->INSTANCE:Lcom/liber8tech/tago/service/ResetDevice$perform$notificationsObs$1;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 27
    sget-object v2, Lcom/liber8tech/tago/service/ResetDevice$perform$notificationsObs$2;->INSTANCE:Lcom/liber8tech/tago/service/ResetDevice$perform$notificationsObs$2;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/liber8tech/tago/service/ResetDevice$perform$notificationsObs$3;

    invoke-direct {v2, p0}, Lcom/liber8tech/tago/service/ResetDevice$perform$notificationsObs$3;-><init>(Lcom/liber8tech/tago/service/ResetDevice;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    .line 32
    sget-object v2, Lcom/liber8tech/tago/service/ResetDevice$perform$notificationsObs$4;->INSTANCE:Lcom/liber8tech/tago/service/ResetDevice$perform$notificationsObs$4;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "connection.setupNotifica\u2026it) }\n      .map { Unit }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x2710

    .line 33
    invoke-static {v1, v2, v3}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->timeoutEach(Lio/reactivex/Observable;J)Lio/reactivex/Observable;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/liber8tech/tago/service/ResetDevice;->doneSignal:Lio/reactivex/subjects/AsyncSubject;

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 36
    check-cast v0, Lio/reactivex/ObservableSource;

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-static {v0, v1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/liber8tech/tago/service/ResetDevice$perform$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/service/ResetDevice$perform$1;-><init>(Lcom/liber8tech/tago/service/ResetDevice;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.merge(sendObs\u2026  .flatMap { doneSignal }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
