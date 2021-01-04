.class public final Lcom/liber8tech/tago/PicassoRequest$startDownload$1;
.super Ljava/lang/Object;
.source "PicassoExtensions.kt"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/PicassoRequest;->startDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u001c\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/liber8tech/tago/PicassoRequest$startDownload$1",
        "Lcom/squareup/picasso/Target;",
        "onBitmapFailed",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "onBitmapLoaded",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "loadedFrom",
        "Lcom/squareup/picasso/Picasso$LoadedFrom;",
        "onPrepareLoad",
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
.field final synthetic this$0:Lcom/liber8tech/tago/PicassoRequest;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/PicassoRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/liber8tech/tago/PicassoRequest$startDownload$1;->this$0:Lcom/liber8tech/tago/PicassoRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 109
    iget-object p1, p0, Lcom/liber8tech/tago/PicassoRequest$startDownload$1;->this$0:Lcom/liber8tech/tago/PicassoRequest;

    invoke-virtual {p1}, Lcom/liber8tech/tago/PicassoRequest;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/PicassoRequest$startDownload$1;->this$0:Lcom/liber8tech/tago/PicassoRequest;

    invoke-virtual {p1}, Lcom/liber8tech/tago/PicassoRequest;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0f00ae

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/picasso/Picasso$LoadedFrom;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 115
    iget-object p2, p0, Lcom/liber8tech/tago/PicassoRequest$startDownload$1;->this$0:Lcom/liber8tech/tago/PicassoRequest;

    invoke-virtual {p2}, Lcom/liber8tech/tago/PicassoRequest;->getView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/liber8tech/tago/android/TagoApplication;->Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/TagoApplication$Companion;->getInstance()Lcom/liber8tech/tago/android/TagoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/TagoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object p1, p0, Lcom/liber8tech/tago/PicassoRequest$startDownload$1;->this$0:Lcom/liber8tech/tago/PicassoRequest;

    invoke-virtual {p1}, Lcom/liber8tech/tago/PicassoRequest;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0f00ae

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest$startDownload$1;->this$0:Lcom/liber8tech/tago/PicassoRequest;

    invoke-virtual {v0}, Lcom/liber8tech/tago/PicassoRequest;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
