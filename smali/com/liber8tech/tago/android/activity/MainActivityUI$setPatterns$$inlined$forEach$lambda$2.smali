.class final Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnSwipeOptionsClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivityUI;->setPatterns(Landroid/app/Activity;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$1$2$2$1\n*L\n1#1,625:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0005\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "viewID",
        "",
        "position",
        "onSwipeOptionClicked",
        "com/liber8tech/tago/android/activity/MainActivityUI$setPatterns$1$2$2$1",
        "com/liber8tech/tago/android/activity/MainActivityUI$$special$$inlined$let$lambda$1",
        "com/liber8tech/tago/android/activity/MainActivityUI$$special$$inlined$apply$lambda$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $activity$inlined:Landroid/app/Activity;

.field final synthetic $it:Lkotlin/jvm/functions/Function1;

.field final synthetic $onDeleteClicked$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $onItemClick$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $this_apply$inlined:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;Lcom/liber8tech/tago/android/activity/MainActivityUI;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$2;->$it:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$2;->$this_apply$inlined:Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener;

    iput-object p3, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$2;->this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;

    iput-object p4, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$2;->$activity$inlined:Landroid/app/Activity;

    iput-object p5, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$2;->$onItemClick$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$2;->$onDeleteClicked$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwipeOptionClicked(II)V
    .locals 2

    .line 522
    sget-object v0, Lcom/liber8tech/tago/android/view/PatternItemView;->Companion:Lcom/liber8tech/tago/android/view/PatternItemView$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/view/PatternItemView$Companion;->getDeleteButtonId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 523
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$2;->this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/MainActivityUI;->access$getList$p(Lcom/liber8tech/tago/android/activity/MainActivityUI;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$2;->$it:Lkotlin/jvm/functions/Function1;

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$2;->this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/MainActivityUI;->access$getList$p(Lcom/liber8tech/tago/android/activity/MainActivityUI;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/liber8tech/tago/android/adapter/PatternAdapter;

    invoke-virtual {p1, p2}, Lcom/liber8tech/tago/android/adapter/PatternAdapter;->deleteItem(I)V

    .line 527
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$2;->this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/MainActivityUI;->access$getList$p(Lcom/liber8tech/tago/android/activity/MainActivityUI;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 526
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.liber8tech.tago.android.adapter.PatternAdapter"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
