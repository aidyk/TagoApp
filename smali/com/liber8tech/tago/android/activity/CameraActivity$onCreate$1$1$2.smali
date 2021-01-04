.class final Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$2;
.super Ljava/lang/Object;
.source "CameraActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraActivity.kt\ncom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,203:1\n262#2,2:204\n262#2,2:206\n*E\n*S KotlinDebug\n*F\n+ 1 CameraActivity.kt\ncom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$2\n*L\n66#1,2:204\n67#1,2:206\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$2;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$2;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/CameraActivityUI;->getPreviewImageView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$2;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/CameraActivityUI;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$2;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/CameraActivityUI;->getShutterButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 69
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    return-void
.end method
