.class public final Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;
.super Ljava/lang/Object;
.source "SelectTagoActivityUI.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/activity/SelectTagoActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectTagoActivityUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectTagoActivityUI.kt\ncom/liber8tech/tago/android/ui/SelectTagoActivityUI\n+ 2 Views.kt\norg/jetbrains/anko/Sdk15ViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 CustomViews.kt\norg/jetbrains/anko/CustomViewsKt\n+ 5 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n+ 6 Views.kt\norg/jetbrains/anko/recyclerview/v7/RecyclerviewV7ViewsKt\n+ 7 Layouts.kt\norg/jetbrains/anko/_LinearLayout\n+ 8 ViewDSL.kt\ncom/liber8tech/tago/android/view/ViewDSLKt\n+ 9 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n+ 10 Layouts.kt\norg/jetbrains/anko/_FrameLayout\n*L\n1#1,86:1\n1328#2:87\n665#2:113\n137#2:149\n28#3,3:88\n28#3,3:93\n28#3,5:100\n28#3,5:114\n52#3:131\n28#3,3:132\n31#3,2:137\n31#3,2:139\n28#3,3:150\n31#3,2:155\n31#3,2:165\n46#4,2:91\n62#5:96\n62#5:97\n62#5:98\n62#5:125\n62#5:126\n21#6:99\n786#7,8:105\n786#7,6:119\n792#7,2:127\n11#8:129\n11#8:130\n164#9,2:135\n200#9,2:153\n219#10,8:141\n219#10,8:157\n*E\n*S KotlinDebug\n*F\n+ 1 SelectTagoActivityUI.kt\ncom/liber8tech/tago/android/ui/SelectTagoActivityUI\n*L\n44#1:87\n44#1:113\n44#1:149\n44#1,3:88\n44#1,3:93\n44#1,5:100\n44#1,5:114\n44#1:131\n44#1,3:132\n44#1,2:137\n44#1,2:139\n44#1,3:150\n44#1,2:155\n44#1,2:165\n44#1,2:91\n44#1:96\n44#1:97\n44#1:98\n44#1:125\n44#1:126\n44#1:99\n44#1,8:105\n44#1,6:119\n44#1,2:127\n44#1:129\n44#1:130\n44#1,2:135\n44#1,2:153\n44#1,8:141\n44#1,8:157\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u001b\u001a\u00020\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001eH\u0016J\u000e\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!J\u0014\u0010\"\u001a\u00020\u00062\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00050$J\u0014\u0010%\u001a\u00020\u00062\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00050$R&\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00060\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\u0007R$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/activity/SelectTagoActivity;",
        "onDeviceClick",
        "Lkotlin/Function1;",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "cancelOnClick",
        "Landroid/view/View;",
        "getCancelOnClick",
        "()Lkotlin/jvm/functions/Function1;",
        "setCancelOnClick",
        "value",
        "",
        "dim",
        "getDim",
        "()Z",
        "setDim",
        "(Z)V",
        "dimView",
        "image",
        "Landroid/widget/ImageView;",
        "recyclerView",
        "Landroid/support/v7/widget/RecyclerView;",
        "tagoAdapter",
        "Lcom/liber8tech/tago/android/adapter/TagoAdapter;",
        "createView",
        "Landroid/widget/FrameLayout;",
        "ui",
        "Lorg/jetbrains/anko/AnkoContext;",
        "setImage",
        "path",
        "",
        "setNearByDevices",
        "devices",
        "",
        "setOwnDevices",
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
.field private cancelOnClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dim:Z

.field private dimView:Landroid/view/View;

