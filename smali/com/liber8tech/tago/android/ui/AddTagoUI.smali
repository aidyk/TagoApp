.class public final Lcom/liber8tech/tago/android/ui/AddTagoUI;
.super Ljava/lang/Object;
.source "AddTagoUI.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/activity/AddTagoActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddTagoUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddTagoUI.kt\ncom/liber8tech/tago/android/ui/AddTagoUI\n+ 2 Views.kt\norg/jetbrains/anko/Sdk15ViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 CustomViews.kt\norg/jetbrains/anko/CustomViewsKt\n+ 5 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n+ 6 Layouts.kt\norg/jetbrains/anko/_LinearLayout\n+ 7 Views.kt\norg/jetbrains/anko/recyclerview/v7/RecyclerviewV7ViewsKt\n+ 8 View.kt\nandroidx/core/view/ViewKt\n+ 9 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n+ 10 Layouts.kt\norg/jetbrains/anko/_FrameLayout\n*L\n1#1,81:1\n1328#2:82\n901#2:93\n1041#2:108\n1041#2:119\n137#2:145\n28#3,3:83\n28#3,3:88\n28#3,5:94\n28#3,5:109\n28#3,5:120\n28#3,5:130\n31#3,2:143\n28#3,3:146\n31#3,2:153\n31#3,2:163\n46#4,2:86\n62#5:91\n62#5:92\n62#5:105\n62#5:116\n786#6,6:99\n792#6,2:106\n790#6,2:114\n792#6,2:117\n790#6,4:125\n786#6,8:135\n21#7:129\n262#8,2:149\n200#9,2:151\n219#10,8:155\n*E\n*S KotlinDebug\n*F\n+ 1 AddTagoUI.kt\ncom/liber8tech/tago/android/ui/AddTagoUI\n*L\n27#1:82\n27#1:93\n27#1:108\n27#1:119\n27#1:145\n27#1,3:83\n27#1,3:88\n27#1,5:94\n27#1,5:109\n27#1,5:120\n27#1,5:130\n27#1,2:143\n27#1,3:146\n27#1,2:153\n27#1,2:163\n27#1,2:86\n27#1:91\n27#1:92\n27#1:105\n27#1:116\n27#1,6:99\n27#1,2:106\n27#1,2:114\n27#1,2:117\n27#1,4:125\n27#1,8:135\n27#1:129\n27#1,2:149\n27#1,2:151\n27#1,8:155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0015H\u0016J\u0014\u0010\u0016\u001a\u00020\u00062\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0018R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/ui/AddTagoUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/activity/AddTagoActivity;",
        "onDeviceClick",
        "Lkotlin/Function1;",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "dimView",
        "Landroid/view/View;",
        "recyclerView",
        "Landroid/support/v7/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroid/support/v7/widget/RecyclerView;",
        "setRecyclerView",
        "(Landroid/support/v7/widget/RecyclerView;)V",
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
.field private dimView:Landroid/view/View;

