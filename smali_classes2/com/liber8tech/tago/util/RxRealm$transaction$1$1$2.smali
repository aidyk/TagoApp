.class public final Lcom/liber8tech/tago/util/RxRealm$transaction$1$1$2;
.super Ljava/lang/Object;
.source "RxRealm.kt"

# interfaces
.implements Lio/realm/Realm$Transaction$OnSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/util/RxRealm$transaction$1$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxRealm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm$transaction$1$1$2\n*L\n1#1,80:1\n*E\n"
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
        "onSuccess"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $emitter:Lio/reactivex/ObservableEmitter;

.field final synthetic this$0:Lcom/liber8tech/tago/util/RxRealm$transaction$1$1;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/util/RxRealm$transaction$1$1;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/util/RxRealm$transaction$1$1$2;->this$0:Lcom/liber8tech/tago/util/RxRealm$transaction$1$1;

    iput-object p2, p0, Lcom/liber8tech/tago/util/RxRealm$transaction$1$1$2;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/liber8tech/tago/util/RxRealm$transaction$1$1$2;->this$0:Lcom/liber8tech/tago/util/RxRealm$transaction$1$1;

    iget-object v0, v0, Lcom/liber8tech/tago/util/RxRealm$transaction$1$1;->$mainRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    iget-object v0, p0, Lcom/liber8tech/tago/util/RxRealm$transaction$1$1$2;->$emitter:Lio/reactivex/ObservableEmitter;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/liber8tech/tago/util/RxRealm$transaction$1$1$2;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
