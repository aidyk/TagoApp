.class public final Lcom/liber8tech/tago/android/ui/KioskActivityUI;
.super Ljava/lang/Object;
.source "KioskActivityUI.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/activity/KioskActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKioskActivityUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KioskActivityUI.kt\ncom/liber8tech/tago/android/ui/KioskActivityUI\n+ 2 Views.kt\norg/jetbrains/anko/Sdk15ViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 CustomViews.kt\norg/jetbrains/anko/CustomViewsKt\n+ 5 Layouts.kt\norg/jetbrains/anko/_LinearLayout\n+ 6 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n+ 7 Views.kt\norg/jetbrains/anko/recyclerview/v7/RecyclerviewV7ViewsKt\n+ 8 Layouts.kt\norg/jetbrains/anko/_FrameLayout\n*L\n1#1,77:1\n1328#2:78\n901#2:87\n1041#2:102\n137#2:134\n28#3,3:79\n28#3,3:84\n28#3,5:88\n28#3,5:103\n28#3,5:116\n31#3,2:132\n28#3,5:135\n31#3,2:148\n46#4,2:82\n786#5,6:93\n792#5,2:100\n790#5,2:108\n792#5,2:113\n786#5,6:121\n792#5,2:130\n62#6:99\n62#6:110\n62#6:111\n62#6:112\n62#6:127\n62#6:128\n62#6:129\n21#7:115\n219#8,8:140\n*E\n*S KotlinDebug\n*F\n+ 1 KioskActivityUI.kt\ncom/liber8tech/tago/android/ui/KioskActivityUI\n*L\n34#1:78\n34#1:87\n34#1:102\n34#1:134\n34#1,3:79\n34#1,3:84\n34#1,5:88\n34#1,5:103\n34#1,5:116\n34#1,2:132\n34#1,5:135\n34#1,2:148\n34#1,2:82\n34#1,6:93\n34#1,2:100\n34#1,2:108\n34#1,2:113\n34#1,6:121\n34#1,2:130\n34#1:99\n34#1:110\n34#1:111\n34#1:112\n34#1:127\n34#1:128\n34#1:129\n34#1:115\n34#1,8:140\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001cH\u0016J\u0014\u0010\u001d\u001a\u00020\u00062\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001fR$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/liber8tech/tago/android/ui/KioskActivityUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/activity/KioskActivity;",
        "onDeviceClick",
        "Lkotlin/Function1;",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "value",
        "",
        "dim",
        "getDim",
        "()Z",
        "setDim",
        "(Z)V",
        "dimView",
        "Landroid/view/View;",
        "getDimView",
        "()Landroid/view/View;",
        "setDimView",
        "(Landroid/view/View;)V",
        "recyclerView",
        "Landroid/support/v7/widget/RecyclerView;",
        "tagoAdapter",
        "Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;",
        "createView",
        "Landroid/widget/FrameLayout;",
        "ui",
        "Lorg/jetbrains/anko/AnkoContext;",
        "setDevices",
        "devices",
        "",
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
.field private dim:Z

