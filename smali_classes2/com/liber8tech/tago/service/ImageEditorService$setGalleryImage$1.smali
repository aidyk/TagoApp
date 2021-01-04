.class final Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;
.super Ljava/lang/Object;
.source "ImageEditorService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/ImageEditorService;->setGalleryImage(Landroid/net/Uri;II)Lio/reactivex/Observable;
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
    value = "SMAP\nImageEditorService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageEditorService.kt\ncom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1\n*L\n1#1,367:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "apply",
        "(Lkotlin/Unit;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $targetHeight:I

.field final synthetic $targetWidth:I

.field final synthetic $uri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/liber8tech/tago/service/ImageEditorService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/ImageEditorService;Landroid/net/Uri;II)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    iput-object p2, p0, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->$targetHeight:I

    iput p4, p0, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->$targetWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->apply(Lkotlin/Unit;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final apply(Lkotlin/Unit;)V
    .locals 8
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {p1}, Lcom/liber8tech/tago/service/ImageEditorService;->access$getContext$p(Lcom/liber8tech/tago/service/ImageEditorService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->$uri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 77
    new-instance p1, Landroid/support/media/ExifInterface;

    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {v0}, Lcom/liber8tech/tago/service/ImageEditorService;->access$getContext$p(Lcom/liber8tech/tago/service/ImageEditorService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->$uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v0, "Orientation"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string p1, "bitmap"

    .line 80
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x43870000    # 270.0f

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string p1, "bitmap"

    .line 78
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string p1, "bitmap"

    .line 79
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    const-string v0, "rotatedBitmap"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->$targetHeight:I

    iget v2, p0, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->$targetWidth:I

    invoke-static {p1, v1, v0, v2}, Lcom/liber8tech/tago/service/ImageEditorService;->access$resizedGrayscale(Lcom/liber8tech/tago/service/ImageEditorService;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$setGalleryImage$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/ImageEditorService;->setCameraImage(Landroid/graphics/Bitmap;)V

    return-void
.end method
