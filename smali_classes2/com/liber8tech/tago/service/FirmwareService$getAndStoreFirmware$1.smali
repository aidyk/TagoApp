.class final Lcom/liber8tech/tago/service/FirmwareService$getAndStoreFirmware$1;
.super Ljava/lang/Object;
.source "FirmwareService.kt"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/FirmwareService;->getAndStoreFirmware(Lcom/liber8tech/tago/service/FirmwareResponse;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirmwareService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirmwareService.kt\ncom/liber8tech/tago/service/FirmwareService$getAndStoreFirmware$1\n*L\n1#1,62:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0004*\u0004\u0018\u00010\u00010\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "emitter",
        "Lio/reactivex/SingleEmitter;",
        "kotlin.jvm.PlatformType",
        "subscribe"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $firmwareData:Lcom/liber8tech/tago/service/FirmwareResponse;

.field final synthetic this$0:Lcom/liber8tech/tago/service/FirmwareService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/FirmwareService;Lcom/liber8tech/tago/service/FirmwareResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/FirmwareService$getAndStoreFirmware$1;->this$0:Lcom/liber8tech/tago/service/FirmwareService;

    iput-object p2, p0, Lcom/liber8tech/tago/service/FirmwareService$getAndStoreFirmware$1;->$firmwareData:Lcom/liber8tech/tago/service/FirmwareResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 4
    .param p1    # Lio/reactivex/SingleEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/liber8tech/tago/service/FirmwareService$getAndStoreFirmware$1;->$firmwareData:Lcom/liber8tech/tago/service/FirmwareResponse;

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/FirmwareResponse;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 40
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    const-string v1, "response"

    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/liber8tech/tago/service/FirmwareService$getAndStoreFirmware$1;->this$0:Lcom/liber8tech/tago/service/FirmwareService;

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/FirmwareService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/liber8tech/tago/service/FirmwareService$getAndStoreFirmware$1;->this$0:Lcom/liber8tech/tago/service/FirmwareService;

    invoke-virtual {v2}, Lcom/liber8tech/tago/service/FirmwareService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f009f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 44
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 45
    iget-object v0, p0, Lcom/liber8tech/tago/service/FirmwareService$getAndStoreFirmware$1;->this$0:Lcom/liber8tech/tago/service/FirmwareService;

    invoke-virtual {v0}, Lcom/liber8tech/tago/service/FirmwareService;->getRuntime()Lcom/liber8tech/tago/util/RuntimeConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/service/FirmwareService$getAndStoreFirmware$1;->$firmwareData:Lcom/liber8tech/tago/service/FirmwareResponse;

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/FirmwareResponse;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/util/RuntimeConfig;->setLatestFirmwareVersion(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 49
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
