.class final Lcom/liber8tech/tago/service/PatternSync$processMessage$1;
.super Ljava/lang/Object;
.source "PatternSync.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/PatternSync;->processMessage(Lcom/liber8tech/tago/protocol/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/liber8tech/tago/protocol/Message;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/liber8tech/tago/protocol/Message;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/service/PatternSync;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/PatternSync;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/PatternSync$processMessage$1;->this$0:Lcom/liber8tech/tago/service/PatternSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/liber8tech/tago/protocol/Message;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/liber8tech/tago/service/PatternSync$processMessage$1;->this$0:Lcom/liber8tech/tago/service/PatternSync;

    invoke-static {v0}, Lcom/liber8tech/tago/service/PatternSync;->access$getSendBuffer$p(Lcom/liber8tech/tago/service/PatternSync;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/liber8tech/tago/protocol/Message;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/PatternSync$processMessage$1;->accept(Lcom/liber8tech/tago/protocol/Message;)V

    return-void
.end method
