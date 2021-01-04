.class final Lcom/liber8tech/tago/service/PatternSync$perform$chunksObs$1;
.super Ljava/lang/Object;
.source "PatternSync.kt"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/PatternSync;->perform()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lkotlin/Unit;",
        "Lcom/liber8tech/tago/protocol/Message;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "chunk",
        "Lcom/liber8tech/tago/protocol/Message;",
        "apply",
        "(Lkotlin/Unit;Lcom/liber8tech/tago/protocol/Message;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $chunkIndex:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $steps:D

.field final synthetic this$0:Lcom/liber8tech/tago/service/PatternSync;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/PatternSync;Lkotlin/jvm/internal/Ref$IntRef;D)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/PatternSync$perform$chunksObs$1;->this$0:Lcom/liber8tech/tago/service/PatternSync;

    iput-object p2, p0, Lcom/liber8tech/tago/service/PatternSync$perform$chunksObs$1;->$chunkIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iput-wide p3, p0, Lcom/liber8tech/tago/service/PatternSync$perform$chunksObs$1;->$steps:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lkotlin/Unit;

    check-cast p2, Lcom/liber8tech/tago/protocol/Message;

    invoke-virtual {p0, p1, p2}, Lcom/liber8tech/tago/service/PatternSync$perform$chunksObs$1;->apply(Lkotlin/Unit;Lcom/liber8tech/tago/protocol/Message;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final apply(Lkotlin/Unit;Lcom/liber8tech/tago/protocol/Message;)V
    .locals 4
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/liber8tech/tago/protocol/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "chunk"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/liber8tech/tago/service/PatternSync$perform$chunksObs$1;->this$0:Lcom/liber8tech/tago/service/PatternSync;

    invoke-static {p1}, Lcom/liber8tech/tago/service/PatternSync;->access$getSendBuffer$p(Lcom/liber8tech/tago/service/PatternSync;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/liber8tech/tago/service/PatternSync$perform$chunksObs$1;->this$0:Lcom/liber8tech/tago/service/PatternSync;

    iget-object p2, p0, Lcom/liber8tech/tago/service/PatternSync$perform$chunksObs$1;->$chunkIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-double v0, p2

    iget-wide v2, p0, Lcom/liber8tech/tago/service/PatternSync$perform$chunksObs$1;->$steps:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1, v0}, Lcom/liber8tech/tago/service/PatternSync;->updateProgress$default(Lcom/liber8tech/tago/service/PatternSync;Ljava/lang/Double;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method
