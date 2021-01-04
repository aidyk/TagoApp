.class public final Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivityUI;->setPatterns(Landroid/app/Activity;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$1$2$1\n*L\n1#1,625:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008\u00b8\u0006\t"
    }
    d2 = {
        "com/liber8tech/tago/android/activity/MainActivityUI$setPatterns$1$2$1",
        "Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowClickListener;",
        "onIndependentViewClicked",
        "",
        "independentViewID",
        "",
        "position",
        "onRowClicked",
        "app_release",
        "com/liber8tech/tago/android/activity/MainActivityUI$$special$$inlined$apply$lambda$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $activity$inlined:Landroid/app/Activity;

.field final synthetic $onDeleteClicked$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $onItemClick$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/MainActivityUI;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$1;->$activity$inlined:Landroid/app/Activity;

    iput-object p3, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$1;->$onItemClick$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$1;->$onDeleteClicked$inlined:Lkotlin/jvm/functions/Function1;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndependentViewClicked(II)V
    .locals 0

    return-void
.end method

.method public onRowClicked(I)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/MainActivityUI;->access$getList$p(Lcom/liber8tech/tago/android/activity/MainActivityUI;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/liber8tech/tago/android/adapter/PatternAdapter;->Companion:Lcom/liber8tech/tago/android/adapter/PatternAdapter$Companion;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/adapter/PatternAdapter$Companion;->getPatternType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivityUI;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/MainActivityUI;->access$getList$p(Lcom/liber8tech/tago/android/activity/MainActivityUI;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivityUI$setPatterns$$inlined$forEach$lambda$1;->$onItemClick$inlined:Lkotlin/jvm/functions/Function1;

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
