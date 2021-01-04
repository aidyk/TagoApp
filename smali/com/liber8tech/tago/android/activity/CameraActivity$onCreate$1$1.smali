.class final Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;
.super Ljava/lang/Object;
.source "CameraActivity.kt"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->invoke(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraActivity.kt\ncom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1\n*L\n1#1,203:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "bytes",
        "",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "Landroid/hardware/Camera;",
        "onPictureTaken"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    .line 60
    iget-object p2, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;

    iget-object p2, p2, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-virtual {p2}, Lcom/liber8tech/tago/android/activity/CameraActivity;->getImageEditorService()Lcom/liber8tech/tago/service/ImageEditorService;

    move-result-object p2

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getCameraRenderer$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/camera/CameraRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/camera/CameraRenderer;->getRotationAngle()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;

    iget-object v1, v1, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {v1}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivityUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/activity/CameraActivityUI;->getRootLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;

    iget-object v2, v2, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {v2}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivityUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liber8tech/tago/android/activity/CameraActivityUI;->getRootLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/liber8tech/tago/service/ImageEditorService;->setCameraImage([BIII)Lio/reactivex/Observable;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->asyncIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$1;

    invoke-direct {p2, p0}, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$1;-><init>(Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    .line 65
    new-instance v0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$2;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$2;-><init>(Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 62
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;

    iget-object p2, p2, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-virtual {p2}, Lcom/liber8tech/tago/android/activity/CameraActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
