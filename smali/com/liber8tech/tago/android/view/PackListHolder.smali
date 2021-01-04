.class public final Lcom/liber8tech/tago/android/view/PackListHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PackListView.kt"


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
        "Lcom/liber8tech/tago/android/view/PackListHolder;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "view",
        "Lcom/liber8tech/tago/android/view/PackListView;",
        "(Lcom/liber8tech/tago/android/view/PackListView;)V",
        "getView",
        "()Lcom/liber8tech/tago/android/view/PackListView;",
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
.field private final view:Lcom/liber8tech/tago/android/view/PackListView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/android/view/PackListView;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/android/view/PackListView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/PackListHolder;->view:Lcom/liber8tech/tago/android/view/PackListView;

    return-void
.end method


# virtual methods
.method public final getView()Lcom/liber8tech/tago/android/view/PackListView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/PackListHolder;->view:Lcom/liber8tech/tago/android/view/PackListView;

    return-object v0
.end method
