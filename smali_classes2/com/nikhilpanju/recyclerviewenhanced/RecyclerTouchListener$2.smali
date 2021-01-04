.class Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;


# direct methods
.method constructor <init>(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$2;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .line 127
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$2;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->setEnabled(Z)V

    .line 132
    iget-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$2;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {p1, v0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->access$402(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;Z)Z

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method
