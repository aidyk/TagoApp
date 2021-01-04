.class public final Lcom/liber8tech/tago/android/view/PackItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PackItemView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/view/PackItemViewHolder;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "view",
        "Lcom/liber8tech/tago/android/view/PackItemView;",
        "(Lcom/liber8tech/tago/android/view/PackItemView;)V",
        "getView",
        "()Lcom/liber8tech/tago/android/view/PackItemView;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final view:Lcom/liber8tech/tago/android/view/PackItemView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/android/view/PackItemView;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/android/view/PackItemView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/PackItemViewHolder;->view:Lcom/liber8tech/tago/android/view/PackItemView;

    return-void
.end method


# virtual methods
.method public final getView()Lcom/liber8tech/tago/android/view/PackItemView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/PackItemViewHolder;->view:Lcom/liber8tech/tago/android/view/PackItemView;

    return-object v0
.end method
