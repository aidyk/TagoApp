.class public final Lcom/liber8tech/tago/service/TagoService$update$$inlined$transactionWithResult$1;
.super Ljava/lang/Object;
.source "RxRealm.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/TagoService;->update(Ljava/lang/String;Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxRealm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm$transactionWithResult$1\n*L\n1#1,80:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a&\u0012\u000c\u0012\n \u0003*\u0004\u0018\u0001H\u0002H\u0002 \u0003*\u0012\u0012\u000c\u0012\n \u0003*\u0004\u0018\u0001H\u0002H\u0002\u0018\u00010\u00010\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "T",
        "kotlin.jvm.PlatformType",
        "Lio/realm/RealmObject;",
        "mainRealm",
        "Lio/realm/Realm;",
        "apply",
        "com/liber8tech/tago/util/RxRealm$transactionWithResult$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $id$inlined:Ljava/lang/String;

.field final synthetic $lowBat$inlined:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/TagoService$update$$inlined$transactionWithResult$1;->$id$inlined:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/liber8tech/tago/service/TagoService$update$$inlined$transactionWithResult$1;->$lowBat$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lio/realm/Realm;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Lio/realm/Realm;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "mainRealm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/liber8tech/tago/service/TagoService$update$$inlined$transactionWithResult$1$1;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/service/TagoService$update$$inlined$transactionWithResult$1$1;-><init>(Lcom/liber8tech/tago/service/TagoService$update$$inlined$transactionWithResult$1;Lio/realm/Realm;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lio/realm/Realm;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/TagoService$update$$inlined$transactionWithResult$1;->apply(Lio/realm/Realm;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
