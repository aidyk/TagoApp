.class public final Lcom/liber8tech/tago/android/ui/ResetActivityUI;
.super Ljava/lang/Object;
.source "ResetActivityUI.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/activity/ResetActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResetActivityUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResetActivityUI.kt\ncom/liber8tech/tago/android/ui/ResetActivityUI\n+ 2 CustomViews.kt\norg/jetbrains/anko/CustomViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 Views.kt\norg/jetbrains/anko/Sdk15ViewsKt\n+ 5 Layouts.kt\norg/jetbrains/anko/_LinearLayout\n+ 6 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n+ 7 ViewDSL.kt\ncom/liber8tech/tago/android/view/ViewDSLKt\n+ 8 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n*L\n1#1,70:1\n46#2,2:71\n46#2,2:76\n28#3,3:73\n28#3,3:78\n28#3,5:82\n28#3,5:98\n28#3,5:115\n31#3,2:131\n52#3:143\n28#3,3:144\n31#3,2:149\n31#3,2:162\n665#4:81\n1041#4:97\n1041#4:114\n786#5,6:87\n792#5,2:95\n786#5,6:103\n792#5,2:112\n786#5,6:120\n792#5,2:129\n786#5,8:133\n786#5,6:151\n792#5,2:160\n62#6:93\n62#6:94\n62#6:109\n62#6:110\n62#6:111\n62#6:126\n62#6:127\n62#6:128\n62#6:157\n62#6:158\n62#6:159\n11#7:141\n11#7:142\n164#8,2:147\n*E\n*S KotlinDebug\n*F\n+ 1 ResetActivityUI.kt\ncom/liber8tech/tago/android/ui/ResetActivityUI\n*L\n21#1,2:71\n21#1,2:76\n21#1,3:73\n21#1,3:78\n21#1,5:82\n21#1,5:98\n21#1,5:115\n21#1,2:131\n21#1:143\n21#1,3:144\n21#1,2:149\n21#1,2:162\n21#1:81\n21#1:97\n21#1:114\n21#1,6:87\n21#1,2:95\n21#1,6:103\n21#1,2:112\n21#1,6:120\n21#1,2:129\n21#1,8:133\n21#1,6:151\n21#1,2:160\n21#1:93\n21#1:94\n21#1:109\n21#1:110\n21#1:111\n21#1:126\n21#1:127\n21#1:128\n21#1:157\n21#1:158\n21#1:159\n21#1:141\n21#1:142\n21#1,2:147\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000fH\u0016R&\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/ui/ResetActivityUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/activity/ResetActivity;",
        "()V",
        "nextOnClick",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "getNextOnClick",
        "()Lkotlin/jvm/functions/Function1;",
        "setNextOnClick",
        "(Lkotlin/jvm/functions/Function1;)V",
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
.field private nextOnClick:Lkotlin/jvm/functions/Function1;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/liber8tech/tago/android/ui/ResetActivityUI$nextOnClick$1;->INSTANCE:Lcom/liber8tech/tago/android/ui/ResetActivityUI$nextOnClick$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/liber8tech/tago/android/ui/ResetActivityUI;->nextOnClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/ResetActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;
    .locals 16
    .param p1    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Lcom/liber8tech/tago/android/activity/ResetActivity;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "ui"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v1, v0

    check-cast v1, Landroid/view/ViewManager;

    .line 72
    sget-object v2, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    invoke-virtual {v2}, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->getVERTICAL_LAYOUT_FACTORY()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 73
    sget-object v3, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v4, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    .line 74
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 75
    move-object v3, v2

    check-cast v3, Lorg/jetbrains/anko/_LinearLayout;

    .line 23
    invoke-virtual {v3}, Lorg/jetbrains/anko/_LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "context"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f050020

    invoke-static {v4, v6}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jetbrains/anko/_LinearLayout;->setBackgroundColor(I)V

    .line 24
    move-object v4, v3

    check-cast v4, Landroid/view/ViewManager;

    .line 77
    sget-object v6, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    invoke-virtual {v6}, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->getVERTICAL_LAYOUT_FACTORY()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 78
    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v8, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v7

    .line 79
    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 80
    move-object v7, v6

    check-cast v7, Lorg/jetbrains/anko/_LinearLayout;

    const/16 v8, 0x11

    .line 25
    invoke-virtual {v7, v8}, Lorg/jetbrains/anko/_LinearLayout;->setGravity(I)V

    .line 26
    move-object v8, v7

    check-cast v8, Landroid/view/ViewManager;

    .line 81
    sget-object v9, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v9}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getIMAGE_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v9

    .line 82
    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v11, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v11, v8}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v10

    .line 83
    invoke-interface {v9, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 84
    move-object v10, v9

    check-cast v10, Landroid/widget/ImageView;

    const v11, 0x7f0700b6

    .line 27
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    sget-object v11, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v11, v8, v9}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 86
    check-cast v10, Landroid/view/View;

    .line 91
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 29
    check-cast v7, Landroid/view/View;

    .line 93
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "context"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0x78

    invoke-static {v12, v13}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 94
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v14, "context"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v13}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 95
    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    sget-object v9, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v9}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getTEXT_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v9

    .line 98
    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v12, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v12, v8}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v10

    .line 99
    invoke-interface {v9, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 100
    move-object v10, v9

    check-cast v10, Landroid/widget/TextView;

    .line 33
    invoke-interface/range {p1 .. p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0f00df

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "context"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v13, 0x7f0500b2

    invoke-static {v12, v13}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v12

    invoke-static {v10, v12}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextColor(Landroid/widget/TextView;I)V

    const/high16 v12, 0x41a00000    # 20.0f

    .line 35
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 36
    invoke-static {v10}, Lcom/liber8tech/tago/ViewExtensionsKt;->gravityCenterHorizontal(Landroid/widget/TextView;)V

    .line 37
    invoke-static {v10}, Lcom/liber8tech/tago/util/extension/TypefacesExtensionKt;->regular(Landroid/widget/TextView;)V

    .line 101
    sget-object v12, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v12, v8, v9}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 102
    check-cast v10, Landroid/view/View;

    .line 107
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v14, "context"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v14, 0x10

    invoke-static {v12, v14}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v12

    .line 110
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v11, "context"

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v14}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v11

    .line 111
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v13, "context"

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v14}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v13

    .line 39
    invoke-virtual {v9, v12, v11, v13, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 112
    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    sget-object v9, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v9}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getTEXT_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v9

    .line 115
    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v11, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v11, v8}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v10

    .line 116
    invoke-interface {v9, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 117
    move-object v10, v9

    check-cast v10, Landroid/widget/TextView;

    .line 42
    invoke-interface/range {p1 .. p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0f00de

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "context"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v12, 0x7f0500b2

    invoke-static {v11, v12}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v11

    invoke-static {v10, v11}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextColor(Landroid/widget/TextView;I)V

    const/high16 v11, 0x41400000    # 12.0f

    .line 44
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45
    invoke-static {v10}, Lcom/liber8tech/tago/ViewExtensionsKt;->gravityCenterHorizontal(Landroid/widget/TextView;)V

    .line 46
    invoke-static {v10}, Lcom/liber8tech/tago/util/extension/TypefacesExtensionKt;->regular(Landroid/widget/TextView;)V

    .line 118
    sget-object v11, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v11, v8, v9}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 119
    check-cast v10, Landroid/view/View;

    .line 124
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v11, "context"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v14}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v9

    .line 127
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "context"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x20

    invoke-static {v11, v12}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v11

    .line 128
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v13, "context"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v14}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v7

    .line 48
    invoke-virtual {v8, v9, v11, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 129
    check-cast v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v7, v4, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 132
    check-cast v6, Landroid/widget/LinearLayout;

    check-cast v6, Landroid/view/View;

    .line 137
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 52
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v8, 0x3f800000    # 1.0f

    .line 53
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 139
    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v7, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v6

    .line 143
    const-class v7, Lcom/liber8tech/tago/android/view/TagoButton;

    invoke-static {v6, v7}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/liber8tech/tago/android/view/TagoButton;

    .line 56
    invoke-interface/range {p1 .. p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0f00bc

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/liber8tech/tago/android/view/TagoButton;->setText(Ljava/lang/CharSequence;)V

    .line 57
    sget-object v8, Lcom/liber8tech/tago/android/view/TagoButtonColor;->GOLD:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    invoke-virtual {v7, v8}, Lcom/liber8tech/tago/android/view/TagoButton;->setColor(Lcom/liber8tech/tago/android/view/TagoButtonColor;)V

    .line 58
    move-object v8, v7

    check-cast v8, Landroid/view/View;

    new-instance v9, Lcom/liber8tech/tago/android/ui/ResetActivityUI$createView$$inlined$with$lambda$1;

    move-object/from16 v10, p0

    invoke-direct {v9, v7, v0, v10}, Lcom/liber8tech/tago/android/ui/ResetActivityUI$createView$$inlined$with$lambda$1;-><init>(Lcom/liber8tech/tago/android/view/TagoButton;Lorg/jetbrains/anko/AnkoContext;Lcom/liber8tech/tago/android/ui/ResetActivityUI;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 147
    new-instance v0, Lcom/liber8tech/tago/android/ui/ResetActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v0, v9}, Lcom/liber8tech/tago/android/ui/ResetActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    sget-object v0, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v0, v4, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 155
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 63
    check-cast v3, Landroid/view/View;

    .line 157
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "context"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v14}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v4

    .line 158
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v14}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v6

    .line 159
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v7, "context"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v12}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v3

    .line 63
    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 160
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    sget-object v0, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v0, v1, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 163
    check-cast v2, Landroid/widget/LinearLayout;

    .line 66
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v1

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method public final getNextOnClick()Lkotlin/jvm/functions/Function1;
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

    .line 19
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/ResetActivityUI;->nextOnClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setNextOnClick(Lkotlin/jvm/functions/Function1;)V
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

    .line 19
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/ResetActivityUI;->nextOnClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method
