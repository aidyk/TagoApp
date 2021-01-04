.class final Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;
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
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
        "image",
        "Landroid/graphics/Bitmap;",
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
.field final synthetic $leftTop:Landroid/graphics/PointF;

.field final synthetic $rightBottom:Landroid/graphics/PointF;

.field final synthetic $src:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/liber8tech/tago/service/ImageEditorService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/ImageEditorService;Landroid/graphics/Bitmap;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    iput-object p2, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->$src:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->$leftTop:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->$rightBottom:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->$src:Landroid/graphics/Bitmap;

    .line 150
    iget-object v1, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->$leftTop:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->$rightBottom:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->$rightBottom:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->$leftTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->$rightBottom:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->$leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 153
    iget-object v2, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->$leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->$leftTop:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-static {p1, v2, v3, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {v1}, Lcom/liber8tech/tago/service/ImageEditorService;->access$getContext$p(Lcom/liber8tech/tago/service/ImageEditorService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "image.jpg"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz v0, :cond_1

    .line 157
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object v4, v1

    check-cast v4, Ljava/io/OutputStream;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 158
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/ImageEditorService$uploadImage$1;->apply(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
