.class public final Lcom/liber8tech/tago/android/ui/SyncActivityUI;
.super Ljava/lang/Object;
.source "SyncActivityUI.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/activity/SyncActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncActivityUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncActivityUI.kt\ncom/liber8tech/tago/android/ui/SyncActivityUI\n+ 2 Views.kt\norg/jetbrains/anko/Sdk15ViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 CustomViews.kt\norg/jetbrains/anko/CustomViewsKt\n+ 5 Layouts.kt\norg/jetbrains/anko/_LinearLayout\n+ 6 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n+ 7 ViewDSL.kt\ncom/liber8tech/tago/android/view/ViewDSLKt\n+ 8 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n+ 9 Layouts.kt\norg/jetbrains/anko/_FrameLayout\n*L\n1#1,119:1\n1328#2:120\n137#2:129\n1041#2:144\n665#2:196\n137#2:214\n137#2:252\n28#3,3:121\n28#3,3:126\n28#3,5:130\n28#3,5:145\n52#3:161\n28#3,3:162\n31#3,2:166\n52#3:181\n28#3,5:182\n28#3,3:197\n31#3,2:202\n28#3,5:215\n52#3:231\n28#3,3:232\n31#3,2:237\n31#3,2:250\n28#3,5:253\n31#3,2:266\n46#4,2:124\n786#5,6:135\n792#5,2:142\n786#5,6:150\n792#5,2:157\n786#5,6:168\n792#5,2:177\n786#5,6:187\n792#5,2:194\n786#5,6:204\n792#5,2:212\n786#5,6:220\n792#5,2:227\n786#5,6:239\n792#5,2:248\n62#6:141\n62#6:156\n62#6:165\n62#6:174\n62#6:175\n62#6:176\n62#6:193\n62#6:200\n62#6:201\n62#6:210\n62#6:211\n62#6:226\n62#6:245\n62#6:246\n62#6:247\n26#7:159\n26#7:160\n17#7:179\n17#7:180\n11#7:229\n11#7:230\n164#8,2:235\n219#9,8:258\n*E\n*S KotlinDebug\n*F\n+ 1 SyncActivityUI.kt\ncom/liber8tech/tago/android/ui/SyncActivityUI\n*L\n53#1:120\n53#1:129\n53#1:144\n53#1:196\n53#1:214\n53#1:252\n53#1,3:121\n53#1,3:126\n53#1,5:130\n53#1,5:145\n53#1:161\n53#1,3:162\n53#1,2:166\n53#1:181\n53#1,5:182\n53#1,3:197\n53#1,2:202\n53#1,5:215\n53#1:231\n53#1,3:232\n53#1,2:237\n53#1,2:250\n53#1,5:253\n53#1,2:266\n53#1,2:124\n53#1,6:135\n53#1,2:142\n53#1,6:150\n53#1,2:157\n53#1,6:168\n53#1,2:177\n53#1,6:187\n53#1,2:194\n53#1,6:204\n53#1,2:212\n53#1,6:220\n53#1,2:227\n53#1,6:239\n53#1,2:248\n53#1:141\n53#1:156\n53#1:165\n53#1:174\n53#1:175\n53#1:176\n53#1:193\n53#1:200\n53#1:201\n53#1:210\n53#1:211\n53#1:226\n53#1:245\n53#1:246\n53#1:247\n53#1:159\n53#1:160\n53#1:179\n53#1:180\n53#1:229\n53#1:230\n53#1,2:235\n53#1,8:258\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010&\u001a\u00020\u000c2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00020(H\u0016J\u000e\u0010)\u001a\u00020\r2\u0006\u0010*\u001a\u00020+J\u000e\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020\r2\u0006\u00100\u001a\u00020.J\u000e\u00101\u001a\u00020\r2\u0006\u0010\u0018\u001a\u000202R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR&\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0019@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/ui/SyncActivityUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/activity/SyncActivity;",
        "()V",
        "cancelButton",
        "Landroid/widget/Button;",
        "getCancelButton",
        "()Landroid/widget/Button;",
        "setCancelButton",
        "(Landroid/widget/Button;)V",
        "cancelOnClick",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "getCancelOnClick",
        "()Lkotlin/jvm/functions/Function1;",
        "setCancelOnClick",
        "(Lkotlin/jvm/functions/Function1;)V",
        "detailText",
        "Landroid/widget/TextView;",
        "getDetailText",
        "()Landroid/widget/TextView;",
        "setDetailText",
        "(Landroid/widget/TextView;)V",
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
        "progressBar",
        "Lcom/liber8tech/tago/android/view/CircleProgressBar;",
        "tago",
        "Lcom/liber8tech/tago/android/view/TagoRowItem;",
        "createView",
        "ui",
        "Lorg/jetbrains/anko/AnkoContext;",
        "setColor",
        "color",
        "Landroid/graphics/drawable/Drawable;",
        "setImage",
        "path",
        "",
        "setName",
        "name",
        "setProgressValue",
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
.field public cancelButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field public detailText:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dim:Z

