.class public final Lcom/liber8tech/tago/android/activity/MainActivityUI$createView$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0007"
    }
    d2 = {
        "com/liber8tech/tago/android/activity/MainActivityUI$createView$1$1$1$2$1",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "onPreDraw",
        "",
        "app_release",
        "com/liber8tech/tago/android/activity/MainActivityUI$$special$$inlined$recyclerView$lambda$1",
        "com/liber8tech/tago/android/activity/MainActivityUI$$special$$inlined$verticalLayout$lambda$1",
        "com/liber8tech/tago/android/activity/MainActivityUI$$special$$inlined$frameLayout$lambda$4"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $this_recyclerView:Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;

.field final synthetic $this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;


# direct methods
.method constructor <init>(Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;Lorg/jetbrains/anko/AnkoContext;Lcom/liber8tech/tago/android/activity/MainActivityUI;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$createView$$inlined$with$lambda$1;->$this_recyclerView:Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$createView$$inlined$with$lambda$1;->$this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

    iput-object p3, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$createView$$inlined$with$lambda$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$createView$$inlined$with$lambda$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/MainActivityUI;->access$getList$p(Lcom/liber8tech/tago/android/activity/MainActivityUI;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 411
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$createView$$inlined$with$lambda$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$createView$$inlined$with$lambda$1;->$this_recyclerView:Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;

    invoke-virtual {v1}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/liber8tech/tago/android/activity/MainActivityUI;->access$setScreenHeight$p(Lcom/liber8tech/tago/android/activity/MainActivityUI;I)V

    const/4 v0, 0x1

    return v0
.end method
