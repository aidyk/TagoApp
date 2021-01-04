.class public final Lcom/liber8tech/tago/android/view/StyledToolbar;
.super Landroid/support/v7/widget/Toolbar;
.source "StyledToolbar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStyledToolbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StyledToolbar.kt\ncom/liber8tech/tago/android/view/StyledToolbar\n+ 2 CustomViewProperties.kt\norg/jetbrains/anko/CustomViewPropertiesKt\n+ 3 Views.kt\norg/jetbrains/anko/Sdk15ViewsKt\n+ 4 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 5 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n+ 6 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n+ 7 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,110:1\n102#2:111\n102#2:112\n665#3:113\n1041#3:126\n665#3:134\n665#3:144\n28#4,3:114\n31#4,2:123\n28#4,3:127\n31#4,2:132\n28#4,3:135\n31#4,2:142\n28#4,3:145\n31#4,2:154\n62#5:117\n62#5:118\n62#5:119\n62#5:120\n62#5:125\n62#5:148\n62#5:149\n62#5:150\n62#5:151\n62#5:156\n62#5:157\n164#6,2:121\n164#6,2:130\n164#6,2:138\n164#6,2:152\n262#7,2:140\n*E\n*S KotlinDebug\n*F\n+ 1 StyledToolbar.kt\ncom/liber8tech/tago/android/view/StyledToolbar\n*L\n38#1:111\n48#1:112\n71#1:113\n80#1:126\n89#1:134\n97#1:144\n71#1,3:114\n71#1,2:123\n80#1,3:127\n80#1,2:132\n89#1,3:135\n89#1,2:142\n97#1,3:145\n97#1,2:154\n71#1:117\n71#1:118\n71#1:119\n71#1:120\n77#1:125\n97#1:148\n97#1:149\n97#1:150\n97#1:151\n103#1:156\n103#1:157\n71#1,2:121\n80#1,2:130\n89#1,2:138\n97#1,2:152\n89#1,2:140\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\r\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u00103\u001a\u00020\u0015H\u0002R*\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R&\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000R*\u0010\u001c\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\u001d\u0010\u000e\"\u0004\u0008\u001e\u0010\u0010R&\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0017\"\u0004\u0008!\u0010\u0019R\u000e\u0010\"\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010#\u001a\u00020\u001bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R(\u0010)\u001a\u0004\u0018\u00010(2\u0008\u0010\u000b\u001a\u0004\u0018\u00010(@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R&\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0017\"\u0004\u00080\u0010\u0019R\u000e\u00101\u001a\u000202X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/view/StyledToolbar;",
        "Landroid/support/v7/widget/Toolbar;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "value",
        "leftIcon",
        "getLeftIcon",
        "()Ljava/lang/Integer;",
        "setLeftIcon",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "leftIconOnCLick",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "getLeftIconOnCLick",
        "()Lkotlin/jvm/functions/Function1;",
        "setLeftIconOnCLick",
        "(Lkotlin/jvm/functions/Function1;)V",
        "leftNavigationIcon",
        "Landroid/widget/ImageView;",
        "rightIcon",
        "getRightIcon",
        "setRightIcon",
        "rightIconOnCLick",
        "getRightIconOnCLick",
        "setRightIconOnCLick",
        "rightNavigationIcon",
        "selectorIcon",
        "getSelectorIcon",
        "()Landroid/widget/ImageView;",
        "setSelectorIcon",
        "(Landroid/widget/ImageView;)V",
        "",
        "text",
        "getText",
        "()Ljava/lang/CharSequence;",
        "setText",
        "(Ljava/lang/CharSequence;)V",
        "titleIconOnClick",
        "getTitleIconOnClick",
        "setTitleIconOnClick",
        "titleTextView",
        "Landroid/widget/TextView;",
        "init",
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
.field private _$_findViewCache:Ljava/util/HashMap;

.field private leftIcon:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private leftIconOnCLick:Lkotlin/jvm/functions/Function1;
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

.field private leftNavigationIcon:Landroid/widget/ImageView;

.field private rightIcon:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rightIconOnCLick:Lkotlin/jvm/functions/Function1;
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

.field private rightNavigationIcon:Landroid/widget/ImageView;

