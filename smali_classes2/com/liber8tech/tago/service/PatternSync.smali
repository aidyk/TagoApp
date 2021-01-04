.class public final Lcom/liber8tech/tago/service/PatternSync;
.super Ljava/lang/Object;
.source "PatternSync.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0014J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J!\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002\u00a2\u0006\u0002\u0010\u001cJ\u0018\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001bH\u0002J%\u0010\u001f\u001a\u00020\u00122\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#H\u0002\u00a2\u0006\u0002\u0010$R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n \u000e*\u0004\u0018\u00010\r0\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n \u000e*\u0004\u0018\u00010\u00100\u00100\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n \u000e*\u0004\u0018\u00010\u00120\u00120\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/PatternSync;",
        "",
        "ctx",
        "Landroid/content/Context;",
        "eventBus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "connection",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
        "pattern",
        "Lcom/liber8tech/tago/model/Pattern;",
        "(Landroid/content/Context;Lorg/greenrobot/eventbus/EventBus;Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/liber8tech/tago/model/Pattern;)V",
        "progress",
        "Lio/reactivex/subjects/BehaviorSubject;",
        "Lcom/liber8tech/tago/model/SyncState;",
        "kotlin.jvm.PlatformType",
        "sendBuffer",
        "Lcom/liber8tech/tago/protocol/Message;",
        "sendSignal",
        "",
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
        "updateProgress",
        "value",
        "",
        "battery",
        "",
        "(Ljava/lang/Double;Ljava/lang/Integer;)V",
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

.field private final ctx:Landroid/content/Context;

.field private final eventBus:Lorg/greenrobot/eventbus/EventBus;

.field private final pattern:Lcom/liber8tech/tago/model/Pattern;

.field private final progress:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/liber8tech/tago/model/SyncState;",
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

