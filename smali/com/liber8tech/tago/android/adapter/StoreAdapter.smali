.class public final Lcom/liber8tech/tago/android/adapter/StoreAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "StoreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoreAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoreAdapter.kt\ncom/liber8tech/tago/android/adapter/StoreAdapter\n*L\n1#1,41:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00040\u0004\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\nH\u0016J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\nH\u0016R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/adapter/StoreAdapter;",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "titleList",
        "",
        "Lcom/liber8tech/tago/model/Category;",
        "packsList",
        "Lcom/liber8tech/tago/model/Pack;",
        "(Ljava/util/List;Ljava/util/List;)V",
        "getItemCount",
        "",
        "getItemViewType",
        "position",
        "onBindViewHolder",
        "",
        "holder",
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
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/Pack;",
            ">;>;"
        }
    .end annotation
.end field

.field private final titleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/Category;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/model/Pack;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "titleList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/android/adapter/StoreAdapter;->titleList:Ljava/util/List;

    iput-object p2, p0, Lcom/liber8tech/tago/android/adapter/StoreAdapter;->packsList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/liber8tech/tago/android/adapter/StoreAdapter;->titleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/liber8tech/tago/android/adapter/StoreAdapter;->getItemViewType(I)I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/liber8tech/tago/android/adapter/StoreAdapter;->titleList:Ljava/util/List;

    div-int/lit8 v2, p2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liber8tech/tago/model/Category;

    .line 18
    iget-object v2, p0, Lcom/liber8tech/tago/android/adapter/StoreAdapter;->packsList:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liber8tech/tago/model/Pack;

    invoke-virtual {v4}, Lcom/liber8tech/tago/model/Pack;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/liber8tech/tago/model/Category;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/liber8tech/tago/android/adapter/StoreAdapter;->packsList:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    div-int/lit8 p2, p2, 0x2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/util/List;

    :goto_1
    if-eqz v0, :cond_3

    .line 21
    check-cast p1, Lcom/liber8tech/tago/android/view/PackListHolder;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/view/PackListHolder;->getView()Lcom/liber8tech/tago/android/view/PackListView;

    move-result-object p1

    new-instance p2, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;

    invoke-direct {p2, v3}, Lcom/liber8tech/tago/android/adapter/ColumnStoreAdapter;-><init>(Ljava/util/List;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Lcom/liber8tech/tago/android/view/PackListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_2

    .line 20
    :cond_3
    check-cast p1, Lcom/liber8tech/tago/android/view/HeaderHolder;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/view/HeaderHolder;->getView()Lcom/liber8tech/tago/android/view/HeaderView;

    move-result-object p1

    invoke-virtual {v1}, Lcom/liber8tech/tago/model/Category;->getName()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/liber8tech/tago/android/view/HeaderView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 31
    new-instance p2, Lcom/liber8tech/tago/android/view/PackListHolder;

    new-instance v0, Lcom/liber8tech/tago/android/view/PackListView;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/liber8tech/tago/android/view/PackListView;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/liber8tech/tago/android/view/PackListHolder;-><init>(Lcom/liber8tech/tago/android/view/PackListView;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 30
    :cond_0
    new-instance p2, Lcom/liber8tech/tago/android/view/HeaderHolder;

    new-instance v0, Lcom/liber8tech/tago/android/view/HeaderView;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/liber8tech/tago/android/view/HeaderView;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/liber8tech/tago/android/view/HeaderHolder;-><init>(Lcom/liber8tech/tago/android/view/HeaderView;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p2
.end method