.field public selectorIcon:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private text:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private titleIconOnClick:Lkotlin/jvm/functions/Function1;
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

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 42
    sget-object p1, Lcom/liber8tech/tago/android/view/StyledToolbar$leftIconOnCLick$1;->INSTANCE:Lcom/liber8tech/tago/android/view/StyledToolbar$leftIconOnCLick$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->leftIconOnCLick:Lkotlin/jvm/functions/Function1;

    .line 53
    sget-object p1, Lcom/liber8tech/tago/android/view/StyledToolbar$rightIconOnCLick$1;->INSTANCE:Lcom/liber8tech/tago/android/view/StyledToolbar$rightIconOnCLick$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->rightIconOnCLick:Lkotlin/jvm/functions/Function1;

    .line 55
    sget-object p1, Lcom/liber8tech/tago/android/view/StyledToolbar$titleIconOnClick$1;->INSTANCE:Lcom/liber8tech/tago/android/view/StyledToolbar$titleIconOnClick$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->titleIconOnClick:Lkotlin/jvm/functions/Function1;

    .line 58
    invoke-direct {p0}, Lcom/liber8tech/tago/android/view/StyledToolbar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    sget-object p1, Lcom/liber8tech/tago/android/view/StyledToolbar$leftIconOnCLick$1;->INSTANCE:Lcom/liber8tech/tago/android/view/StyledToolbar$leftIconOnCLick$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->leftIconOnCLick:Lkotlin/jvm/functions/Function1;

    .line 53
    sget-object p1, Lcom/liber8tech/tago/android/view/StyledToolbar$rightIconOnCLick$1;->INSTANCE:Lcom/liber8tech/tago/android/view/StyledToolbar$rightIconOnCLick$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->rightIconOnCLick:Lkotlin/jvm/functions/Function1;

    .line 55
    sget-object p1, Lcom/liber8tech/tago/android/view/StyledToolbar$titleIconOnClick$1;->INSTANCE:Lcom/liber8tech/tago/android/view/StyledToolbar$titleIconOnClick$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->titleIconOnClick:Lkotlin/jvm/functions/Function1;

    .line 62
    invoke-direct {p0}, Lcom/liber8tech/tago/android/view/StyledToolbar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object p1, Lcom/liber8tech/tago/android/view/StyledToolbar$leftIconOnCLick$1;->INSTANCE:Lcom/liber8tech/tago/android/view/StyledToolbar$leftIconOnCLick$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->leftIconOnCLick:Lkotlin/jvm/functions/Function1;

    .line 53
    sget-object p1, Lcom/liber8tech/tago/android/view/StyledToolbar$rightIconOnCLick$1;->INSTANCE:Lcom/liber8tech/tago/android/view/StyledToolbar$rightIconOnCLick$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->rightIconOnCLick:Lkotlin/jvm/functions/Function1;

    .line 55
    sget-object p1, Lcom/liber8tech/tago/android/view/StyledToolbar$titleIconOnClick$1;->INSTANCE:Lcom/liber8tech/tago/android/view/StyledToolbar$titleIconOnClick$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->titleIconOnClick:Lkotlin/jvm/functions/Function1;

    .line 66
    invoke-direct {p0}, Lcom/liber8tech/tago/android/view/StyledToolbar;->init()V

    return-void
.end method

