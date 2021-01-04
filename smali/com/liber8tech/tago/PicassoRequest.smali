.class public final Lcom/liber8tech/tago/PicassoRequest;
.super Ljava/lang/Object;
.source "PicassoExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPicassoExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PicassoExtensions.kt\ncom/liber8tech/tago/PicassoRequest\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,123:1\n77#2,12:124\n*E\n*S KotlinDebug\n*F\n+ 1 PicassoExtensions.kt\ncom/liber8tech/tago/PicassoRequest\n*L\n42#1,12:124\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0000J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0008J\u0006\u0010\u0018\u001a\u00020\u0019J\u0008\u0010\u001a\u001a\u00020\u0019H\u0002J\u0008\u0010\u001b\u001a\u00020\u0019H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/liber8tech/tago/PicassoRequest;",
        "",
        "view",
        "Landroid/view/View;",
        "requestCreator",
        "Lcom/squareup/picasso/RequestCreator;",
        "(Landroid/view/View;Lcom/squareup/picasso/RequestCreator;)V",
        "height",
        "",
        "imageSizeStore",
        "Lcom/liber8tech/tago/util/ImageSizeStore;",
        "imageSizeTag",
        "",
        "getRequestCreator",
        "()Lcom/squareup/picasso/RequestCreator;",
        "getView",
        "()Landroid/view/View;",
        "width",
        "centerCrop",
        "error",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "resId",
        "placeHolder",
        "start",
        "",
        "startDownload",
        "storeSizeAndStartDownload",
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
.field private height:I

.field private final imageSizeStore:Lcom/liber8tech/tago/util/ImageSizeStore;

.field private imageSizeTag:Ljava/lang/String;

.field private final requestCreator:Lcom/squareup/picasso/RequestCreator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/squareup/picasso/RequestCreator;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/picasso/RequestCreator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestCreator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/PicassoRequest;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/liber8tech/tago/PicassoRequest;->requestCreator:Lcom/squareup/picasso/RequestCreator;

    const-string p1, ""

    .line 31
    iput-object p1, p0, Lcom/liber8tech/tago/PicassoRequest;->imageSizeTag:Ljava/lang/String;

    .line 33
    sget-object p1, Lcom/liber8tech/tago/android/TagoApplication;->Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/TagoApplication$Companion;->getInstance()Lcom/liber8tech/tago/android/TagoApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/TagoApplication;->getComponent()Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/liber8tech/tago/di/TagoComponent;->imageSizeStore()Lcom/liber8tech/tago/util/ImageSizeStore;

    move-result-object p1

    iput-object p1, p0, Lcom/liber8tech/tago/PicassoRequest;->imageSizeStore:Lcom/liber8tech/tago/util/ImageSizeStore;

    .line 36
    iget-object p1, p0, Lcom/liber8tech/tago/PicassoRequest;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/liber8tech/tago/PicassoRequest;->width:I

    .line 37
    iget-object p1, p0, Lcom/liber8tech/tago/PicassoRequest;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/liber8tech/tago/PicassoRequest;->height:I

    return-void
.end method

.method public static final synthetic access$getHeight$p(Lcom/liber8tech/tago/PicassoRequest;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/liber8tech/tago/PicassoRequest;->height:I

    return p0
.end method

.method public static final synthetic access$getWidth$p(Lcom/liber8tech/tago/PicassoRequest;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/liber8tech/tago/PicassoRequest;->width:I

    return p0
.end method

.method public static final synthetic access$setHeight$p(Lcom/liber8tech/tago/PicassoRequest;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/liber8tech/tago/PicassoRequest;->height:I

    return-void
.end method

.method public static final synthetic access$setWidth$p(Lcom/liber8tech/tago/PicassoRequest;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/liber8tech/tago/PicassoRequest;->width:I

    return-void
.end method

.method public static final synthetic access$storeSizeAndStartDownload(Lcom/liber8tech/tago/PicassoRequest;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/liber8tech/tago/PicassoRequest;->storeSizeAndStartDownload()V

    return-void
.end method

.method private final startDownload()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->requestCreator:Lcom/squareup/picasso/RequestCreator;

    iget-object v1, p0, Lcom/liber8tech/tago/PicassoRequest;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->view:Landroid/view/View;

    new-instance v1, Lcom/liber8tech/tago/PicassoRequest$startDownload$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/PicassoRequest$startDownload$1;-><init>(Lcom/liber8tech/tago/PicassoRequest;)V

    const v2, 0x7f0f00ae

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->requestCreator:Lcom/squareup/picasso/RequestCreator;

    iget-object v1, p0, Lcom/liber8tech/tago/PicassoRequest;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/squareup/picasso/Target;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.squareup.picasso.Target"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final storeSizeAndStartDownload()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->imageSizeTag:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->imageSizeStore:Lcom/liber8tech/tago/util/ImageSizeStore;

    iget-object v1, p0, Lcom/liber8tech/tago/PicassoRequest;->imageSizeTag:Ljava/lang/String;

    iget v2, p0, Lcom/liber8tech/tago/PicassoRequest;->width:I

    iget v3, p0, Lcom/liber8tech/tago/PicassoRequest;->height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/liber8tech/tago/util/ImageSizeStore;->put(Ljava/lang/String;II)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->requestCreator:Lcom/squareup/picasso/RequestCreator;

    iget v1, p0, Lcom/liber8tech/tago/PicassoRequest;->width:I

    iget v2, p0, Lcom/liber8tech/tago/PicassoRequest;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    .line 93
    invoke-direct {p0}, Lcom/liber8tech/tago/PicassoRequest;->startDownload()V

    return-void
.end method


# virtual methods
.method public final centerCrop()Lcom/liber8tech/tago/PicassoRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->requestCreator:Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    return-object p0
.end method

.method public final error(I)Lcom/liber8tech/tago/PicassoRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->requestCreator:Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    return-object p0
.end method

.method public final error(Landroid/graphics/drawable/Drawable;)Lcom/liber8tech/tago/PicassoRequest;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->requestCreator:Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    return-object p0
.end method

.method public final getRequestCreator()Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->requestCreator:Lcom/squareup/picasso/RequestCreator;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->view:Landroid/view/View;

    return-object v0
.end method

.method public final imageSizeTag(Ljava/lang/String;)Lcom/liber8tech/tago/PicassoRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "imageSizeTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->imageSizeStore:Lcom/liber8tech/tago/util/ImageSizeStore;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/util/ImageSizeStore;->get(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/liber8tech/tago/PicassoRequest;->width:I

    .line 56
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/liber8tech/tago/PicassoRequest;->height:I

    goto :goto_0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/liber8tech/tago/PicassoRequest;->imageSizeTag:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final placeHolder(I)Lcom/liber8tech/tago/PicassoRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->requestCreator:Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    return-object p0
.end method

.method public final placeHolder(Landroid/graphics/drawable/Drawable;)Lcom/liber8tech/tago/PicassoRequest;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->requestCreator:Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    return-object p0
.end method

.method public final start()V
    .locals 3

    .line 41
    iget v0, p0, Lcom/liber8tech/tago/PicassoRequest;->width:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/liber8tech/tago/PicassoRequest;->height:I

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest;->view:Landroid/view/View;

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 125
    new-instance v2, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Lcom/liber8tech/tago/PicassoRequest;)V

    check-cast v2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/liber8tech/tago/PicassoRequest;->storeSizeAndStartDownload()V

    :goto_0
    return-void
.end method
