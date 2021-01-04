.class final Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageEditorActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageEditorActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageEditorActivity.kt\ncom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,163:1\n220#2,2:164\n*E\n*S KotlinDebug\n*F\n+ 1 ImageEditorActivity.kt\ncom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2\n*L\n44#1,2:164\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 44
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getUseButton()Lcom/liber8tech/tago/android/view/TagoButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/view/TagoButton;->setEnabled(Z)V

    .line 46
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getEditorView()Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 47
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getTargetAreaView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 49
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getRootLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-static {v1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getTargetAreaView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 50
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getEditorView()Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceCoord(FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 51
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getEditorView()Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceCoord(FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 53
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->getImageEditorService()Lcom/liber8tech/tago/service/ImageEditorService;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/liber8tech/tago/service/ImageEditorService;->uploadImage$default(Lcom/liber8tech/tago/service/ImageEditorService;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Bitmap;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->asyncIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 55
    new-instance v0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$1;-><init>(Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 57
    new-instance v1, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$2;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$2;-><init>(Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 55
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
