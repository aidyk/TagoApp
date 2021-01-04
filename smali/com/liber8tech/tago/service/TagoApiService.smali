.class public final Lcom/liber8tech/tago/service/TagoApiService;
.super Ljava/lang/Object;
.source "TagoApiService.kt"


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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bJ\u0012\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\r0\u0008J\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u000f\u001a\u00020\tJ\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/TagoApiService;",
        "",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "(Lretrofit2/Retrofit;)V",
        "syncApi",
        "Lcom/liber8tech/tago/service/SyncApi;",
        "delete",
        "Lio/reactivex/Observable;",
        "Lcom/liber8tech/tago/model/TagoDevice;",
        "id",
        "",
        "get",
        "",
        "update",
        "device",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
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
.field private final syncApi:Lcom/liber8tech/tago/service/SyncApi;


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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/liber8tech/tago/service/SyncApi;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "retrofit.create(SyncApi::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/liber8tech/tago/service/SyncApi;

    iput-object p1, p0, Lcom/liber8tech/tago/service/TagoApiService;->syncApi:Lcom/liber8tech/tago/service/SyncApi;

    return-void
.end method


# virtual methods
.method public final delete(Ljava/lang/String;)Lio/reactivex/Observable;
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
            "Lcom/liber8tech/tago/model/TagoDevice;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoApiService;->syncApi:Lcom/liber8tech/tago/service/SyncApi;

    invoke-interface {v0, p1}, Lcom/liber8tech/tago/service/SyncApi;->delete(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final get()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoApiService;->syncApi:Lcom/liber8tech/tago/service/SyncApi;

    invoke-interface {v0}, Lcom/liber8tech/tago/service/SyncApi;->get()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final update(Lcom/liber8tech/tago/model/TagoDevice;)Lio/reactivex/Observable;
    .locals 1
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
            "Lcom/liber8tech/tago/model/TagoDevice;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoApiService;->syncApi:Lcom/liber8tech/tago/service/SyncApi;

    invoke-interface {v0, p1}, Lcom/liber8tech/tago/service/SyncApi;->update(Lcom/liber8tech/tago/model/TagoDevice;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final update(Lcom/polidea/rxandroidble2/RxBleDevice;)Lio/reactivex/Observable;
    .locals 4
    .param p1    # Lcom/polidea/rxandroidble2/RxBleDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/liber8tech/tago/service/TagoApiService;->syncApi:Lcom/liber8tech/tago/service/SyncApi;

    new-instance v1, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device.macAddress"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "empty"

    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/liber8tech/tago/model/TagoDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/liber8tech/tago/service/SyncApi;->update(Lcom/liber8tech/tago/model/TagoDevice;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
