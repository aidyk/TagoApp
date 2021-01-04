.class final Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CameraActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/CameraActivity;->onCreate(Landroid/os/Bundle;)V
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
    value = "SMAP\nCameraActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraActivity.kt\ncom/liber8tech/tago/android/activity/CameraActivity$onCreate$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,203:1\n220#2,2:204\n220#2,2:206\n*E\n*S KotlinDebug\n*F\n+ 1 CameraActivity.kt\ncom/liber8tech/tago/android/activity/CameraActivity$onCreate$1\n*L\n55#1,2:204\n57#1,2:206\n*E\n"
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/CameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 55
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/CameraActivityUI;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/CameraActivityUI;->getPreviewImageView()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {v1}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivityUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/activity/CameraActivityUI;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/CameraActivityUI;->getPreviewImageView()Landroid/widget/ImageView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/CameraActivityUI;->getShutterButton()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 59
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getCameraRenderer$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/camera/CameraRenderer;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;-><init>(Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;)V

    check-cast v0, Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/camera/CameraRenderer;->takePicture(Landroid/hardware/Camera$PictureCallback;)V

    :cond_0
    return-void
.end method
