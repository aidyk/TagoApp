.class public final Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1;
.super Ljava/lang/Object;
.source "RxRealm.kt"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1;->apply(Lio/realm/Realm;)Lio/reactivex/Observable;
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
    value = "SMAP\nRxRealm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm$transactionWithResult$1$1\n*L\n1#1,80:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0014\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n \u0006*\u0004\u0018\u0001H\u0002H\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lio/realm/RealmObject;",
        "emitter",
        "Lio/reactivex/ObservableEmitter;",
        "kotlin.jvm.PlatformType",
        "subscribe",
        "com/liber8tech/tago/util/RxRealm$transactionWithResult$1$1"
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

.field final synthetic this$0:Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1;Lio/realm/Realm;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1;->this$0:Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1;

    iput-object p2, p0, Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1;->$mainRealm:Lio/realm/Realm;

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
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    check-cast v1, Lio/realm/RealmObject;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1;->$mainRealm:Lio/realm/Realm;

    .line 17
    new-instance v2, Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1$1;-><init>(Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Lio/realm/Realm$Transaction;

    .line 18
    new-instance v3, Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1$2;-><init>(Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lio/reactivex/ObservableEmitter;)V

    check-cast v3, Lio/realm/Realm$Transaction$OnSuccess;

    .line 19
    new-instance v0, Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1$3;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1$3;-><init>(Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1$1;Lio/reactivex/ObservableEmitter;)V

    check-cast v0, Lio/realm/Realm$Transaction$OnError;

    .line 16
    invoke-virtual {v1, v2, v3, v0}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    return-void
.end method
