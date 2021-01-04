.class public final Lcom/liber8tech/tago/android/ui/AttachmentActivityUI;
.super Ljava/lang/Object;
.source "AttachmentActivityUI.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/activity/AttachmentActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttachmentActivityUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttachmentActivityUI.kt\ncom/liber8tech/tago/android/ui/AttachmentActivityUI\n+ 2 CustomViews.kt\norg/jetbrains/anko/CustomViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 Views.kt\norg/jetbrains/anko/Sdk15ViewsKt\n+ 5 Layouts.kt\norg/jetbrains/anko/_LinearLayout\n+ 6 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n+ 7 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,62:1\n46#2,2:63\n28#3,3:65\n28#3,3:69\n31#3,2:75\n28#3,3:87\n31#3,2:95\n28#3,5:109\n31#3,2:125\n1055#4:68\n1056#4,3:72\n1055#4:86\n1056#4:90\n1057#4,2:93\n791#4:108\n786#5,6:77\n792#5,2:84\n786#5,6:97\n792#5,2:106\n786#5,6:114\n792#5,2:123\n62#6:83\n62#6:103\n62#6:104\n62#6:105\n62#6:120\n62#6:121\n62#6:122\n241#7,2:91\n*E\n*S KotlinDebug\n*F\n+ 1 AttachmentActivityUI.kt\ncom/liber8tech/tago/android/ui/AttachmentActivityUI\n*L\n26#1,2:63\n26#1,3:65\n26#1,3:69\n26#1,2:75\n26#1,3:87\n26#1,2:95\n26#1,5:109\n26#1,2:125\n26#1:68\n26#1,3:72\n26#1:86\n26#1:90\n26#1,2:93\n26#1:108\n26#1,6:77\n26#1,2:84\n26#1,6:97\n26#1,2:106\n26#1,6:114\n26#1,2:123\n26#1:83\n26#1:103\n26#1:104\n26#1:105\n26#1:120\n26#1:121\n26#1:122\n26#1,2:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0013H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/ui/AttachmentActivityUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/activity/AttachmentActivity;",
        "()V",
        "loader",
        "Landroid/widget/ProgressBar;",
        "getLoader",
        "()Landroid/widget/ProgressBar;",
        "setLoader",
        "(Landroid/widget/ProgressBar;)V",
        "morePages",
        "Landroid/widget/TextView;",
        "getMorePages",
        "()Landroid/widget/TextView;",
        "setMorePages",
        "(Landroid/widget/TextView;)V",
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
.field public loader:Landroid/widget/ProgressBar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public morePages:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/AttachmentActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;
    .locals 13
    .param p1    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Lcom/liber8tech/tago/android/activity/AttachmentActivity;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    check-cast p1, Landroid/view/ViewManager;

    .line 64
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    invoke-virtual {v0}, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->getVERTICAL_LAYOUT_FACTORY()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 65
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v2, p1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    .line 66
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 67
    move-object v1, v0

    check-cast v1, Lorg/jetbrains/anko/_LinearLayout;

    .line 28
    move-object v2, v1

    check-cast v2, Landroid/view/ViewManager;

    invoke-virtual {v1}, Lorg/jetbrains/anko/_LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0033

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 68
    sget-object v5, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v5}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getTEXT_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 69
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v7, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v6

    .line 70
    invoke-interface {v5, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 71
    move-object v6, v5

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0500b2

    .line 29
    invoke-static {v6, v7}, Lorg/jetbrains/anko/CustomViewPropertiesKt;->setTextColorResource(Landroid/widget/TextView;I)V

    const/16 v7, 0x11

    .line 30
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v8, 0x41800000    # 16.0f

    .line 31
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v4, v2, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 76
    check-cast v6, Landroid/view/View;

    .line 81
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 33
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v8

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 34
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v8

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 35
    move-object v8, v1

    check-cast v8, Landroid/view/View;

    .line 83
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x40

    invoke-static {v9, v10}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 84
    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    invoke-virtual {v1}, Lorg/jetbrains/anko/_LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0f0032

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 86
    sget-object v4, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v4}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getTEXT_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    .line 87
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v9, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v9, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6, v9, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v6

    .line 88
    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 89
    move-object v6, v4

    check-cast v6, Landroid/widget/TextView;

    .line 38
    move-object v9, v6

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x4

    .line 91
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    const v12, 0x7f050066

    .line 39
    invoke-static {v6, v12}, Lorg/jetbrains/anko/CustomViewPropertiesKt;->setTextColorResource(Landroid/widget/TextView;I)V

    .line 40
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v7, 0x41600000    # 14.0f

    .line 41
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 93
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, v2, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 101
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 44
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getWrapContent()I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 103
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "context"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v10}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 104
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "context"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x20

    invoke-static {v4, v6}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 105
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "context"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 106
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/liber8tech/tago/android/ui/AttachmentActivityUI;->morePages:Landroid/widget/TextView;

    .line 108
    sget-object v1, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v1}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getPROGRESS_BAR()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 109
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    .line 110
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 111
    move-object v3, v1

    check-cast v3, Landroid/widget/ProgressBar;

    .line 50
    invoke-virtual {v3, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v4, 0x1

    .line 51
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 52
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "context"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v9, 0x7f050068

    invoke-static {v7, v9}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v7

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 112
    :cond_0
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v2, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 113
    check-cast v3, Landroid/view/View;

    .line 118
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "context"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x60

    invoke-static {v2, v5}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 121
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "context"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 56
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 122
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v10}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 123
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/liber8tech/tago/android/ui/AttachmentActivityUI;->loader:Landroid/widget/ProgressBar;

    .line 125
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, p1, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 126
    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getLoader()Landroid/widget/ProgressBar;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/AttachmentActivityUI;->loader:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "loader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMorePages()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/AttachmentActivityUI;->morePages:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "morePages"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setLoader(Landroid/widget/ProgressBar;)V
    .locals 1
    .param p1    # Landroid/widget/ProgressBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/AttachmentActivityUI;->loader:Landroid/widget/ProgressBar;

    return-void
.end method

.method public final setMorePages(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/AttachmentActivityUI;->morePages:Landroid/widget/TextView;

    return-void
.end method
