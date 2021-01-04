.class final Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$2;
.super Ljava/lang/Object;
.source "ImageEditorService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/ImageEditorService;->uploadImage(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Bitmap;)Lio/reactivex/Observable;
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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "",
        "it",
        "Ljava/io/File;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/service/ImageEditorService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/ImageEditorService;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$2;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/io/File;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image/jpeg"

    .line 161
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    const-string v1, "image"

    .line 162
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$2;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {v0}, Lcom/liber8tech/tago/service/ImageEditorService;->access$getImageApi$p(Lcom/liber8tech/tago/service/ImageEditorService;)Lcom/liber8tech/tago/service/ImageApi;

    move-result-object v0

    const-string v1, "body"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/liber8tech/tago/service/ImageApi;->uploadImage(Lokhttp3/MultipartBody$Part;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$2;->apply(Ljava/io/File;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
