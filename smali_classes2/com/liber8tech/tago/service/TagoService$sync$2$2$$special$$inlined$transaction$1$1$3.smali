.class public final Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$3;
.super Ljava/lang/Object;
.source "RxRealm.kt"

# interfaces
.implements Lio/realm/Realm$Transaction$OnError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxRealm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm$transaction$1$1$3\n*L\n1#1,80:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "ex",
        "",
        "kotlin.jvm.PlatformType",
        "onError",
        "com/liber8tech/tago/util/RxRealm$transaction$1$1$3"
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

.field final synthetic this$0:Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$3;->this$0:Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;

    iput-object p2, p0, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$3;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$3;->this$0:Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;

    iget-object v0, v0, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;->$mainRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$3;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