.method private final init()V
    .locals 11

    .line 70
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/StyledToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f050078

    invoke-static {v0, v1}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    .line 113
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v0}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getIMAGE_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 114
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v2, p0}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    .line 115
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 116
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    .line 72
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v4

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v6

    .line 119
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "context"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v5}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v8

    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v7}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v9

    .line 72
    invoke-virtual {v1, v4, v6, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 73
    new-instance v4, Lcom/liber8tech/tago/android/view/StyledToolbar$init$$inlined$imageView$lambda$1;

    invoke-direct {v4, v1, p0}, Lcom/liber8tech/tago/android/view/StyledToolbar$init$$inlined$imageView$lambda$1;-><init>(Landroid/widget/ImageView;Lcom/liber8tech/tago/android/view/StyledToolbar;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 121
    new-instance v6, Lcom/liber8tech/tago/android/view/StyledToolbar$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v6, v4}, Lcom/liber8tech/tago/android/view/StyledToolbar$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v2, p0, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 124
    iput-object v1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->leftNavigationIcon:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->leftNavigationIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "leftNavigationIcon"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v1

    .line 77
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v4

    new-instance v6, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v6, v1, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 78
    iput v1, v6, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 77
    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v0}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getTEXT_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 127
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v4, p0}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    .line 128
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 129
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const/4 v4, -0x1

    .line 81
    invoke-static {v1, v4}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextColor(Landroid/widget/TextView;I)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 82
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x11

    .line 83
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    move-object v6, v1

    check-cast v6, Landroid/view/View;

    new-instance v8, Lcom/liber8tech/tago/android/view/StyledToolbar$init$$inlined$textView$lambda$1;

    invoke-direct {v8, v1, p0}, Lcom/liber8tech/tago/android/view/StyledToolbar$init$$inlined$textView$lambda$1;-><init>(Landroid/widget/TextView;Lcom/liber8tech/tago/android/view/StyledToolbar;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 130
    new-instance v9, Lcom/liber8tech/tago/android/view/StyledToolbar$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v9, v8}, Lcom/liber8tech/tago/android/view/StyledToolbar$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, p0, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 133
    iput-object v1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->titleTextView:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->titleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v1, "titleTextView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v6

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v8

    invoke-direct {v1, v6, v8}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    .line 87
    iput v4, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 86
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v0}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getIMAGE_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 135
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, p0}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1, v6, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    .line 136
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 137
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    const v6, 0x7f0700a4

    .line 90
    invoke-static {v1, v6}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setImageResource(Landroid/widget/ImageView;I)V

    .line 91
    move-object v6, v1

    check-cast v6, Landroid/view/View;

    new-instance v8, Lcom/liber8tech/tago/android/view/StyledToolbar$init$$inlined$imageView$lambda$2;

    invoke-direct {v8, v1, p0}, Lcom/liber8tech/tago/android/view/StyledToolbar$init$$inlined$imageView$lambda$2;-><init>(Landroid/widget/ImageView;Lcom/liber8tech/tago/android/view/StyledToolbar;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 138
    new-instance v9, Lcom/liber8tech/tago/android/view/StyledToolbar$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v9, v8}, Lcom/liber8tech/tago/android/view/StyledToolbar$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 142
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, p0, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 143
    iput-object v1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->selectorIcon:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->selectorIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    const-string v1, "selectorIcon"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v6

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v8

    invoke-direct {v1, v6, v8}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    .line 95
    iput v4, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 94
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v0}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getIMAGE_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 145
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v4, p0}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    .line 146
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 147
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    .line 98
    move-object v4, v1

    check-cast v4, Landroid/view/View;

    .line 148
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "context"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v6

    .line 149
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "context"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v7}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v8

    .line 150
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v5

    .line 151
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v7}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v7

    .line 98
    invoke-virtual {v1, v6, v8, v5, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 99
    new-instance v5, Lcom/liber8tech/tago/android/view/StyledToolbar$init$$inlined$imageView$lambda$3;

    invoke-direct {v5, v1, p0}, Lcom/liber8tech/tago/android/view/StyledToolbar$init$$inlined$imageView$lambda$3;-><init>(Landroid/widget/ImageView;Lcom/liber8tech/tago/android/view/StyledToolbar;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 152
    new-instance v6, Lcom/liber8tech/tago/android/view/StyledToolbar$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v6, v5}, Lcom/liber8tech/tago/android/view/StyledToolbar$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v4, p0, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 155
    iput-object v1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->rightNavigationIcon:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->rightNavigationIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    const-string v1, "rightNavigationIcon"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 156
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v1

    .line 103
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v2

    new-instance v4, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    .line 104
    iput v1, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    const/16 v1, 0x14

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "context"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v1

    .line 105
    invoke-virtual {v4, v3, v3, v1, v3}, Landroid/support/v7/widget/Toolbar$LayoutParams;->setMargins(IIII)V

    .line 103
    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v1

    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/StyledToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f030003

    invoke-static {v2, v3}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->attrAsDimen(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/view/StyledToolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getLeftIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->leftIcon:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLeftIconOnCLick()Lkotlin/jvm/functions/Function1;
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

    .line 42
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->leftIconOnCLick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getRightIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->rightIcon:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRightIconOnCLick()Lkotlin/jvm/functions/Function1;
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

    .line 53
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->rightIconOnCLick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getSelectorIcon()Landroid/widget/ImageView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->selectorIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "selectorIcon"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleIconOnClick()Lkotlin/jvm/functions/Function1;
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

    .line 55
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->titleIconOnClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setLeftIcon(Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 36
    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->leftIcon:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->leftNavigationIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "leftNavigationIcon"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/StyledToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v2, 0x106000b

    invoke-static {v1, p1, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->tintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final setLeftIconOnCLick(Lkotlin/jvm/functions/Function1;)V
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

    .line 42
    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->leftIconOnCLick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setRightIcon(Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 46
    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->rightIcon:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->rightNavigationIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "rightNavigationIcon"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/StyledToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v2, 0x106000b

    invoke-static {v1, p1, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->tintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 112
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final setRightIconOnCLick(Lkotlin/jvm/functions/Function1;)V
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

    .line 53
    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->rightIconOnCLick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSelectorIcon(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->selectorIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 30
    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->text:Ljava/lang/CharSequence;

    .line 31
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->titleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "titleTextView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleIconOnClick(Lkotlin/jvm/functions/Function1;)V
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

    .line 55
    iput-object p1, p0, Lcom/liber8tech/tago/android/view/StyledToolbar;->titleIconOnClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method
