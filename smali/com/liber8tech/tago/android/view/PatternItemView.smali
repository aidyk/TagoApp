.class public final Lcom/liber8tech/tago/android/view/PatternItemView;
.super Landroid/widget/FrameLayout;
.source "PatternItemView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liber8tech/tago/android/view/PatternItemView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPatternItemView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PatternItemView.kt\ncom/liber8tech/tago/android/view/PatternItemView\n+ 2 Views.kt\norg/jetbrains/anko/Sdk15ViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 Layouts.kt\norg/jetbrains/anko/_FrameLayout\n+ 5 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n*L\n1#1,81:1\n1328#2:82\n1328#2:86\n1041#2:90\n1328#2:115\n665#2:119\n28#3,3:83\n28#3,3:87\n28#3,5:91\n31#3,2:105\n28#3,3:116\n28#3,5:120\n31#3,2:125\n31#3,2:127\n219#4,6:96\n225#4,2:103\n219#4,8:107\n62#5:102\n*E\n*S KotlinDebug\n*F\n+ 1 PatternItemView.kt\ncom/liber8tech/tago/android/view/PatternItemView\n*L\n46#1:82\n46#1:86\n46#1:90\n46#1:115\n46#1:119\n46#1,3:83\n46#1,3:87\n46#1,5:91\n46#1,2:105\n46#1,3:116\n46#1,5:120\n46#1,2:125\n46#1,2:127\n46#1,6:96\n46#1,2:103\n46#1,8:107\n46#1:102\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u000eR\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/view/PatternItemView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "IMAGE_TAG",
        "",
        "kotlin.jvm.PlatformType",
        "patternImage",
        "Landroid/widget/ImageView;",
        "tagoPattern",
        "Lcom/liber8tech/tago/model/Pattern;",
        "init",
        "",
        "setup",
        "pattern",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final Companion:Lcom/liber8tech/tago/android/view/PatternItemView$Companion;

# The value of this static final field might be set in the static constructor
.field private static final bgId:I = 0x65

# The value of this static final field might be set in the static constructor
.field private static final deleteButtonId:I = 0x67

# The value of this static final field might be set in the static constructor
.field private static final fgId:I = 0x66

# The value of this static final field might be set in the static constructor
.field private static final titleId:I = 0x68


# instance fields
.field private final IMAGE_TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private patternImage:Landroid/widget/ImageView;

.field private tagoPattern:Lcom/liber8tech/tago/model/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/liber8tech/tago/android/view/PatternItemView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/android/view/PatternItemView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/liber8tech/tago/android/view/PatternItemView;->Companion:Lcom/liber8tech/tago/android/view/PatternItemView$Companion;

    const/16 v0, 0x65

    .line 26
    sput v0, Lcom/liber8tech/tago/android/view/PatternItemView;->bgId:I

    const/16 v0, 0x66

    .line 27
    sput v0, Lcom/liber8tech/tago/android/view/PatternItemView;->fgId:I

    const/16 v0, 0x67

    .line 28
    sput v0, Lcom/liber8tech/tago/android/view/PatternItemView;->deleteButtonId:I

    const/16 v0, 0x68

    .line 29
    sput v0, Lcom/liber8tech/tago/android/view/PatternItemView;->titleId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const-class p1, Lcom/liber8tech/tago/android/view/PatternItemView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/PatternItemView;->IMAGE_TAG:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/liber8tech/tago/android/view/PatternItemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-class p1, Lcom/liber8tech/tago/android/view/PatternItemView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/liber8tech/tago/android/view/PatternItemView;->IMAGE_TAG:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/liber8tech/tago/android/view/PatternItemView;->init()V

    return-void
.end method

.method public static final synthetic access$getBgId$cp()I
    .locals 1

    .line 23
    sget v0, Lcom/liber8tech/tago/android/view/PatternItemView;->bgId:I

    return v0
.end method

.method public static final synthetic access$getDeleteButtonId$cp()I
    .locals 1

    .line 23
    sget v0, Lcom/liber8tech/tago/android/view/PatternItemView;->deleteButtonId:I

    return v0
.end method

.method public static final synthetic access$getFgId$cp()I
    .locals 1

    .line 23
    sget v0, Lcom/liber8tech/tago/android/view/PatternItemView;->fgId:I

    return v0
.end method

.method public static final synthetic access$getTitleId$cp()I
    .locals 1

    .line 23
    sget v0, Lcom/liber8tech/tago/android/view/PatternItemView;->titleId:I

    return v0
.end method

