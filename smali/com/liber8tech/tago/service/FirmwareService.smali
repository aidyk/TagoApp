.class public final Lcom/liber8tech/tago/service/FirmwareService;
.super Ljava/lang/Object;
.source "FirmwareService.kt"


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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/FirmwareService;",
        "",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "context",
        "Landroid/content/Context;",
        "runtime",
        "Lcom/liber8tech/tago/util/RuntimeConfig;",
        "(Lretrofit2/Retrofit;Landroid/content/Context;Lcom/liber8tech/tago/util/RuntimeConfig;)V",
        "getContext",
        "()Landroid/content/Context;",
        "firmwareApi",
        "Lcom/liber8tech/tago/service/FirmwareApi;",
        "kotlin.jvm.PlatformType",
        "isFirmwareUpdateTried",
        "",
        "()Z",
        "setFirmwareUpdateTried",
        "(Z)V",
        "getRuntime",
        "()Lcom/liber8tech/tago/util/RuntimeConfig;",
        "getAndStoreFirmware",
        "Lio/reactivex/Single;",
        "",
        "firmwareData",
        "Lcom/liber8tech/tago/service/FirmwareResponse;",
        "getLatestFirmware",
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
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final firmwareApi:Lcom/liber8tech/tago/service/FirmwareApi;

.field private isFirmwareUpdateTried:Z

.field private final runtime:Lcom/liber8tech/tago/util/RuntimeConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;Landroid/content/Context;Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 1
    .param p1    # Lretrofit2/Retrofit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/liber8tech/tago/util/RuntimeConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtime"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/liber8tech/tago/service/FirmwareService;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/liber8tech/tago/service/FirmwareService;->runtime:Lcom/liber8tech/tago/util/RuntimeConfig;

    .line 19
    const-class p2, Lcom/liber8tech/tago/service/FirmwareApi;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liber8tech/tago/service/FirmwareApi;

    iput-object p1, p0, Lcom/liber8tech/tago/service/FirmwareService;->firmwareApi:Lcom/liber8tech/tago/service/FirmwareApi;

    return-void
.end method

.method public static final synthetic access$getAndStoreFirmware(Lcom/liber8tech/tago/service/FirmwareService;Lcom/liber8tech/tago/service/FirmwareResponse;)Lio/reactivex/Single;
    .locals 0
    .param p1    # Lcom/liber8tech/tago/service/FirmwareResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/service/FirmwareService;->getAndStoreFirmware(Lcom/liber8tech/tago/service/FirmwareResponse;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method private final getAndStoreFirmware(Lcom/liber8tech/tago/service/FirmwareResponse;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/service/FirmwareResponse;",
            ")",
            "Lio/reactivex/Single<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/liber8tech/tago/service/FirmwareService$getAndStoreFirmware$1;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/service/FirmwareService$getAndStoreFirmware$1;-><init>(Lcom/liber8tech/tago/service/FirmwareService;Lcom/liber8tech/tago/service/FirmwareResponse;)V

    check-cast v0, Lio/reactivex/SingleOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.create({ emitter \u2026ception())\n      }\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/liber8tech/tago/service/FirmwareService;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getLatestFirmware()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/liber8tech/tago/service/FirmwareService;->firmwareApi:Lcom/liber8tech/tago/service/FirmwareApi;

    invoke-interface {v0}, Lcom/liber8tech/tago/service/FirmwareApi;->getLatestFirmware()Lio/reactivex/Single;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/liber8tech/tago/service/FirmwareService$getLatestFirmware$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/service/FirmwareService$getLatestFirmware$1;-><init>(Lcom/liber8tech/tago/service/FirmwareService;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "firmwareApi.getLatestFir\u2026t(Unit)\n        }\n      }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRuntime()Lcom/liber8tech/tago/util/RuntimeConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/liber8tech/tago/service/FirmwareService;->runtime:Lcom/liber8tech/tago/util/RuntimeConfig;

    return-object v0
.end method

.method public final isFirmwareUpdateTried()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/liber8tech/tago/service/FirmwareService;->isFirmwareUpdateTried:Z

    return v0
.end method

.method public final setFirmwareUpdateTried(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/liber8tech/tago/service/FirmwareService;->isFirmwareUpdateTried:Z

    return-void
.end method
