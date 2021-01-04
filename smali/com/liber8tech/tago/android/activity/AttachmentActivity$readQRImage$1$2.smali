.class final Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;
.super Ljava/lang/Object;
.source "AttachmentActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttachmentActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttachmentActivity.kt\ncom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,156:1\n75#2:157\n220#3,2:158\n*E\n*S KotlinDebug\n*F\n+ 1 AttachmentActivity.kt\ncom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2\n*L\n115#1:157\n120#1,2:158\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->$qrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    iget-object v1, v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    const v2, 0x7f0f008e

    const v3, 0x7f0f00a6

    .line 115
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    const v4, 0x1020002

    .line 157
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v0, "findViewById(id)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$1;-><init>(Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, -0x2

    .line 112
    invoke-static/range {v1 .. v6}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->tintedSnack(Landroid/content/Context;IILandroid/view/View;Lkotlin/jvm/functions/Function1;I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->$qrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/AttachmentActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/AttachmentActivity;)Lcom/liber8tech/tago/android/ui/AttachmentActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/ui/AttachmentActivityUI;->getMorePages()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 158
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->$qrList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 122
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    iget-object v1, v1, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/activity/AttachmentActivity;->getImageEditorService()Lcom/liber8tech/tago/service/ImageEditorService;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    const-string v2, "barcode.rawValue"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/liber8tech/tago/service/ImageEditorService;->uploadQrCodeImage(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->asyncIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$2;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$2;-><init>(Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 127
    new-instance v2, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$3;

    invoke-direct {v2, p0}, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$3;-><init>(Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 124
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    iget-object v1, v1, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/activity/AttachmentActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :goto_0
    return-void
.end method