.field private image:Landroid/widget/ImageView;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final tagoAdapter:Lcom/liber8tech/tago/android/adapter/TagoAdapter;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onDeviceClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI$cancelOnClick$1;->INSTANCE:Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI$cancelOnClick$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->cancelOnClick:Lkotlin/jvm/functions/Function1;

    .line 34
    new-instance v0, Lcom/liber8tech/tago/android/adapter/TagoAdapter;

    invoke-direct {v0, p1}, Lcom/liber8tech/tago/android/adapter/TagoAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->tagoAdapter:Lcom/liber8tech/tago/android/adapter/TagoAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;
    .locals 12
    .param p1    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Lcom/liber8tech/tago/android/activity/SelectTagoActivity;",
            ">;)",
            "Landroid/widget/FrameLayout;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    move-object v0, p1

    check-cast v0, Landroid/view/ViewManager;

    .line 87
    sget-object v1, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;

    invoke-virtual {v1}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->getFRAME_LAYOUT()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 88
    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v3, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v3, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    .line 89
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 90
    move-object v2, v1

    check-cast v2, Lorg/jetbrains/anko/_FrameLayout;

    .line 46
    check-cast v2, Landroid/view/ViewManager;

    .line 92
    sget-object v3, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    invoke-virtual {v3}, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->getVERTICAL_LAYOUT_FACTORY()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 93
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v5

    .line 94
    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 95
    move-object v5, v3

    check-cast v5, Lorg/jetbrains/anko/_LinearLayout;

    .line 47
    move-object v6, v5

    check-cast v6, Landroid/view/View;

    .line 96
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x18

    invoke-static {v7, v8}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v7

    .line 97
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v8}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v9

    .line 98
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "context"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v8}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v8

    .line 47
    invoke-virtual {v5, v7, v4, v9, v8}, Lorg/jetbrains/anko/_LinearLayout;->setPadding(IIII)V

    .line 48
    check-cast v5, Landroid/view/ViewManager;

    .line 99
    sget-object v7, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;->INSTANCE:Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;

    invoke-virtual {v7}, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;->getRECYCLER_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    .line 100
    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v9, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v9, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v8

    .line 101
    invoke-interface {v7, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 102
    move-object v8, v7

    check-cast v8, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;

    .line 49
    new-instance v9, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v9, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8, v9}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v9, 0x1

    .line 50
    invoke-virtual {v8, v9}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->setHasFixedSize(Z)V

    .line 51
    iget-object v9, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->tagoAdapter:Lcom/liber8tech/tago/android/adapter/TagoAdapter;

    check-cast v9, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v8, v9}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 103
    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v8, v5, v7}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 104
    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    check-cast v7, Landroid/view/View;

    .line 109
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v10

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 54
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v10, 0x3f000000    # 0.5f

    .line 55
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 111
    check-cast v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    iput-object v7, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 113
    sget-object v7, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v7}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getIMAGE_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    .line 114
    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v10, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v8

    .line 115
    invoke-interface {v7, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 116
    move-object v8, v7

    check-cast v8, Landroid/widget/ImageView;

    .line 117
    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v10, v5, v7}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 118
    check-cast v8, Landroid/view/View;

    .line 123
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "context"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x3e

    invoke-static {v10, v11}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v10

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 60
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v10

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 126
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v10, "context"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x14

    invoke-static {v6, v10}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v6

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 127
    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->image:Landroid/widget/ImageView;

    .line 132
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v7, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v6

    .line 131
    const-class v7, Lcom/liber8tech/tago/android/view/TagoButton;

    invoke-static {v6, v7}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/liber8tech/tago/android/view/TagoButton;

    const v8, 0x7f0f0052

    .line 64
    invoke-virtual {v7, v8}, Lcom/liber8tech/tago/android/view/TagoButton;->setText(I)V

    .line 65
    move-object v8, v7

    check-cast v8, Landroid/view/View;

    new-instance v10, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI$createView$$inlined$with$lambda$1;

    invoke-direct {v10, v7, p1, p0}, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI$createView$$inlined$with$lambda$1;-><init>(Lcom/liber8tech/tago/android/view/TagoButton;Lorg/jetbrains/anko/AnkoContext;Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 135
    new-instance p1, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {p1, v10}, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v8, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    sget-object p1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p1, v5, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 139
    sget-object p1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p1, v2, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 140
    check-cast v3, Landroid/widget/LinearLayout;

    check-cast v3, Landroid/view/View;

    .line 145
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 70
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v5

    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 71
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v5

    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 147
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    sget-object p1, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {p1}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getVIEW()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 150
    sget-object v3, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    .line 151
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string v3, "#BE000000"

    .line 74
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v3}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    const/16 v3, 0x8

    .line 75
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    sget-object v3, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI$createView$1$root$1$3$1;->INSTANCE:Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI$createView$1$root$1$3$1;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 153
    new-instance v4, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI$inlined$sam$i$android_view_View_OnTouchListener$0;

    invoke-direct {v4, v3}, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI$inlined$sam$i$android_view_View_OnTouchListener$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    sget-object v3, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v3, v2, p1}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 161
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 79
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 163
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->dimView:Landroid/view/View;

    .line 165
    sget-object p1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p1, v0, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 166
    check-cast v1, Landroid/widget/FrameLayout;

    .line 82
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v0

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v2

    invoke-direct {p1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public final getCancelOnClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->cancelOnClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getDim()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->dim:Z

    return v0
.end method

.method public final setCancelOnClick(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->cancelOnClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setDim(Z)V
    .locals 2

    .line 30
    iput-boolean p1, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->dim:Z

    .line 31
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->dimView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "dimView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setImage(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->image:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/liber8tech/tago/PicassoExtensionsKt;->loadUrl(Landroid/view/View;Ljava/lang/String;)Lcom/liber8tech/tago/PicassoRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/PicassoRequest;->centerCrop()Lcom/liber8tech/tago/PicassoRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/PicassoRequest;->start()V

    return-void
.end method

.method public final setNearByDevices(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;)V"
        }
    .end annotation

    const-string v0, "devices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->tagoAdapter:Lcom/liber8tech/tago/android/adapter/TagoAdapter;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/adapter/TagoAdapter;->setNearByDevices(Ljava/util/List;)V

    return-void
.end method

.method public final setOwnDevices(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;)V"
        }
    .end annotation

    const-string v0, "devices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->tagoAdapter:Lcom/liber8tech/tago/android/adapter/TagoAdapter;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/adapter/TagoAdapter;->setOwnDevices(Ljava/util/List;)V

    return-void
.end method
