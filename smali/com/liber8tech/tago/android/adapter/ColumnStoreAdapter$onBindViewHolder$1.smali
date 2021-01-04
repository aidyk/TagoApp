.class final Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter$onBindViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ColumnStoreAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumnStoreAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumnStoreAdapter.kt\ncom/liber8tech/tago/android/adapter/ColumnStoreAdapter$onBindViewHolder$1\n+ 2 Intents.kt\norg/jetbrains/anko/IntentsKt\n*L\n1#1,38:1\n31#2:39\n*E\n*S KotlinDebug\n*F\n+ 1 ColumnStoreAdapter.kt\ncom/liber8tech/tago/android/adapter/ColumnStoreAdapter$onBindViewHolder$1\n*L\n34#1:39\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter$onBindViewHolder$1;->this$0:Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;

    iput-object p2, p0, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter$onBindViewHolder$1;->$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter$onBindViewHolder$1;->$position:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter$onBindViewHolder$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 34
    iget-object p1, p0, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter$onBindViewHolder$1;->$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/liber8tech/tago/android/view/PackItemViewHolder;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/view/PackItemViewHolder;->getView()Lcom/liber8tech/tago/android/view/PackItemView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/view/PackItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "holder.view.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "Current_pack"

    iget-object v3, p0, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter$onBindViewHolder$1;->this$0:Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;

    invoke-static {v3}, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;->access$getPacksList$p(Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter$onBindViewHolder$1;->$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 39
    const-class v1, Lcom/liber8tech/tago/android/activity/PackActivity;

    invoke-static {p1, v1, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->internalStartActivity(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)V

    return-void
.end method