.field public recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tagoAdapter:Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 4
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

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;-><init>(Lkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/liber8tech/tago/android/ui/AddTagoUI;->tagoAdapter:Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/AddTagoUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;
    .locals 14
    .param p1    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Lcom/liber8tech/tago/android/activity/AddTagoActivity;",
            ">;)",
            "Landroid/widget/FrameLayout;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/view/ViewManager;

    .line 82
    sget-object v1, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;

    invoke-virtual {v1}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->getFRAME_LAYOUT()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 83
    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v3, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v3, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    .line 84
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 85
    move-object v2, v1

    check-cast v2, Lorg/jetbrains/anko/_FrameLayout;

    .line 29
    check-cast v2, Landroid/view/ViewManager;

    .line 87
    sget-object v3, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    invoke-virtual {v3}, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->getVERTICAL_LAYOUT_FACTORY()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 88
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v5

    .line 89
    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 90
    move-object v5, v3

    check-cast v5, Lorg/jetbrains/anko/_LinearLayout;

    .line 30
    move-object v6, v5

    check-cast v6, Landroid/view/View;

    .line 91
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x14

    invoke-static {v7, v8}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v7

    .line 92
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v8}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v8

    .line 30
    invoke-virtual {v5, v7, v4, v8, v4}, Lorg/jetbrains/anko/_LinearLayout;->setPadding(IIII)V

    .line 31
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f05001b

    invoke-static {v7, v8}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v6, v7}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    .line 32
    check-cast v5, Landroid/view/ViewManager;

    .line 93
    sget-object v7, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v7}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getSPACE()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    .line 94
    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v9, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v9, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v8

    .line 95
    invoke-interface {v7, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 96
    move-object v8, v7

    check-cast v8, Landroid/widget/Space;

    .line 97
    sget-object v9, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v9, v5, v7}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 98
    check-cast v8, Landroid/view/View;

    .line 103
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "context"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v4}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v10

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 34
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v10, 0x3dcccccd    # 0.1f

    .line 35
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 106
    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    sget-object v7, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v7}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getTEXT_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    .line 109
    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v10, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v8

    .line 110
    invoke-interface {v7, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 111
    move-object v8, v7

    check-cast v8, Landroid/widget/TextView;

    .line 38
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0f002d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x1

    .line 39
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v11, 0x41a00000    # 20.0f

    .line 40
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 41
    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "context"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v12, 0x7f0500b2

    invoke-static {v11, v12}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v11

    invoke-static {v8, v11}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextColor(Landroid/widget/TextView;I)V

    .line 42
    invoke-static {v8}, Lcom/liber8tech/tago/util/extension/TypefacesExtensionKt;->regular(Landroid/widget/TextView;)V

    .line 112
    sget-object v11, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v11, v5, v7}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 113
    check-cast v8, Landroid/view/View;

    .line 43
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v7

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v11

    .line 114
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 116
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v6

    .line 45
    invoke-virtual {v13, v4, v4, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    check-cast v13, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    sget-object v6, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v6}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getTEXT_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 120
    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v8, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v7

    .line 121
    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 122
    move-object v7, v6

    check-cast v7, Landroid/widget/TextView;

    .line 48
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v8

    const v11, 0x7f0f002c

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41400000    # 12.0f

    .line 49
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v11, "context"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v12}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v7, v8}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextColor(Landroid/widget/TextView;I)V

    .line 51
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    invoke-static {v7}, Lcom/liber8tech/tago/util/extension/TypefacesExtensionKt;->regular(Landroid/widget/TextView;)V

    .line 123
    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v8, v5, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 124
    check-cast v7, Landroid/view/View;

    .line 53
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v6

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v8

    .line 125
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 127
    check-cast v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    sget-object v6, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;->INSTANCE:Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;

    invoke-virtual {v6}, Lorg/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup;->getRECYCLER_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 130
    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v8, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v7

    .line 131
    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 132
    move-object v7, v6

    check-cast v7, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;

    .line 57
    new-instance v8, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v8, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7, v8}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 58
    invoke-virtual {v7, v10}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->setHasFixedSize(Z)V

    .line 59
    iget-object p1, p0, Lcom/liber8tech/tago/android/ui/AddTagoUI;->tagoAdapter:Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v7, p1}, Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 133
    sget-object p1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p1, v5, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 134
    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    check-cast v6, Landroid/view/View;

    .line 139
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v5

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 62
    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v5, 0x3f000000    # 0.5f

    .line 63
    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 141
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    iput-object v6, p0, Lcom/liber8tech/tago/android/ui/AddTagoUI;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 143
    sget-object p1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p1, v2, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 144
    check-cast v3, Landroid/widget/LinearLayout;

    .line 145
    sget-object p1, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {p1}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getVIEW()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 146
    sget-object v3, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    .line 147
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string v3, "#BE000000"

    .line 67
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v3}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    const/16 v3, 0x8

    .line 149
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    sget-object v3, Lcom/liber8tech/tago/android/ui/AddTagoUI$createView$1$root$1$2$1;->INSTANCE:Lcom/liber8tech/tago/android/ui/AddTagoUI$createView$1$root$1$2$1;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 151
    new-instance v4, Lcom/liber8tech/tago/android/ui/AddTagoUI$inlined$sam$i$android_view_View_OnTouchListener$0;

    invoke-direct {v4, v3}, Lcom/liber8tech/tago/android/ui/AddTagoUI$inlined$sam$i$android_view_View_OnTouchListener$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    sget-object v3, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v3, v2, p1}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 159
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 72
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 161
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/AddTagoUI;->dimView:Landroid/view/View;

    .line 163
    sget-object p1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p1, v0, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 164
    check-cast v1, Landroid/widget/FrameLayout;

    .line 75
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v0

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v2

    invoke-direct {p1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public final getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/AddTagoUI;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "recyclerView"

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

    .line 79
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/AddTagoUI;->tagoAdapter:Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->setDevices(Ljava/util/List;)V

    return-void
.end method

.method public final setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/AddTagoUI;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
