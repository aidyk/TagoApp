.class final Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AttachmentActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/AttachmentActivity;->readQRImage([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttachmentActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttachmentActivity.kt\ncom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1\n+ 2 Arrays.kt\norg/jetbrains/anko/collections/ArraysKt\n*L\n1#1,156:1\n80#2:157\n*E\n*S KotlinDebug\n*F\n+ 1 AttachmentActivity.kt\ncom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1\n*L\n92#1:157\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1"
    f = "AttachmentActivity.kt"
    i = {}
    l = {
        0x5b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bytes:[B

.field final synthetic $qrList:Ljava/util/List;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/AttachmentActivity;[BLjava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->$bytes:[B

    iput-object p3, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->$qrList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    iget-object v2, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->$bytes:[B

    iget-object v3, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->$qrList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;-><init>(Lcom/liber8tech/tago/android/activity/AttachmentActivity;[BLjava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 91
    iget v0, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->label:I

    if-nez v0, :cond_2

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 92
    new-instance p1, Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/shockwave/pdfium/PdfiumCore;-><init>(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->$bytes:[B

    invoke-virtual {p1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument([B)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 95
    :goto_0
    invoke-virtual {p1, v8}, Lcom/shockwave/pdfium/PdfiumCore;->getPageCount(Lcom/shockwave/pdfium/PdfDocument;)I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 96
    invoke-virtual {p1, v8, v9}, Lcom/shockwave/pdfium/PdfiumCore;->openPage(Lcom/shockwave/pdfium/PdfDocument;I)J

    .line 97
    invoke-virtual {p1, v8, v9}, Lcom/shockwave/pdfium/PdfiumCore;->getPageWidth(Lcom/shockwave/pdfium/PdfDocument;I)I

    move-result v6

    .line 98
    invoke-virtual {p1, v8, v9}, Lcom/shockwave/pdfium/PdfiumCore;->getPageHeight(Lcom/shockwave/pdfium/PdfDocument;I)I

    move-result v7

    .line 99
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v8

    move-object v2, v10

    move v3, v9

    .line 100
    invoke-virtual/range {v0 .. v7}, Lcom/shockwave/pdfium/PdfiumCore;->renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIII)V

    .line 101
    new-instance v0, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->$qrList:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    .line 103
    new-instance v2, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    iget-object v3, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v0

    const-string v2, "BarcodeDetector.Builder(\u2026                        )"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v2, Lorg/jetbrains/anko/collections/SparseArraySequence;

    invoke-direct {v2, v0}, Lorg/jetbrains/anko/collections/SparseArraySequence;-><init>(Landroid/util/SparseArray;)V

    check-cast v2, Lkotlin/sequences/Sequence;

    .line 102
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    new-instance v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;-><init>(Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/activity/AttachmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 91
    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 140
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