.field private dimView:Landroid/view/View;

.field private image:Landroid/widget/ImageView;

.field private progressBar:Lcom/liber8tech/tago/android/view/CircleProgressBar;

.field private tago:Lcom/liber8tech/tago/android/view/TagoRowItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/liber8tech/tago/android/ui/SyncActivityUI$cancelOnClick$1;->INSTANCE:Lcom/liber8tech/tago/android/ui/SyncActivityUI$cancelOnClick$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->cancelOnClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 16
    .param p1    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Lcom/liber8tech/tago/android/activity/SyncActivity;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ui"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v2, v1

    check-cast v2, Landroid/view/ViewManager;

    .line 120
    sget-object v3, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;

    invoke-virtual {v3}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->getFRAME_LAYOUT()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 121
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    .line 122
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 123
    move-object v4, v3

    check-cast v4, Lorg/jetbrains/anko/_FrameLayout;

    .line 55
    check-cast v4, Landroid/view/ViewManager;

    .line 125
    sget-object v5, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    invoke-virtual {v5}, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->getVERTICAL_LAYOUT_FACTORY()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 126
    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v8, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v7

    .line 127
    invoke-interface {v5, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 128
    move-object v7, v5

    check-cast v7, Lorg/jetbrains/anko/_LinearLayout;

    .line 56
    move-object v8, v7

    check-cast v8, Landroid/view/ViewManager;

    .line 129
    sget-object v9, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v9}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getVIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v9

    .line 130
    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v11, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v11, v8}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v10

    .line 131
    invoke-interface {v9, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 133
    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v10, v8, v9}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 139
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    check-cast v7, Landroid/view/View;

    .line 141
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "context"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v6}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v12

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 58
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v12, 0x3f800000    # 1.0f

    .line 59
    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 142
    check-cast v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    sget-object v9, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v9}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getTEXT_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v9

    .line 145
    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v13, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v13, v8}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v10, v13, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v10

    .line 146
    invoke-interface {v9, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 147
    move-object v10, v9

    check-cast v10, Landroid/widget/TextView;

    .line 62
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "context"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v14, 0x7f0500b2

    invoke-static {v13, v14}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v13

    invoke-static {v10, v13}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextColor(Landroid/widget/TextView;I)V

    const/high16 v13, 0x41900000    # 18.0f

    .line 63
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 148
    sget-object v13, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v13, v8, v9}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 149
    check-cast v10, Landroid/view/View;

    .line 154
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v13, 0x1

    .line 65
    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 156
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "context"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v14

    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 157
    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->detailText:Landroid/widget/TextView;

    .line 162
    sget-object v9, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v10, v8}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v9

    .line 161
    const-class v10, Lcom/liber8tech/tago/android/view/CircleProgressBar;

    invoke-static {v9, v10}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/liber8tech/tago/android/view/CircleProgressBar;

    .line 69
    invoke-virtual {v10}, Lcom/liber8tech/tago/android/view/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "context"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v15, 0x7f05004d

    invoke-static {v14, v15}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/liber8tech/tago/android/view/CircleProgressBar;->setProgressColor(I)V

    .line 70
    move-object v14, v10

    check-cast v14, Landroid/view/View;

    .line 165
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v12, "context"

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x5

    invoke-static {v15, v12}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/liber8tech/tago/android/view/CircleProgressBar;->setProgressSize(I)V

    .line 71
    invoke-virtual {v10}, Lcom/liber8tech/tago/android/view/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v15, "resources"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/4 v15, 0x2

    const/high16 v6, 0x418c0000    # 17.5f

    invoke-static {v15, v6, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    invoke-virtual {v10, v6}, Lcom/liber8tech/tago/android/view/CircleProgressBar;->setTextSizePx(F)V

    .line 166
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v8, v9}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 172
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x46

    invoke-static {v9, v10}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 175
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v12, "context"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v10}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 75
    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 176
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v12, "context"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v10}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 177
    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v14, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    check-cast v14, Lcom/liber8tech/tago/android/view/CircleProgressBar;

    iput-object v14, v0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->progressBar:Lcom/liber8tech/tago/android/view/CircleProgressBar;

    .line 182
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v9, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v9, v8}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v6

    .line 181
    const-class v9, Lcom/liber8tech/tago/android/view/TagoRowItem;

    invoke-static {v6, v9}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/liber8tech/tago/android/view/TagoRowItem;

    .line 79
    invoke-virtual {v9, v10}, Lcom/liber8tech/tago/android/view/TagoRowItem;->showMoreIcon(Z)V

    .line 185
    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v10, v8, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 180
    check-cast v9, Landroid/view/View;

    .line 191
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v12, "context"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x11

    invoke-static {v10, v12}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 194
    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v9, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    check-cast v9, Lcom/liber8tech/tago/android/view/TagoRowItem;

    iput-object v9, v0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->tago:Lcom/liber8tech/tago/android/view/TagoRowItem;

    .line 196
    sget-object v6, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v6}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getIMAGE_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 197
    sget-object v9, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v10, v8}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v9

    .line 198
    invoke-interface {v6, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 199
    move-object v9, v6

    check-cast v9, Landroid/widget/ImageView;

    .line 84
    move-object v10, v9

    check-cast v10, Landroid/view/View;

    .line 200
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "context"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0x14

    invoke-static {v12, v13}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v12

    .line 201
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "context"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v13}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v14

    const/4 v15, 0x0

    .line 84
    invoke-virtual {v9, v12, v15, v14, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 202
    sget-object v9, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v9, v8, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 208
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v12, "context"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x3e

    invoke-static {v9, v12}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 87
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 211
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v12, "context"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v13}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 212
    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->image:Landroid/widget/ImageView;

    .line 214
    sget-object v6, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v6}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getVIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 215
    sget-object v9, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v10, v8}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v9

    .line 216
    invoke-interface {v6, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 218
    sget-object v9, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v9, v8, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 224
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v14, "context"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v12}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 92
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v10, 0x3f800000    # 1.0f

    .line 93
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 227
    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v9, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v9, v8}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6, v9, v12}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v6

    .line 231
    const-class v9, Lcom/liber8tech/tago/android/view/TagoButton;

    invoke-static {v6, v9}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/liber8tech/tago/android/view/TagoButton;

    .line 96
    invoke-interface/range {p1 .. p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v10

    const v12, 0x7f0f0052

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Lcom/liber8tech/tago/android/view/TagoButton;->setText(Ljava/lang/CharSequence;)V

    .line 97
    move-object v10, v9

    check-cast v10, Landroid/view/View;

    new-instance v12, Lcom/liber8tech/tago/android/ui/SyncActivityUI$createView$$inlined$with$lambda$1;

    invoke-direct {v12, v9, v1, v0}, Lcom/liber8tech/tago/android/ui/SyncActivityUI$createView$$inlined$with$lambda$1;-><init>(Lcom/liber8tech/tago/android/view/TagoButton;Lorg/jetbrains/anko/AnkoContext;Lcom/liber8tech/tago/android/ui/SyncActivityUI;)V

    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 235
    new-instance v1, Lcom/liber8tech/tago/android/ui/SyncActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v1, v12}, Lcom/liber8tech/tago/android/ui/SyncActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, v8, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 243
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 102
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 245
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "context"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x1c

    invoke-static {v6, v8}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 246
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "context"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v13}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 247
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v13}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 248
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    check-cast v10, Landroid/widget/Button;

    iput-object v10, v0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->cancelButton:Landroid/widget/Button;

    .line 250
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, v4, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 251
    check-cast v5, Landroid/widget/LinearLayout;

    .line 252
    sget-object v1, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v1}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getVIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 253
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v5

    .line 254
    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const-string v5, "#BE000000"

    .line 109
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    const/16 v5, 0x8

    .line 110
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-static {v1}, Lcom/liber8tech/tago/ViewExtensionsKt;->stealTouchEvents(Landroid/view/View;)V

    .line 256
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v4, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 262
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 113
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 114
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 264
    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iput-object v1, v0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->dimView:Landroid/view/View;

    .line 266
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, v2, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 267
    check-cast v3, Landroid/widget/FrameLayout;

    .line 53
    check-cast v3, Landroid/view/View;

    return-object v3