.field private final sendSignal:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/greenrobot/eventbus/EventBus;Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/liber8tech/tago/model/Pattern;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/polidea/rxandroidble2/RxBleConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/liber8tech/tago/model/Pattern;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/service/PatternSync;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/liber8tech/tago/service/PatternSync;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    iput-object p3, p0, Lcom/liber8tech/tago/service/PatternSync;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    iput-object p4, p0, Lcom/liber8tech/tago/service/PatternSync;->pattern:Lcom/liber8tech/tago/model/Pattern;

    .line 21
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    const-string p2, "BehaviorSubject.create<Message>()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liber8tech/tago/service/PatternSync;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

    .line 22
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    const-string p2, "BehaviorSubject.create<Unit>()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liber8tech/tago/service/PatternSync;->sendSignal:Lio/reactivex/subjects/BehaviorSubject;

    .line 23
    new-instance p1, Lcom/liber8tech/tago/model/SyncState;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/liber8tech/tago/model/SyncState;-><init>(DIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    const-string p2, "BehaviorSubject.createDefault(SyncState())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liber8tech/tago/service/PatternSync;->progress:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method

.method public static final synthetic access$getConnection$p(Lcom/liber8tech/tago/service/PatternSync;)Lcom/polidea/rxandroidble2/RxBleConnection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    iget-object p0, p0, Lcom/liber8tech/tago/service/PatternSync;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    return-object p0
.end method

.method public static final synthetic access$getProgress$p(Lcom/liber8tech/tago/service/PatternSync;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    iget-object p0, p0, Lcom/liber8tech/tago/service/PatternSync;->progress:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method public static final synthetic access$getSendBuffer$p(Lcom/liber8tech/tago/service/PatternSync;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    iget-object p0, p0, Lcom/liber8tech/tago/service/PatternSync;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method public static final synthetic access$processMessage(Lcom/liber8tech/tago/service/PatternSync;Lcom/liber8tech/tago/protocol/Message;)V
    .locals 0
    .param p1    # Lcom/liber8tech/tago/protocol/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/service/PatternSync;->processMessage(Lcom/liber8tech/tago/protocol/Message;)V

    return-void
.end method

.method private final processMessage(Lcom/liber8tech/tago/protocol/Message;)V
    .locals 7

    .line 55
    invoke-virtual {p1}, Lcom/liber8tech/tago/protocol/Message;->isValid()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/liber8tech/tago/service/PatternSync;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v4, Lcom/liber8tech/tago/event/TagoEvent$VoltageChanged;

    invoke-virtual {p1}, Lcom/liber8tech/tago/protocol/Message;->voltage()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/liber8tech/tago/event/TagoEvent$VoltageChanged;-><init>(I)V

    invoke-virtual {v0, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Lcom/liber8tech/tago/protocol/Message;->command()Lcom/liber8tech/tago/protocol/Command;

    move-result-object v0

    const-string v4, "<-- %s"

    .line 59
    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget-object v4, Lcom/liber8tech/tago/service/PatternSync$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/liber8tech/tago/protocol/Command;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/liber8tech/tago/service/PatternSync;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->blockingFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/protocol/Message;

    .line 81
    invoke-virtual {v0}, Lcom/liber8tech/tago/protocol/Message;->command()Lcom/liber8tech/tago/protocol/Command;

    move-result-object v0

    sget-object v2, Lcom/liber8tech/tago/service/PatternSync$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/liber8tech/tago/protocol/Command;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/liber8tech/tago/service/PatternSync;->sendSignal:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v0, p0, Lcom/liber8tech/tago/service/PatternSync;->sendSignal:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 86
    :goto_0
    invoke-virtual {p1}, Lcom/liber8tech/tago/protocol/Message;->battery()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, v3, p1, v1, v3}, Lcom/liber8tech/tago/service/PatternSync;->updateProgress$default(Lcom/liber8tech/tago/service/PatternSync;Ljava/lang/Double;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_1

    .line 78
    :pswitch_3
    iget-object p1, p0, Lcom/liber8tech/tago/service/PatternSync;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/BehaviorSubject;->firstElement()Lio/reactivex/Maybe;

    move-result-object p1

    new-instance v0, Lcom/liber8tech/tago/service/PatternSync$processMessage$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/service/PatternSync$processMessage$1;-><init>(Lcom/liber8tech/tago/service/PatternSync;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 75
    :pswitch_4
    sget-object p1, Lcom/liber8tech/tago/protocol/Command;->ACK:Lcom/liber8tech/tago/protocol/Command;

    invoke-static {p0, p1, v3, v2, v3}, Lcom/liber8tech/tago/service/PatternSync;->send$default(Lcom/liber8tech/tago/service/PatternSync;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;ILjava/lang/Object;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1, v3, v2, v3}, Lcom/liber8tech/tago/service/PatternSync;->updateProgress$default(Lcom/liber8tech/tago/service/PatternSync;Ljava/lang/Double;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_1

    .line 71
    :pswitch_5
    sget-object p1, Lcom/liber8tech/tago/protocol/Command;->ACK:Lcom/liber8tech/tago/protocol/Command;

    invoke-static {p0, p1, v3, v2, v3}, Lcom/liber8tech/tago/service/PatternSync;->send$default(Lcom/liber8tech/tago/service/PatternSync;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;ILjava/lang/Object;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1, v3, v2, v3}, Lcom/liber8tech/tago/service/PatternSync;->updateProgress$default(Lcom/liber8tech/tago/service/PatternSync;Ljava/lang/Double;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_1

    .line 67
    :pswitch_6
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->ACK:Lcom/liber8tech/tago/protocol/Command;

    invoke-static {p0, v0, v3, v2, v3}, Lcom/liber8tech/tago/service/PatternSync;->send$default(Lcom/liber8tech/tago/service/PatternSync;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->NEW_IMAGE:Lcom/liber8tech/tago/protocol/Command;

    invoke-virtual {p1}, Lcom/liber8tech/tago/protocol/Message;->getImageId()Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/liber8tech/tago/service/PatternSync;->send(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;)V

    goto :goto_1

    .line 63
    :pswitch_7
    sget-object p1, Lcom/liber8tech/tago/protocol/Command;->ACK:Lcom/liber8tech/tago/protocol/Command;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/liber8tech/tago/service/PatternSync;->sendWithTimeStamp(Lcom/liber8tech/tago/protocol/Command;J)V

    .line 64
    iget-object p1, p0, Lcom/liber8tech/tago/service/PatternSync;->sendSignal:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 61
    :pswitch_8
    sget-object p1, Lcom/liber8tech/tago/protocol/Command;->ACK:Lcom/liber8tech/tago/protocol/Command;

    invoke-static {p0, p1, v3, v2, v3}, Lcom/liber8tech/tago/service/PatternSync;->send$default(Lcom/liber8tech/tago/service/PatternSync;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 91
    sget-object p1, Lcom/liber8tech/tago/protocol/Command;->NACK:Lcom/liber8tech/tago/protocol/Command;

    invoke-static {p0, p1, v3, v2, v3}, Lcom/liber8tech/tago/service/PatternSync;->send$default(Lcom/liber8tech/tago/service/PatternSync;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;ILjava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final send(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;)V
    .locals 8

    .line 101
    iget-object v0, p0, Lcom/liber8tech/tago/service/PatternSync;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

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

    .line 102
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

.method static synthetic send$default(Lcom/liber8tech/tago/service/PatternSync;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 100
    check-cast p2, Ljava/lang/Long;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/liber8tech/tago/service/PatternSync;->send(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;)V

    return-void
.end method

.method private final sendWithTimeStamp(Lcom/liber8tech/tago/protocol/Command;J)V
    .locals 8

    .line 106
    iget-object v0, p0, Lcom/liber8tech/tago/service/PatternSync;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

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

    .line 107
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

.method private final updateProgress(Ljava/lang/Double;Ljava/lang/Integer;)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/liber8tech/tago/service/PatternSync;->progress:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->blockingFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/model/SyncState;

    .line 97
    iget-object v1, p0, Lcom/liber8tech/tago/service/PatternSync;->progress:Lio/reactivex/subjects/BehaviorSubject;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/liber8tech/tago/model/SyncState;->getProgress()D

    move-result-wide v2

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/liber8tech/tago/model/SyncState;->getBattery()I

    move-result p1

    :goto_1
    invoke-virtual {v0, v2, v3, p1}, Lcom/liber8tech/tago/model/SyncState;->copy(DI)Lcom/liber8tech/tago/model/SyncState;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic updateProgress$default(Lcom/liber8tech/tago/service/PatternSync;Ljava/lang/Double;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 95
    move-object p1, v0

    check-cast p1, Ljava/lang/Double;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    check-cast p2, Ljava/lang/Integer;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/liber8tech/tago/service/PatternSync;->updateProgress(Ljava/lang/Double;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final perform()Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/liber8tech/tago/model/SyncState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/liber8tech/tago/service/PatternSync;->sendBuffer:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/liber8tech/tago/service/PatternSync$perform$sendObs$1;->INSTANCE:Lcom/liber8tech/tago/service/PatternSync$perform$sendObs$1;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/service/PatternSync$perform$sendObs$2;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/service/PatternSync$perform$sendObs$2;-><init>(Lcom/liber8tech/tago/service/PatternSync;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/liber8tech/tago/service/PatternSync$perform$sendObs$3;->INSTANCE:Lcom/liber8tech/tago/service/PatternSync$perform$sendObs$3;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 35
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 36
    iget-object v2, p0, Lcom/liber8tech/tago/service/PatternSync;->pattern:Lcom/liber8tech/tago/model/Pattern;

    iget-object v3, p0, Lcom/liber8tech/tago/service/PatternSync;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/liber8tech/tago/model/Pattern;->chunks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v3, v3

    .line 38
    iget-object v5, p0, Lcom/liber8tech/tago/service/PatternSync;->sendSignal:Lio/reactivex/subjects/BehaviorSubject;

    check-cast v5, Lio/reactivex/ObservableSource;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;

    .line 39
    new-instance v6, Lcom/liber8tech/tago/service/PatternSync$perform$chunksObs$1;

    invoke-direct {v6, p0, v1, v3, v4}, Lcom/liber8tech/tago/service/PatternSync$perform$chunksObs$1;-><init>(Lcom/liber8tech/tago/service/PatternSync;Lkotlin/jvm/internal/Ref$IntRef;D)V

    check-cast v6, Lio/reactivex/functions/BiFunction;

    .line 38
    invoke-static {v5, v2, v6}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/liber8tech/tago/service/PatternSync;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    sget-object v3, Lcom/liber8tech/tago/service/BluetoothService;->Companion:Lcom/liber8tech/tago/service/BluetoothService$Companion;

    invoke-virtual {v3}, Lcom/liber8tech/tago/service/BluetoothService$Companion;->getRxId()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/polidea/rxandroidble2/RxBleConnection;->setupNotification(Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Lcom/liber8tech/tago/service/PatternSync$perform$notificationsObs$1;->INSTANCE:Lcom/liber8tech/tago/service/PatternSync$perform$notificationsObs$1;

    check-cast v3, Lio/reactivex/functions/Function;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Lcom/liber8tech/tago/service/PatternSync$perform$notificationsObs$2;->INSTANCE:Lcom/liber8tech/tago/service/PatternSync$perform$notificationsObs$2;

    check-cast v3, Lio/reactivex/functions/Function;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    .line 48
    new-instance v3, Lcom/liber8tech/tago/service/PatternSync$perform$notificationsObs$3;

    invoke-direct {v3, p0}, Lcom/liber8tech/tago/service/PatternSync$perform$notificationsObs$3;-><init>(Lcom/liber8tech/tago/service/PatternSync;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Lcom/liber8tech/tago/service/PatternSync$perform$notificationsObs$4;->INSTANCE:Lcom/liber8tech/tago/service/PatternSync$perform$notificationsObs$4;

    check-cast v3, Lio/reactivex/functions/Function;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v3, "connection.setupNotifica\u2026essage(it) }.map { Unit }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x2710

    invoke-static {v2, v3, v4}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->timeoutEach(Lio/reactivex/Observable;J)Lio/reactivex/Observable;

    move-result-object v2

    .line 50
    check-cast v0, Lio/reactivex/ObservableSource;

    check-cast v1, Lio/reactivex/ObservableSource;

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/service/PatternSync$perform$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/service/PatternSync$perform$1;-><init>(Lcom/liber8tech/tago/service/PatternSync;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/liber8tech/tago/service/PatternSync$perform$2;->INSTANCE:Lcom/liber8tech/tago/service/PatternSync$perform$2;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.merge(sendObs\u2026keUntil { it.finished() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