.field public dimView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final tagoAdapter:Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 2
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

    .line 24
    new-instance v0, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    iput-object v0, p0, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->tagoAdapter:Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;
    .locals 16
    .param p1    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Lcom/liber8tech/tago/android/activity/KioskActivity;",
            ">;)",
            "Landroid/widget/FrameLayout;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ui"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v2, v1

    check-cast v2, Landroid/view/ViewManager;

    .line 78
    sget-object v3, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;

    invoke-virtual {v3}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->getFRAME_LAYOUT()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 79
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    .line 80
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 81
    move-object v4, v3

    check-cast v4, Lorg/jetbrains/anko/_FrameLayout;

    .line 36
    check-cast v4, Landroid/view/ViewManager;

    .line 83
    sget-object v5, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    invoke-virtual {v5}, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->getVERTICAL_LAYOUT_FACTORY()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 84
    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v8, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v7

    .line 85
    invoke-interface {v5, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 86
    move-object v7, v5

    check-cast v7, Lorg/jetbrains/anko/_LinearLayout;

    const/4 v8, 0x1

    .line 37
    invoke-virtual {v7, v8}, Lorg/jetbrains/anko/_LinearLayout;->setGravity(I)V

    .line 38
    move-object v9, v7

    check-cast v9, Landroid/view/ViewManager;

    .line 87
    sget-object v10, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v10}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getSPACE()Lkotlin/jvm/functions/Function1;

    move-result-object v10

    .line 88
    sget-object v11, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v12, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v12, v9}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v11

    .line 89
    invoke-interface {v10, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 90
    move-object v11, v10

    check-cast v11, Landroid/widget/Space;

    .line 91
    sget-object v12, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v12, v9, v10}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 92
    check-cast v11, Landroid/view/View;

    .line 97
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v10, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    check-cast v7, Landroid/view/View;

    .line 99
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "context"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v6}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v13

    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 40
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v13, 0x3dcccccd    # 0.1f

    .line 41
    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 100
    check-cast v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    sget-object v10, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v10}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getTEXT_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v10

    .line 103
    sget-object v11, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v13, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v13, v9}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v11, v13, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v11

    .line 104
    invoke-interface {v10, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 105
    move-object v11, v10

    check-cast v11, Landroid/widget/TextView;

    .line 44
    invoke-interface/range {p1 .. p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0f00dd

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v11}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "context"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v14, 0x7f0500b2

    invoke-static {v13, v14}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v13

    invoke-static {v11, v13}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextColor(Landroid/widget/TextView;I)V

    const/high16 v13, 0x41a00000    # 20.0f

    .line 46
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 47
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 48
    invoke-static {v11}, Lcom/liber8tech/tago/ViewExtensionsKt;->gravityCenterHorizontal(Landroid/widget/TextView;)V

    .line 49
    invoke-static {v11}, Lcom/liber8tech/tago/util/extension/TypefacesExtensionKt;->regular(Landroid/widget/TextView;)V

    .line 106
    sget-object v13, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v13, v9, v10}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 107
    check-cast v11, Landroid/view/View;

    .line 50
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v10

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v13

    .line 108
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v13, "context"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0x10

    invoke-static {v10, v13}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v10

    .line 111
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v12, "context"

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v13}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v12

    .line 112
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v13, "context"

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0x20

    invoke-static {v15, v13}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v15

    .line 51
    invoke-virtual {v14, v10, v6, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 113
    check-cast v14, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v11, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    sget-object v10, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;->INSTANCE:Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;

    invoke-virtual {v10}, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;->getRECYCLER_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v10

    .line 116
    sget-object v11, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v12, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v12, v9}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v11

    .line 117
    invoke-interface {v10, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 118
    move-object v11, v10

    check-cast v11, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;

    .line 54
    new-instance v12, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-interface/range {p1 .. p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v12, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v11, v12}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 55
    invoke-virtual {v11, v8}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->setHasFixedSize(Z)V

    .line 56
    iget-object v1, v0, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->tagoAdapter:Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;

    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v11, v1}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 119
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, v9, v10}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 120
    check-cast v10, Landroid/support/v7/widget/RecyclerView;

    check-cast v10, Landroid/view/View;

    .line 125
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v8

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 59
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v8, 0x3f000000    # 0.5f

    .line 60
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "context"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x10

    invoke-static {v8, v9}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v8

    .line 128
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "context"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v9}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v9

    .line 129
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v11, "context"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v13}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v7

    .line 61
    invoke-virtual {v1, v8, v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 130
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    check-cast v10, Landroid/support/v7/widget/RecyclerView;

    iput-object v10, v0, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 132
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, v4, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 133
    check-cast v5, Landroid/widget/LinearLayout;

    .line 134
    sget-object v1, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v1}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getVIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 135
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v7, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v5

    .line 136
    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const-string v5, "#BE000000"

    .line 65
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    const/16 v5, 0x8

    .line 66
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-static {v1}, Lcom/liber8tech/tago/ViewExtensionsKt;->stealTouchEvents(Landroid/view/View;)V

    .line 138
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v4, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 144
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 70
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 146
    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iput-object v1, v0, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->dimView:Landroid/view/View;

    .line 148
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, v2, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 149
    check-cast v3, Landroid/widget/FrameLayout;

    .line 73
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v2

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v3
.end method

.method public final getDim()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->dim:Z

    return v0
.end method

.method public final getDimView()Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->dimView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "dimView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setDevices(Ljava/util/List;)V
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

    .line 32
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->tagoAdapter:Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->setDevices(Ljava/util/List;)V

    return-void
.end method

.method public final setDim(Z)V
    .locals 2

    .line 28
    iput-boolean p1, p0, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->dim:Z

    .line 29
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->dimView:Landroid/view/View;

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

.method public final setDimView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->dimView:Landroid/view/View;

    return-void
.end method
