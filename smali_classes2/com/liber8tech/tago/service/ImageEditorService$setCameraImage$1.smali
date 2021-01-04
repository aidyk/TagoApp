.class final Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;
.super Ljava/lang/Object;
.source "ImageEditorService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/ImageEditorService;->setCameraImage([BIII)Lio/reactivex/Observable;
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
    value = "SMAP\nImageEditorService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageEditorService.kt\ncom/liber8tech/tago/service/ImageEditorService$setCameraImage$1\n*L\n1#1,367:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic $jpegBytes:[B

.field final synthetic $rotation:I

.field final synthetic $targetHeight:I

.field final synthetic $targetWidth:I

.field final synthetic this$0:Lcom/liber8tech/tago/service/ImageEditorService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/ImageEditorService;[BIII)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    iput-object p2, p0, Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;->$jpegBytes:[B

    iput p3, p0, Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;->$rotation:I

    iput p4, p0, Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;->$targetHeight:I

    iput p5, p0, Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;->$targetWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;->apply([B)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final apply([B)V
    .locals 9
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;->$jpegBytes:[B

    array-length p1, p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 66
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    iget p1, p0, Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;->$rotation:I

    int-to-float p1, p1

    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const-string p1, "bitmap"

    .line 69
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    const-string v1, "bitmap"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;->$targetHeight:I

    iget v2, p0, Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;->$targetWidth:I

    invoke-static {v0, p1, v1, v2}, Lcom/liber8tech/tago/service/ImageEditorService;->access$centerCropGrayscale(Lcom/liber8tech/tago/service/ImageEditorService;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$setCameraImage$1;->this$0:Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/ImageEditorService;->setCameraImage(Landroid/graphics/Bitmap;)V

    return-void
.end method
