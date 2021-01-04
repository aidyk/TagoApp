.class public final Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1$1;
.super Ljava/lang/Object;
.source "RxRealm.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxRealm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1$1\n*L\n1#1,80:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u000e\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lio/realm/RealmObject;",
        "it",
        "Lio/realm/Realm;",
        "kotlin.jvm.PlatformType",
        "execute"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $results:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1$1;->this$0:Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1;

    iput-object p2, p0, Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1$1;->$results:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1$1;->$results:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1$1;->this$0:Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1;

    iget-object v1, v1, Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1;->this$0:Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1;

    iget-object v1, v1, Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1;->$t:Lkotlin/jvm/functions/Function1;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p0, Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1$1;->$results:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1$1$1;->$results:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
