.class final Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1$3;
.super Ljava/lang/Object;
.source "RxRealm.kt"

# interfaces
.implements Lio/realm/Realm$Transaction$OnError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u000e\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lio/realm/RealmObject;",
        "ex",
        "",
        "kotlin.jvm.PlatformType",
        "onError"
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

.field final synthetic this$0:Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1$3;->this$0:Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1;

    iput-object p2, p0, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1$3;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1$3;->this$0:Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1;

    iget-object v0, v0, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1;->$mainRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    iget-object v0, p0, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1$3;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
