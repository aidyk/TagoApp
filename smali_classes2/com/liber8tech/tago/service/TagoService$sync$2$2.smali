.class final Lcom/liber8tech/tago/service/TagoService$sync$2$2;
.super Ljava/lang/Object;
.source "TagoService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/TagoService$sync$2;->apply(Lkotlin/Pair;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
    value = "SMAP\nTagoService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagoService.kt\ncom/liber8tech/tago/service/TagoService$sync$2$2\n+ 2 RxRealm.kt\ncom/liber8tech/tago/util/RxRealm\n*L\n1#1,102:1\n37#2,9:103\n*E\n*S KotlinDebug\n*F\n+ 1 TagoService.kt\ncom/liber8tech/tago/service/TagoService$sync$2$2\n*L\n52#1,9:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "",
        "it",
        "Lcom/liber8tech/tago/model/TagoDevice;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/liber8tech/tago/service/TagoService$sync$2$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liber8tech/tago/service/TagoService$sync$2$2;

    invoke-direct {v0}, Lcom/liber8tech/tago/service/TagoService$sync$2$2;-><init>()V

    sput-object v0, Lcom/liber8tech/tago/service/TagoService$sync$2$2;->INSTANCE:Lcom/liber8tech/tago/service/TagoService$sync$2$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/liber8tech/tago/model/TagoDevice;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Lcom/liber8tech/tago/model/TagoDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            ")",
            "Lio/reactivex/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/liber8tech/tago/util/RxRealm;->INSTANCE:Lcom/liber8tech/tago/util/RxRealm;

    .line 103
    invoke-virtual {v0}, Lcom/liber8tech/tago/util/RxRealm;->mainRealm()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/service/TagoService$sync$2$2$$special$$inlined$transaction$1;-><init>(Lcom/liber8tech/tago/model/TagoDevice;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "mainRealm().flatMap { ma\u2026\n        )\n      })\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/TagoService$sync$2$2;->apply(Lcom/liber8tech/tago/model/TagoDevice;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
