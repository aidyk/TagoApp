.class final Lcom/liber8tech/tago/service/TagoService$devices$2$1$1;
.super Ljava/lang/Object;
.source "TagoService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/TagoService$devices$2$1;->apply(Ljava/util/List;)Lio/reactivex/Observable;
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
        "TT;TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTagoService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagoService.kt\ncom/liber8tech/tago/service/TagoService$devices$2$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,102:1\n670#2:103\n743#2,2:104\n670#2:106\n743#2,2:107\n*E\n*S KotlinDebug\n*F\n+ 1 TagoService.kt\ncom/liber8tech/tago/service/TagoService$devices$2$1$1\n*L\n94#1:103\n94#1,2:104\n96#1:106\n96#1,2:107\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "discovered",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $saved:Ljava/util/List;

.field final synthetic this$0:Lcom/liber8tech/tago/service/TagoService$devices$2$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/TagoService$devices$2$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/TagoService$devices$2$1$1;->this$0:Lcom/liber8tech/tago/service/TagoService$devices$2$1;

    iput-object p2, p0, Lcom/liber8tech/tago/service/TagoService$devices$2$1$1;->$saved:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/TagoService$devices$2$1$1;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "discovered"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoService$devices$2$1$1;->this$0:Lcom/liber8tech/tago/service/TagoService$devices$2$1;

    iget-object v0, v0, Lcom/liber8tech/tago/service/TagoService$devices$2$1;->this$0:Lcom/liber8tech/tago/service/TagoService$devices$2;

    iget-boolean v0, v0, Lcom/liber8tech/tago/service/TagoService$devices$2;->$own:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 94
    check-cast p1, Ljava/lang/Iterable;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 104
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/polidea/rxandroidble2/RxBleDevice;

    .line 94
    iget-object v6, p0, Lcom/liber8tech/tago/service/TagoService$devices$2$1$1;->$saved:Ljava/util/List;

    const-string v7, "saved"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {v8}, Lcom/liber8tech/tago/model/TagoDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    if-eqz v7, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_4
    check-cast v0, Ljava/util/List;

    goto :goto_6

    .line 96
    :cond_5
    check-cast p1, Ljava/lang/Iterable;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 107
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/polidea/rxandroidble2/RxBleDevice;

    .line 96
    iget-object v6, p0, Lcom/liber8tech/tago/service/TagoService$devices$2$1$1;->$saved:Ljava/util/List;

    const-string v7, "saved"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {v8}, Lcom/liber8tech/tago/model/TagoDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_8
    move-object v7, v3

    :goto_4
    if-nez v7, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_6

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 108
    :cond_a
    check-cast v0, Ljava/util/List;

    :goto_6
    return-object v0
.end method
