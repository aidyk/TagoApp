.class final Lcom/liber8tech/tago/service/FirmwareService$getLatestFirmware$1;
.super Ljava/lang/Object;
.source "FirmwareService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/FirmwareService;->getLatestFirmware()Lio/reactivex/Single;
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
        "Lio/reactivex/SingleSource<",
        "+TR;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirmwareService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirmwareService.kt\ncom/liber8tech/tago/service/FirmwareService$getLatestFirmware$1\n*L\n1#1,62:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Single;",
        "",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/liber8tech/tago/service/FirmwareResponse;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/service/FirmwareService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/FirmwareService;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/FirmwareService$getLatestFirmware$1;->this$0:Lcom/liber8tech/tago/service/FirmwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/liber8tech/tago/service/FirmwareResponse;)Lio/reactivex/Single;
    .locals 4
    .param p1    # Lcom/liber8tech/tago/service/FirmwareResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    const/4 v1, 0x0

    .line 26
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/liber8tech/tago/service/FirmwareService$getLatestFirmware$1;->this$0:Lcom/liber8tech/tago/service/FirmwareService;

    invoke-virtual {v0}, Lcom/liber8tech/tago/service/FirmwareService;->getRuntime()Lcom/liber8tech/tago/util/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/util/RuntimeConfig;->getLatestFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/liber8tech/tago/service/FirmwareService$getLatestFirmware$1;->this$0:Lcom/liber8tech/tago/service/FirmwareService;

    invoke-virtual {v0}, Lcom/liber8tech/tago/service/FirmwareService;->getRuntime()Lcom/liber8tech/tago/util/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/util/RuntimeConfig;->getLatestFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FirmwareResponse;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    goto :goto_2

    .line 31
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    goto :goto_3

    :cond_3
    :goto_2
    const-string v0, "New firmware saved to storage"

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/liber8tech/tago/service/FirmwareService$getLatestFirmware$1;->this$0:Lcom/liber8tech/tago/service/FirmwareService;

    invoke-static {v0, p1}, Lcom/liber8tech/tago/service/FirmwareService;->access$getAndStoreFirmware(Lcom/liber8tech/tago/service/FirmwareService;Lcom/liber8tech/tago/service/FirmwareResponse;)Lio/reactivex/Single;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/liber8tech/tago/service/FirmwareResponse;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/FirmwareService$getLatestFirmware$1;->apply(Lcom/liber8tech/tago/service/FirmwareResponse;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