.method private final init()V
    .locals 11

    .line 82
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;

    invoke-virtual {v0}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->getFRAME_LAYOUT()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 83
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v2, p0}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    .line 84
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 85
    move-object v1, v0

    check-cast v1, Lorg/jetbrains/anko/_FrameLayout;

    .line 47
    check-cast v1, Landroid/view/ViewManager;

    .line 86
    sget-object v2, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;

    invoke-virtual {v2}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->getFRAME_LAYOUT()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 87
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    .line 88
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 89
    move-object v4, v2

    check-cast v4, Lorg/jetbrains/anko/_FrameLayout;

    .line 48
    sget v5, Lcom/liber8tech/tago/android/view/PatternItemView;->bgId:I

    invoke-virtual {v4, v5}, Lorg/jetbrains/anko/_FrameLayout;->setId(I)V

    .line 49
    move-object v5, v4

    check-cast v5, Landroid/view/ViewManager;

    .line 90
    sget-object v6, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v6}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getTEXT_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 91
    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v8, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v7

    .line 92
    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 93
    move-object v7, v6

    check-cast v7, Landroid/widget/TextView;

    .line 50
    sget v8, Lcom/liber8tech/tago/android/view/PatternItemView;->deleteButtonId:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setId(I)V

    .line 51
    move-object v8, v7

    check-cast v8, Landroid/view/View;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v10, 0x7f05009f

    invoke-static {v9, v10}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v9

    invoke-static {v8, v9}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    const v9, 0x7f0f0088

    .line 52
    invoke-static {v7, v9}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextResource(Landroid/widget/TextView;I)V

    .line 53
    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v10, 0x7f0500b2

    invoke-static {v9, v10}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v9

    invoke-static {v7, v9}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextColor(Landroid/widget/TextView;I)V

    const/high16 v9, 0x41700000    # 15.0f

    .line 54
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v9, 0x11

    .line 55
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 94
    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v7, v5, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 100
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 58
    check-cast v4, Landroid/view/View;

    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "context"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x64

    invoke-static {v4, v7}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 103
    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v4, v1, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 106
    check-cast v2, Landroid/widget/FrameLayout;

    check-cast v2, Landroid/view/View;

    .line 111
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 62
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, 0x5

    .line 63
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 113
    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    sget-object v2, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;

    invoke-virtual {v2}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->getFRAME_LAYOUT()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 116
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    .line 117
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 118
    move-object v4, v2

    check-cast v4, Lorg/jetbrains/anko/_FrameLayout;

    .line 66
    sget v5, Lcom/liber8tech/tago/android/view/PatternItemView;->fgId:I

    invoke-virtual {v4, v5}, Lorg/jetbrains/anko/_FrameLayout;->setId(I)V

    .line 67
    check-cast v4, Landroid/view/ViewManager;

    .line 119
    sget-object v5, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v5}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getIMAGE_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 120
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v7, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    .line 121
    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 122
    move-object v5, v3

    check-cast v5, Landroid/widget/ImageView;

    .line 68
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v7

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    move-object v6, v5

    check-cast v6, Landroid/view/View;

    const v7, 0x7f050066

    invoke-static {v6, v7}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundResource(Landroid/view/View;I)V

    .line 123
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v4, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 124
    iput-object v5, p0, Lcom/liber8tech/tago/android/view/PatternItemView;->patternImage:Landroid/widget/ImageView;

    .line 125
    sget-object v3, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v3, v1, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 126
    check-cast v2, Landroid/widget/FrameLayout;

    .line 127
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, p0, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 128
    check-cast v0, Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/view/PatternItemView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/view/PatternItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/view/PatternItemView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/view/PatternItemView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/PatternItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/view/PatternItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final setup(Lcom/liber8tech/tago/model/Pattern;)V
    .locals 2
    .param p1    # Lcom/liber8tech/tago/model/Pattern;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/view/PatternItemView;->setTag(Ljava/lang/Object;)V

    .line 77
    iput-object p1, p0, Lcom/liber8tech/tago/android/view/PatternItemView;->tagoPattern:Lcom/liber8tech/tago/model/Pattern;

    .line 78
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/PatternItemView;->patternImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "patternImage"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Lcom/liber8tech/tago/model/Pattern;->getSrc()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/liber8tech/tago/PicassoExtensionsKt;->loadUrl(Landroid/view/View;Ljava/lang/String;)Lcom/liber8tech/tago/PicassoRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/view/PatternItemView;->IMAGE_TAG:Ljava/lang/String;

    const-string v1, "IMAGE_TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/PicassoRequest;->imageSizeTag(Ljava/lang/String;)Lcom/liber8tech/tago/PicassoRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/PicassoRequest;->centerCrop()Lcom/liber8tech/tago/PicassoRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/PicassoRequest;->start()V

    return-void
.end method
