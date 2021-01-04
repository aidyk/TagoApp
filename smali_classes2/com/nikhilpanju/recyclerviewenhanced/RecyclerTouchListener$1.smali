.class Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;
.super Ljava/lang/Object;
.source "RecyclerTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;
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

    .line 79
    iput-object p1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    invoke-static {v0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->access$000(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->access$102(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;Z)Z

    .line 86
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    invoke-static {v0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->access$200(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    invoke-static {v0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->access$300(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    iget-object v0, v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->unClickableRows:Ljava/util/List;

    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    invoke-static {v1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->access$300(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    invoke-static {v0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->access$400(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    invoke-static {v0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->access$500(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    iget-object v0, v0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->act:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    invoke-static {v0}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->access$600(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$1;->this$0:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    invoke-static {v1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;->access$300(Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowLongClickListener;->onRowLongClicked(I)V

    :cond_2
    return-void
.end method
