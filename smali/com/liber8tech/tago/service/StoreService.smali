.class public final Lcom/liber8tech/tago/service/StoreService;
.super Ljava/lang/Object;
.source "StoreService.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008J\u001a\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\t0\u00082\u0006\u0010\r\u001a\u00020\u000eJ \u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\t0\u00082\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\tR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/StoreService;",
        "",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "(Lretrofit2/Retrofit;)V",
        "storeApi",
        "Lcom/liber8tech/tago/service/StoreApi;",
        "getCategories",
        "Lio/reactivex/Observable;",
        "",
        "Lcom/liber8tech/tago/model/Category;",
        "getPacks",
        "Lcom/liber8tech/tago/model/Pack;",
        "categoryId",
        "",
        "getPacksBySkus",
        "listOfSkus",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final storeApi:Lcom/liber8tech/tago/service/StoreApi;


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;)V
    .locals 1
    .param p1    # Lretrofit2/Retrofit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class v0, Lcom/liber8tech/tago/service/StoreApi;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "retrofit.create(StoreApi::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/liber8tech/tago/service/StoreApi;

    iput-object p1, p0, Lcom/liber8tech/tago/service/StoreService;->storeApi:Lcom/liber8tech/tago/service/StoreApi;

    return-void
.end method


# virtual methods
.method public final getCategories()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/Category;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/liber8tech/tago/service/StoreService;->storeApi:Lcom/liber8tech/tago/service/StoreApi;

    invoke-interface {v0}, Lcom/liber8tech/tago/service/StoreApi;->getCategories()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getPacks(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/Pack;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "categoryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/liber8tech/tago/service/StoreService;->storeApi:Lcom/liber8tech/tago/service/StoreApi;

    invoke-interface {v0, p1}, Lcom/liber8tech/tago/service/StoreApi;->getPacks(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final getPacksBySkus(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/Pack;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "listOfSkus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/liber8tech/tago/service/StoreService;->storeApi:Lcom/liber8tech/tago/service/StoreApi;

    invoke-interface {v0, p1}, Lcom/liber8tech/tago/service/StoreApi;->getPacksByIds(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
