.class final Lcom/liber8tech/tago/android/activity/StoreActivityUI;
.super Ljava/lang/Object;
.source "StoreActivity.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/activity/StoreActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoreActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoreActivity.kt\ncom/liber8tech/tago/android/activity/StoreActivityUI\n+ 2 CustomViews.kt\norg/jetbrains/anko/CustomViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 Views.kt\norg/jetbrains/anko/recyclerview/v7/RecyclerviewV7ViewsKt\n+ 5 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n+ 6 CustomViewProperties.kt\norg/jetbrains/anko/CustomViewPropertiesKt\n*L\n1#1,134:1\n46#2,2:135\n28#3,3:137\n28#3,3:141\n31#3,2:146\n31#3,2:148\n21#4:140\n62#5:144\n74#6:145\n*E\n*S KotlinDebug\n*F\n+ 1 StoreActivity.kt\ncom/liber8tech/tago/android/activity/StoreActivityUI\n*L\n115#1,2:135\n115#1,3:137\n115#1,3:141\n115#1,2:146\n115#1,2:148\n115#1:140\n115#1:144\n115#1:145\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/StoreActivityUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/activity/StoreActivity;",
        "()V",
        "rowList",
        "Landroid/support/v7/widget/RecyclerView;",
        "getRowList",
        "()Landroid/support/v7/widget/RecyclerView;",
        "setRowList",
        "(Landroid/support/v7/widget/RecyclerView;)V",
        "createView",
        "Landroid/widget/LinearLayout;",
        "ui",
        "Lorg/jetbrains/anko/AnkoContext;",
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
.field public rowList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/StoreActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;
    .locals 7
    .param p1    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Lcom/liber8tech/tago/android/activity/StoreActivity;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    check-cast p1, Landroid/view/ViewManager;

    .line 136
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    invoke-virtual {v0}, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->getVERTICAL_LAYOUT_FACTORY()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 137
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v2, p1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    .line 138
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 139
    move-object v1, v0

    check-cast v1, Lorg/jetbrains/anko/_LinearLayout;

    .line 117
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1}, Lorg/jetbrains/anko/_LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f050020

    invoke-static {v4, v5}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v2, v4}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    .line 118
    check-cast v1, Landroid/view/ViewManager;

    .line 140
    sget-object v2, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;->INSTANCE:Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;

    invoke-virtual {v2}, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;->getRECYCLER_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 141
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    .line 142
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 143
    move-object v3, v2

    check-cast v3, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;

    .line 119
    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v4}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v4, 0x1

    .line 120
    invoke-virtual {v3, v4}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->setHasFixedSize(Z)V

    .line 121
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "context"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v4, v3}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    .line 144
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "context"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0xc

    invoke-static {v3, v5}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v3

    .line 145
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    sget-object v3, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v3, v1, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 147
    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/liber8tech/tago/android/activity/StoreActivityUI;->rowList:Landroid/support/v7/widget/RecyclerView;

    .line 148
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, p1, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 149
    check-cast v0, Landroid/widget/LinearLayout;

    .line 125
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v1

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getRowList()Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/StoreActivityUI;->rowList:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "rowList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setRowList(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivityUI;->rowList:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
