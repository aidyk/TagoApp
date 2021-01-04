.class final Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$2;
.super Ljava/lang/Object;
.source "ImageEditorActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->invoke(Landroid/view/View;)V
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
    value = "SMAP\nImageEditorActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageEditorActivity.kt\ncom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,163:1\n262#2,2:164\n*E\n*S KotlinDebug\n*F\n+ 1 ImageEditorActivity.kt\ncom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$2\n*L\n58#1,2:164\n*E\n"
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getUseButton()Lcom/liber8tech/tago/android/view/TagoButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/view/TagoButton;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getEditorView()Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/liber8tech/tago/util/AuthValidationKt;->showError(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 62
    invoke-static {p1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;)V

    return-void
.end method
