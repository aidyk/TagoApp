.class Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$5;
.super Ljava/lang/Object;
.source "RecyclerTouchListener.java"

# interfaces
.implements Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->handleTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

.field final synthetic val$tempBgView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;Landroid/view/View;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$5;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    iput-object p2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$5;->val$tempBgView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeOptionsClosed()V
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$5;->val$tempBgView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$5;->val$tempBgView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onSwipeOptionsOpened()V
    .locals 0

    return-void
.end method
