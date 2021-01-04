.class public final Lcom/liber8tech/tago/util/RxRealm;
.super Ljava/lang/Object;
.source "RxRealm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxRealm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm\n*L\n1#1,80:1\n13#1,10:81\n25#1,10:91\n13#1,10:101\n37#1,9:111\n37#1,9:120\n*E\n*S KotlinDebug\n*F\n+ 1 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm\n*L\n60#1,10:81\n63#1,10:91\n66#1,10:101\n69#1,9:111\n72#1,9:120\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J4\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ$\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\tJ4\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ*\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00060\u00110\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\tJ\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0004J#\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u0006\u0010\u0015\u001a\u0002H\u0006\u00a2\u0006\u0002\u0010\u0016J#\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u0006\u0010\u0015\u001a\u0002H\u0006\u00a2\u0006\u0002\u0010\u0016J4\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042#\u0008\u0004\u0010\u0019\u001a\u001d\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00050\u001aH\u0086\u0008J@\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072%\u0008\u0004\u0010\u0019\u001a\u001f\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0006\u0012\u0004\u0018\u0001H\u00060\u001aH\u0086\u0008JJ\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00060\u00110\u0004\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072)\u0008\u0004\u0010\u0019\u001a#\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00060\u00110\u001aH\u0086\u0008\u00a8\u0006 "
    }
    d2 = {
        "Lcom/liber8tech/tago/util/RxRealm;",
        "",
        "()V",
        "delete",
        "Lio/reactivex/Observable;",
        "",
        "T",
        "Lio/realm/RealmObject;",
        "clazz",
        "Ljava/lang/Class;",
        "field",
        "",
        "value",
        "deleteAll",
        "",
        "find",
        "findAll",
        "",
        "mainRealm",
        "Lio/realm/Realm;",
        "save",
        "data",
        "(Lio/realm/RealmObject;)Lio/reactivex/Observable;",
        "saveReturnResult",
        "transaction",
        "t",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "bgRealm",
        "transactionWithResult",
        "transactionWithResults",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/liber8tech/tago/util/RxRealm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/liber8tech/tago/util/RxRealm;

    invoke-direct {v0}, Lcom/liber8tech/tago/util/RxRealm;-><init>()V

    sput-object v0, Lcom/liber8tech/tago/util/RxRealm;->INSTANCE:Lcom/liber8tech/tago/util/RxRealm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/RealmObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/liber8tech/tago/util/RxRealm;->mainRealm()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/util/RxRealm$delete$$inlined$transaction$1;

    invoke-direct {v1, p1, p2, p3}, Lcom/liber8tech/tago/util/RxRealm$delete$$inlined$transaction$1;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "mainRealm().flatMap { ma\u2026\n        )\n      })\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final deleteAll(Ljava/lang/Class;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/RealmObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/liber8tech/tago/util/RxRealm;->mainRealm()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/util/RxRealm$deleteAll$1;-><init>(Ljava/lang/Class;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "mainRealm().flatMap { ma\u2026\n        )\n      })\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/RealmObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/liber8tech/tago/util/RxRealm;->mainRealm()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1;

    invoke-direct {v1, p1, p2, p3}, Lcom/liber8tech/tago/util/RxRealm$find$$inlined$transactionWithResult$1;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "mainRealm().flatMap { ma\u2026\n        )\n      })\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final findAll(Ljava/lang/Class;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/RealmObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/liber8tech/tago/util/RxRealm;->mainRealm()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/util/RxRealm$findAll$$inlined$transactionWithResults$1;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/util/RxRealm$findAll$$inlined$transactionWithResults$1;-><init>(Ljava/lang/Class;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "mainRealm().flatMap { ma\u2026\n        )\n      })\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final mainRealm()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lio/realm/Realm;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 75
    sget-object v0, Lcom/liber8tech/tago/util/RxRealm$mainRealm$1;->INSTANCE:Lcom/liber8tech/tago/util/RxRealm$mainRealm$1;

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.defer { Obser\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final save(Lio/realm/RealmObject;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Lio/realm/RealmObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/RealmObject;",
            ">(TT;)",
            "Lio/reactivex/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/liber8tech/tago/util/RxRealm;->mainRealm()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/util/RxRealm$save$$inlined$transaction$1;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/util/RxRealm$save$$inlined$transaction$1;-><init>(Lio/realm/RealmObject;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "mainRealm().flatMap { ma\u2026\n        )\n      })\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final saveReturnResult(Lio/realm/RealmObject;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Lio/realm/RealmObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/RealmObject;",
            ">(TT;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/liber8tech/tago/util/RxRealm;->mainRealm()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/util/RxRealm$saveReturnResult$$inlined$transactionWithResult$1;-><init>(Lio/realm/RealmObject;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "mainRealm().flatMap { ma\u2026\n        )\n      })\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final transaction(Lkotlin/jvm/functions/Function1;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/realm/Realm;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/liber8tech/tago/util/RxRealm;->mainRealm()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/util/RxRealm$transaction$1;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/util/RxRealm$transaction$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "mainRealm().flatMap { ma\u2026\n        )\n      })\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final transactionWithResult(Lkotlin/jvm/functions/Function1;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/RealmObject;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/realm/Realm;",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/liber8tech/tago/util/RxRealm;->mainRealm()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/util/RxRealm$transactionWithResult$1;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/util/RxRealm$transactionWithResult$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "mainRealm().flatMap { ma\u2026\n        )\n      })\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final transactionWithResults(Lkotlin/jvm/functions/Function1;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/RealmObject;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/realm/Realm;",
            "+",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/liber8tech/tago/util/RxRealm;->mainRealm()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/util/RxRealm$transactionWithResults$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "mainRealm().flatMap { ma\u2026\n        )\n      })\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
