.class Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;
.super Ljava/lang/Object;
.source "RecyclerTouchListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->animateFG(Landroid/view/View;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;JLcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

.field final synthetic val$animateType:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

.field final synthetic val$mSwipeCloseListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;

.field final synthetic val$translateAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    iput-object p2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;->val$mSwipeCloseListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;

    iput-object p3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;->val$animateType:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    iput-object p4, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;->val$translateAnimator:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 448
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;->val$mSwipeCloseListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;

    if-eqz p1, :cond_1

    .line 449
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;->val$animateType:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->OPEN:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    if-ne p1, v0, :cond_0

    .line 450
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;->val$mSwipeCloseListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;

    invoke-interface {p1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;->onSwipeOptionsOpened()V

    goto :goto_0

    .line 451
    :cond_0
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;->val$animateType:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    sget-object v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;->CLOSE:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$Animation;

    if-ne p1, v0, :cond_1

    .line 452
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;->val$mSwipeCloseListener:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;

    invoke-interface {p1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeListener;->onSwipeOptionsClosed()V

    .line 454
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$4;->val$translateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
