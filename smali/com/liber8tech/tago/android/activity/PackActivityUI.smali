.class final Lcom/liber8tech/tago/android/activity/PackActivityUI;
.super Ljava/lang/Object;
.source "PackActivity.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/activity/PackActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPackActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PackActivity.kt\ncom/liber8tech/tago/android/activity/PackActivityUI\n+ 2 Views.kt\norg/jetbrains/anko/Sdk15ViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 Layouts.kt\norg/jetbrains/anko/_ScrollView\n+ 5 Layouts.kt\norg/jetbrains/anko/_FrameLayout\n+ 6 ViewDSL.kt\ncom/liber8tech/tago/android/view/ViewDSLKt\n+ 7 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n+ 8 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n*L\n1#1,185:1\n1328#2:186\n1598#2:190\n663#2,3:194\n28#3,3:187\n28#3,3:191\n28#3,5:197\n31#3,2:205\n52#3:212\n28#3,3:213\n31#3,2:218\n31#3,2:231\n1084#4,3:202\n233#5,3:207\n219#5,6:220\n225#5,2:229\n11#6:210\n11#6:211\n164#7,2:216\n62#8:226\n62#8:227\n62#8:228\n*E\n*S KotlinDebug\n*F\n+ 1 PackActivity.kt\ncom/liber8tech/tago/android/activity/PackActivityUI\n*L\n158#1:186\n158#1:190\n158#1,3:194\n158#1,3:187\n158#1,3:191\n158#1,5:197\n158#1,2:205\n158#1:212\n158#1,3:213\n158#1,2:218\n158#1,2:231\n158#1,3:202\n158#1,3:207\n158#1,6:220\n158#1,2:229\n158#1:210\n158#1:211\n158#1,2:216\n158#1:226\n158#1:227\n158#1:228\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u0018\u001a\u00020\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001bH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR&\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/PackActivityUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/activity/PackActivity;",
        "()V",
        "patternsImage",
        "Landroid/widget/ImageView;",
        "getPatternsImage",
        "()Landroid/widget/ImageView;",
        "setPatternsImage",
        "(Landroid/widget/ImageView;)V",
        "purchaseButton",
        "Landroid/widget/Button;",
        "getPurchaseButton",
        "()Landroid/widget/Button;",
        "setPurchaseButton",
        "(Landroid/widget/Button;)V",
        "purchaseButtonClick",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "getPurchaseButtonClick",
        "()Lkotlin/jvm/functions/Function1;",
        "setPurchaseButtonClick",
        "(Lkotlin/jvm/functions/Function1;)V",
        "createView",
        "Landroid/widget/FrameLayout;",
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
.field public patternsImage:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public purchaseButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private purchaseButtonClick:Lkotlin/jvm/functions/Function1;
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

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Lcom/liber8tech/tago/android/activity/PackActivityUI$purchaseButtonClick$1;->INSTANCE:Lcom/liber8tech/tago/android/activity/PackActivityUI$purchaseButtonClick$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivityUI;->purchaseButtonClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/PackActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;
    .locals 9
    .param p1    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Lcom/liber8tech/tago/android/activity/PackActivity;",
            ">;)",
            "Landroid/widget/FrameLayout;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    check-cast p1, Landroid/view/ViewManager;

    .line 186
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;

    invoke-virtual {v0}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->getFRAME_LAYOUT()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 187
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v2, p1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    .line 188
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 189
    move-object v1, v0

    check-cast v1, Lorg/jetbrains/anko/_FrameLayout;

    .line 160
    move-object v2, v1

    check-cast v2, Landroid/view/ViewManager;

    .line 190
    sget-object v4, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;

    invoke-virtual {v4}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15ViewGroup;->getSCROLL_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    .line 191
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v5

    .line 192
    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 193
    move-object v5, v4

    check-cast v5, Lorg/jetbrains/anko/_ScrollView;

    const/4 v6, 0x1

    .line 161
    invoke-virtual {v5, v6}, Lorg/jetbrains/anko/_ScrollView;->setFillViewport(Z)V

    .line 162
    check-cast v5, Landroid/view/ViewManager;

    .line 196
    sget-object v6, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;

    invoke-virtual {v6}, Lorg/jetbrains/anko/$$Anko$Factories$Sdk15View;->getIMAGE_VIEW()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 197
    sget-object v7, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v8, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v7

    .line 198
    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 199
    move-object v7, v6

    check-cast v7, Landroid/widget/ImageView;

    .line 200
    sget-object v8, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v8, v5, v6}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 194
    check-cast v7, Landroid/view/View;

    .line 202
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x550

    const/16 v8, 0x1702

    invoke-direct {v5, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 203
    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/liber8tech/tago/android/activity/PackActivityUI;->patternsImage:Landroid/widget/ImageView;

    .line 163
    iget-object v5, p0, Lcom/liber8tech/tago/android/activity/PackActivityUI;->patternsImage:Landroid/widget/ImageView;

    if-nez v5, :cond_0

    const-string v6, "patternsImage"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v2, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 206
    check-cast v4, Landroid/widget/ScrollView;

    check-cast v4, Landroid/view/View;

    .line 164
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v5

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v6

    .line 207
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 208
    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    .line 212
    const-class v4, Lcom/liber8tech/tago/android/view/TagoButton;

    invoke-static {v3, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/liber8tech/tago/android/view/TagoButton;

    .line 166
    sget-object v5, Lcom/liber8tech/tago/android/view/TagoButtonColor;->GREEN:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    invoke-virtual {v4, v5}, Lcom/liber8tech/tago/android/view/TagoButton;->setColor(Lcom/liber8tech/tago/android/view/TagoButtonColor;)V

    .line 167
    invoke-virtual {v4}, Lcom/liber8tech/tago/android/view/TagoButton;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f00a3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/liber8tech/tago/android/view/TagoButton;->setText(Ljava/lang/CharSequence;)V

    .line 168
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    new-instance v6, Lcom/liber8tech/tago/android/activity/PackActivityUI$createView$$inlined$with$lambda$1;

    invoke-direct {v6, v4, p0}, Lcom/liber8tech/tago/android/activity/PackActivityUI$createView$$inlined$with$lambda$1;-><init>(Lcom/liber8tech/tago/android/view/TagoButton;Lcom/liber8tech/tago/android/activity/PackActivityUI;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 216
    new-instance v4, Lcom/liber8tech/tago/android/activity/PackActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v4, v6}, Lcom/liber8tech/tago/android/activity/PackActivityUI$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v4, v2, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 224
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 172
    check-cast v1, Landroid/view/View;

    const/16 v3, 0x40

    .line 226
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "context"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 227
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 228
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 175
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x50

    .line 176
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 229
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/liber8tech/tago/android/activity/PackActivityUI;->purchaseButton:Landroid/widget/Button;

    .line 231
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, p1, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 232
    check-cast v0, Landroid/widget/FrameLayout;

    .line 179
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v1

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getPatternsImage()Landroid/widget/ImageView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivityUI;->patternsImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "patternsImage"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getPurchaseButton()Landroid/widget/Button;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivityUI;->purchaseButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v1, "purchaseButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getPurchaseButtonClick()Lkotlin/jvm/functions/Function1;
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

    .line 157
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivityUI;->purchaseButtonClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setPatternsImage(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivityUI;->patternsImage:Landroid/widget/ImageView;

    return-void
.end method

.method public final setPurchaseButton(Landroid/widget/Button;)V
    .locals 1
    .param p1    # Landroid/widget/Button;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivityUI;->purchaseButton:Landroid/widget/Button;

    return-void
.end method

.method public final setPurchaseButtonClick(Lkotlin/jvm/functions/Function1;)V
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

    .line 157
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivityUI;->purchaseButtonClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method
