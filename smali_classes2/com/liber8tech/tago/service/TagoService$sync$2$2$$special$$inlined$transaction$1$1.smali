.class public final Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;
.super Ljava/lang/Object;
.source "RxRealm.kt"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1;->apply(Lio/realm/Realm;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxRealm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm$transaction$1$1\n*L\n1#1,80:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0004*\u0004\u0018\u00010\u00010\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "emitter",
        "Lio/reactivex/ObservableEmitter;",
        "kotlin.jvm.PlatformType",
        "subscribe",
        "com/liber8tech/tago/util/RxRealm$transaction$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $mainRealm:Lio/realm/Realm;

.field final synthetic this$0:Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1;Lio/realm/Realm;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;->this$0:Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1;

    iput-object p2, p0, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;->$mainRealm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .param p1    # Lio/reactivex/ObservableEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;->$mainRealm:Lio/realm/Realm;

    .line 40
    new-instance v1, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$1;-><init>(Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;)V

    check-cast v1, Lio/realm/Realm$Transaction;

    .line 41
    new-instance v2, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$2;

    invoke-direct {v2, p0, p1}, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$2;-><init>(Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;Lio/reactivex/ObservableEmitter;)V

    check-cast v2, Lio/realm/Realm$Transaction$OnSuccess;

    .line 42
    new-instance v3, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$3;

    invoke-direct {v3, p0, p1}, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1$3;-><init>(Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1$1;Lio/reactivex/ObservableEmitter;)V

    check-cast v3, Lio/realm/Realm$Transaction$OnError;

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    return-void
.end method
