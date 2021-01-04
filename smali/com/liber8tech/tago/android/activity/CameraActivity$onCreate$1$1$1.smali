.class final Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$1;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraActivity.kt\ncom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Intents.kt\norg/jetbrains/anko/IntentsKt\n*L\n1#1,203:1\n262#2,2:204\n31#3:206\n*E\n*S KotlinDebug\n*F\n+ 1 CameraActivity.kt\ncom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$1\n*L\n63#1,2:204\n64#1:206\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "kotlin.jvm.PlatformType",
        "accept",
        "(Lkotlin/Unit;)V"
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

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$1;->accept(Lkotlin/Unit;)V

    return-void
.end method

.method public final accept(Lkotlin/Unit;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/CameraActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/CameraActivityUI;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/CameraActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/CameraActivity;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    .line 206
    const-class v1, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-static {p1, v1, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->internalStartActivity(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)V

    return-void
.end method
