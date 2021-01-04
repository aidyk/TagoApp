.class final Lcom/liber8tech/tago/service/ImageEditorService$extractFile$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageEditorService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/ImageEditorService;->extractFile(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $bytesIn:[B

.field final synthetic $read:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $zipIn:Ljava/util/zip/ZipInputStream;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/zip/ZipInputStream;[B)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/ImageEditorService$extractFile$1;->$read:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/liber8tech/tago/service/ImageEditorService$extractFile$1;->$zipIn:Ljava/util/zip/ZipInputStream;

    iput-object p3, p0, Lcom/liber8tech/tago/service/ImageEditorService$extractFile$1;->$bytesIn:[B

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$extractFile$1;->$read:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/liber8tech/tago/service/ImageEditorService$extractFile$1;->$zipIn:Ljava/util/zip/ZipInputStream;

    iget-object v2, p0, Lcom/liber8tech/tago/service/ImageEditorService$extractFile$1;->$bytesIn:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, p0, Lcom/liber8tech/tago/service/ImageEditorService$extractFile$1;->$read:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/liber8tech/tago/service/ImageEditorService$extractFile$1;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
