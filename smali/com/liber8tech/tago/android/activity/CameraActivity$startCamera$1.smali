.class final Lcom/liber8tech/tago/android/activity/CameraActivity$startCamera$1;
.super Ljava/lang/Object;
.source "CameraActivity.kt"

# interfaces
.implements Lcom/liber8tech/tago/android/camera/CameraRenderer$OnCameraReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/CameraActivity;->startCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "onCameraReady"
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

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$startCamera$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraReady()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$startCamera$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getCameraRenderer$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/camera/CameraRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/camera/CameraRenderer;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$startCamera$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    :cond_2
    invoke-static {v1, v3, v2}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$updateTextureViewSize(Lcom/liber8tech/tago/android/activity/CameraActivity;II)V

    return-void
.end method
