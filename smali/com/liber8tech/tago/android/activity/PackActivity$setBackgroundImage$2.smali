.class final Lcom/liber8tech/tago/android/activity/PackActivity$setBackgroundImage$2;
.super Ljava/lang/Object;
.source "PackActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/PackActivity;->setBackgroundImage(Ljava/lang/String;)V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
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
        "bitmap",
        "Landroid/graphics/Bitmap;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/PackActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/PackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity$setBackgroundImage$2;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity$setBackgroundImage$2;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/PackActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/PackActivity;)Lcom/liber8tech/tago/android/activity/PackActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/PackActivityUI;->getPatternsImage()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/liber8tech/tago/android/drawable/PackPreview;

    iget-object v2, p0, Lcom/liber8tech/tago/android/activity/PackActivity$setBackgroundImage$2;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, p1, v2}, Lcom/liber8tech/tago/android/drawable/PackPreview;-><init>(Landroid/graphics/Bitmap;Landroid/app/Activity;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/PackActivity$setBackgroundImage$2;->accept(Landroid/graphics/Bitmap;)V

    return-void
.end method
