.class final Lcom/liber8tech/tago/service/ImageEditorService$downloadPackZip$1;
.super Ljava/lang/Object;
.source "ImageEditorService.kt"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/ImageEditorService;->downloadPackZip(Lcom/liber8tech/tago/model/Pack;)Lio/reactivex/Observable;
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
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageEditorService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageEditorService.kt\ncom/liber8tech/tago/service/ImageEditorService$downloadPackZip$1\n*L\n1#1,367:1\n*E\n"
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
        "Lio/reactivex/ObservableEmitter;",
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
.field final synthetic $pack:Lcom/liber8tech/tago/model/Pack;

.field final synthetic this$0:Lcom/liber8tech/tago/service/ImageEditorService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/ImageEditorService;Lcom/liber8tech/tago/model/Pack;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/ImageEditorService$downloadPackZip$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    iput-object p2, p0, Lcom/liber8tech/tago/service/ImageEditorService$downloadPackZip$1;->$pack:Lcom/liber8tech/tago/model/Pack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 6
    .param p1    # Lio/reactivex/ObservableEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/liber8tech/tago/service/ImageEditorService$downloadPackZip$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {v1}, Lcom/liber8tech/tago/service/ImageEditorService;->access$getContext$p(Lcom/liber8tech/tago/service/ImageEditorService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/liber8tech/tago/Constants;->INSTANCE:Lcom/liber8tech/tago/Constants;

    invoke-virtual {v2}, Lcom/liber8tech/tago/Constants;->getPurchasedFolderPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 197
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/liber8tech/tago/service/ImageEditorService$downloadPackZip$1;->$pack:Lcom/liber8tech/tago/model/Pack;

    invoke-virtual {v2}, Lcom/liber8tech/tago/model/Pack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 200
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 201
    iget-object v2, p0, Lcom/liber8tech/tago/service/ImageEditorService$downloadPackZip$1;->$pack:Lcom/liber8tech/tago/model/Pack;

    invoke-virtual {v2}, Lcom/liber8tech/tago/model/Pack;->getZipUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 204
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    const-string v2, "response"

    .line 205
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v2, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 207
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 209
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$downloadPackZip$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file.path"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/liber8tech/tago/service/ImageEditorService;->access$extractFile(Lcom/liber8tech/tago/service/ImageEditorService;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$downloadPackZip$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {v0}, Lcom/liber8tech/tago/service/ImageEditorService;->access$getRuntimeConfig$p(Lcom/liber8tech/tago/service/ImageEditorService;)Lcom/liber8tech/tago/util/RuntimeConfig;

    move-result-object v0

    iget-object v3, p0, Lcom/liber8tech/tago/service/ImageEditorService$downloadPackZip$1;->$pack:Lcom/liber8tech/tago/model/Pack;

    invoke-virtual {v3}, Lcom/liber8tech/tago/model/Pack;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liber8tech/tago/service/ImageEditorService$downloadPackZip$1;->$pack:Lcom/liber8tech/tago/model/Pack;

    invoke-virtual {v4}, Lcom/liber8tech/tago/model/Pack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/liber8tech/tago/util/RuntimeConfig;->savePack(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    goto :goto_1

    .line 215
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::zip save success path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_2

    .line 218
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 221
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 224
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
