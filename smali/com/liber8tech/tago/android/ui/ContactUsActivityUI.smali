.class public final Lcom/liber8tech/tago/android/ui/ContactUsActivityUI;
.super Ljava/lang/Object;
.source "ContactUsActivityUI.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/activity/ContactUsActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactUsActivityUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactUsActivityUI.kt\ncom/liber8tech/tago/android/ui/ContactUsActivityUI\n+ 2 CustomViews.kt\norg/jetbrains/anko/CustomViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 ViewDSL.kt\ncom/liber8tech/tago/android/view/ViewDSLKt\n+ 5 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n+ 6 Layouts.kt\norg/jetbrains/anko/_LinearLayout\n+ 7 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n*L\n1#1,54:1\n46#2,2:55\n28#3,3:57\n52#3:62\n28#3,3:63\n31#3,2:68\n52#3:81\n28#3,3:82\n31#3,2:87\n52#3:100\n28#3,3:101\n31#3,2:106\n31#3,2:117\n14#4:60\n14#4:61\n14#4:79\n14#4:80\n14#4:98\n14#4:99\n164#5,2:66\n164#5,2:85\n164#5,2:104\n786#6,6:70\n792#6,2:77\n786#6,6:89\n792#6,2:96\n786#6,6:108\n792#6,2:115\n62#7:76\n62#7:95\n62#7:114\n*E\n*S KotlinDebug\n*F\n+ 1 ContactUsActivityUI.kt\ncom/liber8tech/tago/android/ui/ContactUsActivityUI\n*L\n16#1,2:55\n16#1,3:57\n16#1:62\n16#1,3:63\n16#1,2:68\n16#1:81\n16#1,3:82\n16#1,2:87\n16#1:100\n16#1,3:101\n16#1,2:106\n16#1,2:117\n16#1:60\n16#1:61\n16#1:79\n16#1:80\n16#1:98\n16#1:99\n16#1,2:66\n16#1,2:85\n16#1,2:104\n16#1,6:70\n16#1,2:77\n16#1,6:89\n16#1,2:96\n16#1,6:108\n16#1,2:115\n16#1:76\n16#1:95\n16#1:114\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/ui/ContactUsActivityUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/activity/ContactUsActivity;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;

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
            "Lcom/liber8tech/tago/android/activity/ContactUsActivity;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p1

    check-cast v0, Landroid/view/ViewManager;

    .line 56
    sget-object v1, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    invoke-virtual {v1}, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->getVERTICAL_LAYOUT_FACTORY()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 57
    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v3, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v3, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    .line 58
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 59
    move-object v2, v1

    check-cast v2, Lorg/jetbrains/anko/_LinearLayout;

    .line 18
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2}, Lorg/jetbrains/anko/_LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f05001b

    invoke-static {v5, v6}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v3, v5}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    .line 19
    check-cast v2, Landroid/view/ViewManager;

    .line 63
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v5

    .line 62
    const-class v6, Lcom/liber8tech/tago/android/view/SettingsRowItem;

    invoke-static {v5, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/liber8tech/tago/android/view/SettingsRowItem;

    .line 20
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0f00d6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/liber8tech/tago/android/view/SettingsRowItem;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v6}, Lcom/liber8tech/tago/android/view/SettingsRowItem;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v8, 0x106000b

    const v9, 0x7f070061

    invoke-static {v7, v9, v8}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->tintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liber8tech/tago/android/view/SettingsRowItem;->setRightIcon(Landroid/graphics/drawable/Drawable;)V

    .line 22
    check-cast v6, Landroid/view/View;

    new-instance v7, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$$special$$inlined$verticalLayout$lambda$1;

    invoke-direct {v7, p1}, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$$special$$inlined$verticalLayout$lambda$1;-><init>(Lorg/jetbrains/anko/AnkoContext;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 66
    new-instance v10, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v10, v7}, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v10, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v7, v2, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 74
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 26
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 76
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "context"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x2d

    invoke-static {v10, v11}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 77
    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v5

    .line 81
    const-class v6, Lcom/liber8tech/tago/android/view/SettingsRowItem;

    invoke-static {v5, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/liber8tech/tago/android/view/SettingsRowItem;

    .line 30
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v10

    const v12, 0x7f0f00d7

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v6, v10}, Lcom/liber8tech/tago/android/view/SettingsRowItem;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {v6}, Lcom/liber8tech/tago/android/view/SettingsRowItem;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v12, "context"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v9, v8}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->tintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/liber8tech/tago/android/view/SettingsRowItem;->setRightIcon(Landroid/graphics/drawable/Drawable;)V

    .line 32
    check-cast v6, Landroid/view/View;

    new-instance v10, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$$special$$inlined$verticalLayout$lambda$2;

    invoke-direct {v10, p1}, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$$special$$inlined$verticalLayout$lambda$2;-><init>(Lorg/jetbrains/anko/AnkoContext;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 85
    new-instance v12, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v12, v10}, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v12, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget-object v10, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v10, v2, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 93
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 95
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v12, "context"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 96
    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    .line 100
    const-class v5, Lcom/liber8tech/tago/android/view/SettingsRowItem;

    invoke-static {v4, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/liber8tech/tago/android/view/SettingsRowItem;

    .line 40
    invoke-virtual {v5}, Lcom/liber8tech/tago/android/view/SettingsRowItem;->getContext()Landroid/content/Context;

    move-result-object v6

    const v10, 0x7f0f0087

    invoke-virtual {v6, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/SettingsRowItem;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v5}, Lcom/liber8tech/tago/android/view/SettingsRowItem;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v10, "context"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v9, v8}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->tintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/SettingsRowItem;->setRightIcon(Landroid/graphics/drawable/Drawable;)V

    .line 42
    check-cast v5, Landroid/view/View;

    new-instance v6, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$$special$$inlined$verticalLayout$lambda$3;

    invoke-direct {v6, p1}, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$$special$$inlined$verticalLayout$lambda$3;-><init>(Lorg/jetbrains/anko/AnkoContext;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 104
    new-instance p1, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {p1, v6}, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget-object p1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p1, v2, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 112
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 114
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 115
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    sget-object p1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p1, v0, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 118
    check-cast v1, Landroid/widget/LinearLayout;

    .line 50
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v0

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v2

    invoke-direct {p1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method