.end method

.method public final getCancelButton()Landroid/widget/Button;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->cancelButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v1, "cancelButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
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

    .line 35
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->cancelOnClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getDetailText()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->detailText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "detailText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getDim()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->dim:Z

    return v0
.end method

.method public final setCancelButton(Landroid/widget/Button;)V
    .locals 1
    .param p1    # Landroid/widget/Button;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->cancelButton:Landroid/widget/Button;

    return-void
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

    .line 35
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->cancelOnClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setColor(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->tago:Lcom/liber8tech/tago/android/view/TagoRowItem;

    if-nez v0, :cond_0

    const-string v1, "tago"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/view/TagoRowItem;->setTagoDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setDetailText(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->detailText:Landroid/widget/TextView;

    return-void
.end method

.method public final setDim(Z)V
    .locals 2

    .line 31
    iput-boolean p1, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->dim:Z

    .line 32
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->dimView:Landroid/view/View;

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

    .line 38
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->image:Landroid/widget/ImageView;

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

.method public final setName(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->tago:Lcom/liber8tech/tago/android/view/TagoRowItem;

    if-nez v0, :cond_0

    const-string v1, "tago"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/view/TagoRowItem;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public final setProgressValue(D)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->progressBar:Lcom/liber8tech/tago/android/view/CircleProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progressBar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    double-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/view/CircleProgressBar;->setProgress(F)V

    return-void
.end method
