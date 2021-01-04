.class public final Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/PicassoRequest;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnPreDraw$1\n+ 2 PicassoExtensions.kt\ncom/liber8tech/tago/PicassoRequest\n*L\n1#1,289:1\n43#2,4:290\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnPreDraw$1",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "(Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroid/view/ViewTreeObserver;)V",
        "onPreDraw",
        "",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $vto:Landroid/view/ViewTreeObserver;

.field final synthetic receiver$0:Landroid/view/View;

.field final synthetic this$0:Lcom/liber8tech/tago/PicassoRequest;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Lcom/liber8tech/tago/PicassoRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;->receiver$0:Landroid/view/View;

    iput-object p2, p0, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;->$vto:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;->this$0:Lcom/liber8tech/tago/PicassoRequest;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;->receiver$0:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;->this$0:Lcom/liber8tech/tago/PicassoRequest;

    iget-object v1, p0, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;->this$0:Lcom/liber8tech/tago/PicassoRequest;

    invoke-virtual {v1}, Lcom/liber8tech/tago/PicassoRequest;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/liber8tech/tago/PicassoRequest;->access$setWidth$p(Lcom/liber8tech/tago/PicassoRequest;I)V

    .line 291
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;->this$0:Lcom/liber8tech/tago/PicassoRequest;

    iget-object v1, p0, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;->this$0:Lcom/liber8tech/tago/PicassoRequest;

    invoke-virtual {v1}, Lcom/liber8tech/tago/PicassoRequest;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/liber8tech/tago/PicassoRequest;->access$setHeight$p(Lcom/liber8tech/tago/PicassoRequest;I)V

    .line 292
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;->this$0:Lcom/liber8tech/tago/PicassoRequest;

    invoke-static {v0}, Lcom/liber8tech/tago/PicassoRequest;->access$storeSizeAndStartDownload(Lcom/liber8tech/tago/PicassoRequest;)V

    .line 82
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;->$vto:Landroid/view/ViewTreeObserver;

    const-string/jumbo v1, "vto"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;->$vto:Landroid/view/ViewTreeObserver;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/PicassoRequest$start$$inlined$doOnPreDraw$1;->receiver$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
