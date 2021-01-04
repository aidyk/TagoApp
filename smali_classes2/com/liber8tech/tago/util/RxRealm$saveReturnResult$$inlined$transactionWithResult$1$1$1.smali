.class public final Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1$1;
.super Ljava/lang/Object;
.source "RxRealm.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxRealm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm$transactionWithResult$1$1$1\n+ 2 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm\n*L\n1#1,80:1\n66#2:81\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u000e\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\n\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lio/realm/RealmObject;",
        "it",
        "Lio/realm/Realm;",
        "kotlin.jvm.PlatformType",
        "execute",
        "com/liber8tech/tago/util/RxRealm$transactionWithResult$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $result:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1$1;->this$0:Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1;

    iput-object p2, p0, Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1$1;->this$0:Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1;

    iget-object v1, v1, Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1;->this$0:Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1;

    iget-object v1, v1, Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1;->$data$inlined:Lio/realm/RealmObject;

    check-cast v1, Lio/realm/RealmModel;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/RealmObject;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p0, Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lio/realm/RealmObject;

    check-cast v1, Lio/realm/RealmModel;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lio/realm/RealmObject;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
