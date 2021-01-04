.class public final Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ColumnStoreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumnStoreAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumnStoreAdapter.kt\ncom/liber8tech/tago/android/adapter/ColumnStoreAdapter\n+ 2 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n+ 3 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n*L\n1#1,38:1\n62#2:39\n62#2:40\n62#2:41\n164#3,2:42\n*E\n*S KotlinDebug\n*F\n+ 1 ColumnStoreAdapter.kt\ncom/liber8tech/tago/android/adapter/ColumnStoreAdapter\n*L\n19#1:39\n19#1:40\n19#1:41\n34#1,2:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0008H\u0016J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0008H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "packsList",
        "",
        "Lcom/liber8tech/tago/model/Pack;",
        "(Ljava/util/List;)V",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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
.field private final packsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/Pack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/Pack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;->packsList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getPacksList$p(Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;)Ljava/util/List;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;->packsList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;->packsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;->packsList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/model/Pack;

    .line 30
    move-object v1, p1

    check-cast v1, Lcom/liber8tech/tago/android/view/PackItemViewHolder;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/view/PackItemViewHolder;->getView()Lcom/liber8tech/tago/android/view/PackItemView;

    move-result-object v2

    iget-object v3, p0, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;->packsList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liber8tech/tago/model/Pack;

    invoke-virtual {v3}, Lcom/liber8tech/tago/model/Pack;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liber8tech/tago/android/view/PackItemView;->setImage(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Lcom/liber8tech/tago/android/view/PackItemViewHolder;->getView()Lcom/liber8tech/tago/android/view/PackItemView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/liber8tech/tago/model/Pack;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liber8tech/tago/android/view/PackItemView;->setTitle(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Lcom/liber8tech/tago/android/view/PackItemViewHolder;->getView()Lcom/liber8tech/tago/android/view/PackItemView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/liber8tech/tago/model/Pack;->isBought()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/liber8tech/tago/android/view/PackItemView;->packOwned(Z)V

    .line 33
    invoke-virtual {v0}, Lcom/liber8tech/tago/model/Pack;->isBought()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {v1}, Lcom/liber8tech/tago/android/view/PackItemViewHolder;->getView()Lcom/liber8tech/tago/android/view/PackItemView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter$onBindViewHolder$1;-><init>(Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 42
    new-instance p1, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {p1, v1}, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance p2, Lcom/liber8tech/tago/android/view/PackItemView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/liber8tech/tago/android/view/PackItemView;-><init>(Landroid/content/Context;)V

    .line 20
    move-object p1, p2

    check-cast p1, Landroid/view/View;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v0

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xbe

    invoke-static {v1, v2}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v1

    .line 20
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 21
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-static {p1, v1}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result p1

    invoke-static {v0, p1}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->setMargin(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 20
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v2}, Lcom/liber8tech/tago/android/view/PackItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance p1, Lcom/liber8tech/tago/android/view/PackItemViewHolder;

    invoke-direct {p1, p2}, Lcom/liber8tech/tago/android/view/PackItemViewHolder;-><init>(Lcom/liber8tech/tago/android/view/PackItemView;)V

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method
