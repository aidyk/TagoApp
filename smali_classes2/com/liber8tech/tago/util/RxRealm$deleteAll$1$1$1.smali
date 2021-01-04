.class final Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1$1;
.super Ljava/lang/Object;
.source "RxRealm.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


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
.field final synthetic $result:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1$1;->this$0:Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1;

    iput-object p2, p0, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1$1;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1$1;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1$1;->this$0:Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1;

    iget-object v1, v1, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1$1;->this$0:Lcom/liber8tech/tago/util/RxRealm$deleteAll$1;

    iget-object v1, v1, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1;->$clazz:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    move-result p1

    iput-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method
