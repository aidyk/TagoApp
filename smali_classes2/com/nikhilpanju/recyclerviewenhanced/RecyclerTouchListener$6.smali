.class Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$6;
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

.field final synthetic val$downPosition:I

.field final synthetic val$optionID:I


# direct methods
.method constructor <init>(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;II)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$6;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    iput p2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$6;->val$optionID:I

    iput p3, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$6;->val$downPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeOptionsClosed()V
    .locals 3

    .line 749
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$6;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    invoke-static {v0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->access$700(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeOptionsClickListener;

    move-result-object v0

    iget v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$6;->val$optionID:I

    iget v2, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$6;->val$downPosition:I

    invoke-interface {v0, v1, v2}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeOptionsClickListener;->onSwipeOptionClicked(II)V

    return-void
.end method

.method public onSwipeOptionsOpened()V
    .locals 0

    return-void
.end method
