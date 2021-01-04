.class public final Lcom/liber8tech/tago/android/ui/TagoDetailsUI;
.super Ljava/lang/Object;
.source "TagoDetailsUI.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTagoDetailsUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagoDetailsUI.kt\ncom/liber8tech/tago/android/ui/TagoDetailsUI\n+ 2 CustomViews.kt\norg/jetbrains/anko/CustomViewsKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n+ 4 ViewDSL.kt\ncom/liber8tech/tago/android/view/ViewDSLKt\n+ 5 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n+ 6 Layouts.kt\norg/jetbrains/anko/_LinearLayout\n+ 7 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n+ 8 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,100:1\n46#2,2:101\n28#3,3:103\n52#3:108\n28#3,3:109\n31#3,2:114\n52#3:118\n28#3,5:119\n52#3:126\n28#3,5:127\n52#3:134\n28#3,5:135\n52#3:142\n28#3,5:143\n52#3:150\n28#3,3:151\n31#3,2:156\n52#3:171\n28#3,3:172\n31#3,2:179\n31#3,2:192\n20#4:106\n20#4:107\n20#4:116\n20#4:117\n20#4:124\n20#4:125\n20#4:132\n20#4:133\n20#4:140\n20#4:141\n11#4:148\n11#4:149\n11#4:169\n11#4:170\n176#5,2:112\n164#5,2:154\n164#5,2:175\n786#6,6:158\n792#6,2:167\n786#6,6:181\n792#6,2:190\n62#7:164\n62#7:165\n62#7:166\n62#7:187\n62#7:188\n62#7:189\n262#8,2:177\n*E\n*S KotlinDebug\n*F\n+ 1 TagoDetailsUI.kt\ncom/liber8tech/tago/android/ui/TagoDetailsUI\n*L\n34#1,2:101\n34#1,3:103\n34#1:108\n34#1,3:109\n34#1,2:114\n34#1:118\n34#1,5:119\n34#1:126\n34#1,5:127\n34#1:134\n34#1,5:135\n34#1:142\n34#1,5:143\n34#1:150\n34#1,3:151\n34#1,2:156\n34#1:171\n34#1,3:172\n34#1,2:179\n34#1,2:192\n34#1:106\n34#1:107\n34#1:116\n34#1:117\n34#1:124\n34#1:125\n34#1:132\n34#1:133\n34#1:140\n34#1:141\n34#1:148\n34#1:149\n34#1:169\n34#1:170\n34#1,2:112\n34#1,2:154\n34#1,2:175\n34#1,6:158\n34#1,2:167\n34#1,6:181\n34#1,2:190\n34#1:164\n34#1:165\n34#1:166\n34#1:187\n34#1:188\n34#1:189\n34#1,2:177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u00101\u001a\u0002022\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000204H\u0016J\u0016\u00105\u001a\u00020\u00162\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R&\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR,\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00160\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0007\"\u0004\u0008$\u0010\tR\u001a\u0010%\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0007\"\u0004\u0008\'\u0010\tR&\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0018\"\u0004\u0008*\u0010\u001aR\u001a\u0010+\u001a\u00020\u000eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0010\"\u0004\u0008-\u0010\u0012R\u001a\u0010.\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0007\"\u0004\u00080\u0010\t\u00a8\u0006:"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/ui/TagoDetailsUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;",
        "()V",
        "battery",
        "Lcom/liber8tech/tago/android/view/TextInputView;",
        "getBattery",
        "()Lcom/liber8tech/tago/android/view/TextInputView;",
        "setBattery",
        "(Lcom/liber8tech/tago/android/view/TextInputView;)V",
        "color",
        "getColor",
        "setColor",
        "deleteButton",
        "Landroid/widget/Button;",
        "getDeleteButton",
        "()Landroid/widget/Button;",
        "setDeleteButton",
        "(Landroid/widget/Button;)V",
        "deleteOnClick",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "getDeleteOnClick",
        "()Lkotlin/jvm/functions/Function1;",
        "setDeleteOnClick",
        "(Lkotlin/jvm/functions/Function1;)V",
        "editTextFocusChange",
        "Lkotlin/Function2;",
        "",
        "getEditTextFocusChange",
        "()Lkotlin/jvm/functions/Function2;",
        "setEditTextFocusChange",
        "(Lkotlin/jvm/functions/Function2;)V",
        "mac",
        "getMac",
        "setMac",
        "name",
        "getName",
        "setName",
        "save",
        "getSave",
        "setSave",
        "saveButton",
        "getSaveButton",
        "setSaveButton",
        "size",
        "getSize",
        "setSize",
        "createView",
        "Landroid/widget/LinearLayout;",
        "ui",
        "Lorg/jetbrains/anko/AnkoContext;",
        "setTago",
        "ctx",
        "Landroid/content/Context;",
        "device",
        "Lcom/liber8tech/tago/model/TagoDevice;",
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
.field public battery:Lcom/liber8tech/tago/android/view/TextInputView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public color:Lcom/liber8tech/tago/android/view/TextInputView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public deleteButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private deleteOnClick:Lkotlin/jvm/functions/Function1;
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

.field private editTextFocusChange:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public mac:Lcom/liber8tech/tago/android/view/TextInputView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public name:Lcom/liber8tech/tago/android/view/TextInputView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private save:Lkotlin/jvm/functions/Function1;
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

.field public saveButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public size:Lcom/liber8tech/tago/android/view/TextInputView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$deleteOnClick$1;->INSTANCE:Lcom/liber8tech/tago/android/ui/TagoDetailsUI$deleteOnClick$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->deleteOnClick:Lkotlin/jvm/functions/Function1;

    .line 31
    sget-object v0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$save$1;->INSTANCE:Lcom/liber8tech/tago/android/ui/TagoDetailsUI$save$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->save:Lkotlin/jvm/functions/Function1;

    .line 32
    sget-object v0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$editTextFocusChange$1;->INSTANCE:Lcom/liber8tech/tago/android/ui/TagoDetailsUI$editTextFocusChange$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->editTextFocusChange:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;
    .locals 11
    .param p1    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    check-cast p1, Landroid/view/ViewManager;

    .line 102
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    invoke-virtual {v0}, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->getVERTICAL_LAYOUT_FACTORY()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 103
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v2, p1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    .line 104
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 105
    move-object v1, v0

    check-cast v1, Lorg/jetbrains/anko/_LinearLayout;

    .line 36
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1}, Lorg/jetbrains/anko/_LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f05001b

    invoke-static {v4, v5}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v2, v4}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    .line 37
    check-cast v1, Landroid/view/ViewManager;

    .line 109
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    .line 108
    const-class v5, Lcom/liber8tech/tago/android/view/TextInputView;

    invoke-static {v4, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/liber8tech/tago/android/view/TextInputView;

    .line 38
    invoke-virtual {v5}, Lcom/liber8tech/tago/android/view/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f00ba

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.name)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).toUpperCase()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/TextInputView;->setHintText(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v5}, Lcom/liber8tech/tago/android/view/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f0700a8

    invoke-static {v6, v7}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/TextInputView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {v5}, Lcom/liber8tech/tago/android/view/TextInputView;->getEditText()Landroid/support/design/widget/TextInputEditText;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    new-instance v7, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$createView$$inlined$with$lambda$1;

    invoke-direct {v7, p0}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$createView$$inlined$with$lambda$1;-><init>(Lcom/liber8tech/tago/android/ui/TagoDetailsUI;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 112
    new-instance v8, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$inlined$sam$i$android_view_View_OnFocusChangeListener$0;

    invoke-direct {v8, v7}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$inlined$sam$i$android_view_View_OnFocusChangeListener$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v8, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 114
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v1, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 107
    iput-object v5, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->name:Lcom/liber8tech/tago/android/view/TextInputView;

    .line 119
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    .line 118
    const-class v5, Lcom/liber8tech/tago/android/view/TextInputView;

    invoke-static {v4, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/liber8tech/tago/android/view/TextInputView;

    .line 43
    invoke-virtual {v5}, Lcom/liber8tech/tago/android/view/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f0057

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.color)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).toUpperCase()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/TextInputView;->setHintText(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v5, v3}, Lcom/liber8tech/tago/android/view/TextInputView;->setTextEnabled(Z)V

    .line 122
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v1, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 117
    iput-object v5, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->color:Lcom/liber8tech/tago/android/view/TextInputView;

    .line 127
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    .line 126
    const-class v5, Lcom/liber8tech/tago/android/view/TextInputView;

    invoke-static {v4, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/liber8tech/tago/android/view/TextInputView;

    .line 47
    invoke-virtual {v5}, Lcom/liber8tech/tago/android/view/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f00e6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.size)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).toUpperCase()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/TextInputView;->setHintText(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v5, v3}, Lcom/liber8tech/tago/android/view/TextInputView;->setTextEnabled(Z)V

    .line 130
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v1, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 125
    iput-object v5, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->size:Lcom/liber8tech/tago/android/view/TextInputView;

    .line 135
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    .line 134
    const-class v5, Lcom/liber8tech/tago/android/view/TextInputView;

    invoke-static {v4, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/liber8tech/tago/android/view/TextInputView;

    .line 51
    invoke-virtual {v5}, Lcom/liber8tech/tago/android/view/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f0049

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.battery)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).toUpperCase()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/TextInputView;->setHintText(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v5, v3}, Lcom/liber8tech/tago/android/view/TextInputView;->setTextEnabled(Z)V

    .line 138
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v1, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 133
    iput-object v5, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->battery:Lcom/liber8tech/tago/android/view/TextInputView;

    .line 143
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    .line 142
    const-class v5, Lcom/liber8tech/tago/android/view/TextInputView;

    invoke-static {v4, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/liber8tech/tago/android/view/TextInputView;

    .line 55
    invoke-virtual {v5}, Lcom/liber8tech/tago/android/view/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f004a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.bluetooth)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).toUpperCase()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/TextInputView;->setHintText(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v5, v3}, Lcom/liber8tech/tago/android/view/TextInputView;->setTextEnabled(Z)V

    .line 146
    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v1, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 141
    iput-object v5, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->mac:Lcom/liber8tech/tago/android/view/TextInputView;

    .line 151
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v4

    .line 150
    const-class v5, Lcom/liber8tech/tago/android/view/TagoButton;

    invoke-static {v4, v5}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/liber8tech/tago/android/view/TagoButton;

    .line 59
    invoke-virtual {v5}, Lcom/liber8tech/tago/android/view/TagoButton;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f0086

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/TagoButton;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget-object v6, Lcom/liber8tech/tago/android/view/TagoButtonColor;->RED:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    invoke-virtual {v5, v6}, Lcom/liber8tech/tago/android/view/TagoButton;->setColor(Lcom/liber8tech/tago/android/view/TagoButtonColor;)V

    .line 61
    move-object v6, v5

    check-cast v6, Landroid/view/View;

    new-instance v7, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$createView$$inlined$with$lambda$2;

    invoke-direct {v7, v5, p0}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$createView$$inlined$with$lambda$2;-><init>(Lcom/liber8tech/tago/android/view/TagoButton;Lcom/liber8tech/tago/android/ui/TagoDetailsUI;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 154
    new-instance v5, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v5, v7}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    sget-object v5, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v5, v1, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 162
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x38

    invoke-static {v7, v8}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 165
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "context"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x14

    invoke-static {v7, v9}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 166
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v10, "context"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 68
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 167
    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->deleteButton:Landroid/widget/Button;

    .line 172
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v6, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v6, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    .line 171
    const-class v4, Lcom/liber8tech/tago/android/view/TagoButton;

    invoke-static {v3, v4}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/liber8tech/tago/android/view/TagoButton;

    .line 71
    invoke-virtual {v4}, Lcom/liber8tech/tago/android/view/TagoButton;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f00e2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lcom/liber8tech/tago/android/view/TagoButton;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget-object v6, Lcom/liber8tech/tago/android/view/TagoButtonColor;->GOLD:Lcom/liber8tech/tago/android/view/TagoButtonColor;

    invoke-virtual {v4, v6}, Lcom/liber8tech/tago/android/view/TagoButton;->setColor(Lcom/liber8tech/tago/android/view/TagoButtonColor;)V

    .line 73
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    new-instance v7, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$createView$$inlined$with$lambda$3;

    invoke-direct {v7, v4, p0}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$createView$$inlined$with$lambda$3;-><init>(Lcom/liber8tech/tago/android/view/TagoButton;Lcom/liber8tech/tago/android/ui/TagoDetailsUI;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 175
    new-instance v4, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v4, v7}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x8

    .line 177
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 179
    sget-object v4, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v4, v1, v3}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 185
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 187
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 188
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v9}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 189
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v9}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 81
    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 190
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->saveButton:Landroid/widget/Button;

    .line 192
    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, p1, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    .line 193
    check-cast v0, Landroid/widget/LinearLayout;

    .line 84
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v1

    invoke-static {}, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->getMatchParent()I

    move-result v2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    .line 55
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getBattery()Lcom/liber8tech/tago/android/view/TextInputView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->battery:Lcom/liber8tech/tago/android/view/TextInputView;

    if-nez v0, :cond_0

    const-string v1, "battery"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getColor()Lcom/liber8tech/tago/android/view/TextInputView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->color:Lcom/liber8tech/tago/android/view/TextInputView;

    if-nez v0, :cond_0

    const-string v1, "color"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getDeleteButton()Landroid/widget/Button;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->deleteButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v1, "deleteButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getDeleteOnClick()Lkotlin/jvm/functions/Function1;
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

    .line 30
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->deleteOnClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getEditTextFocusChange()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->editTextFocusChange:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getMac()Lcom/liber8tech/tago/android/view/TextInputView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->mac:Lcom/liber8tech/tago/android/view/TextInputView;

    if-nez v0, :cond_0

    const-string v1, "mac"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getName()Lcom/liber8tech/tago/android/view/TextInputView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->name:Lcom/liber8tech/tago/android/view/TextInputView;

    if-nez v0, :cond_0

    const-string v1, "name"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSave()Lkotlin/jvm/functions/Function1;
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

    .line 31
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->save:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getSaveButton()Landroid/widget/Button;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->saveButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v1, "saveButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSize()Lcom/liber8tech/tago/android/view/TextInputView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->size:Lcom/liber8tech/tago/android/view/TextInputView;

    if-nez v0, :cond_0

    const-string v1, "size"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setBattery(Lcom/liber8tech/tago/android/view/TextInputView;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/android/view/TextInputView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->battery:Lcom/liber8tech/tago/android/view/TextInputView;

    return-void
.end method

.method public final setColor(Lcom/liber8tech/tago/android/view/TextInputView;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/android/view/TextInputView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->color:Lcom/liber8tech/tago/android/view/TextInputView;

    return-void
.end method

.method public final setDeleteButton(Landroid/widget/Button;)V
    .locals 1
    .param p1    # Landroid/widget/Button;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->deleteButton:Landroid/widget/Button;

    return-void
.end method

.method public final setDeleteOnClick(Lkotlin/jvm/functions/Function1;)V
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

    .line 30
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->deleteOnClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setEditTextFocusChange(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->editTextFocusChange:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setMac(Lcom/liber8tech/tago/android/view/TextInputView;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/android/view/TextInputView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->mac:Lcom/liber8tech/tago/android/view/TextInputView;

    return-void
.end method

.method public final setName(Lcom/liber8tech/tago/android/view/TextInputView;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/android/view/TextInputView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->name:Lcom/liber8tech/tago/android/view/TextInputView;

    return-void
.end method

.method public final setSave(Lkotlin/jvm/functions/Function1;)V
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

    .line 31
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->save:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSaveButton(Landroid/widget/Button;)V
    .locals 1
    .param p1    # Landroid/widget/Button;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->saveButton:Landroid/widget/Button;

    return-void
.end method

.method public final setSize(Lcom/liber8tech/tago/android/view/TextInputView;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/android/view/TextInputView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->size:Lcom/liber8tech/tago/android/view/TextInputView;

    return-void
.end method

.method public final setTago(Landroid/content/Context;Lcom/liber8tech/tago/model/TagoDevice;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/liber8tech/tago/model/TagoDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->name:Lcom/liber8tech/tago/android/view/TextInputView;

    if-nez v0, :cond_0

    const-string v1, "name"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/liber8tech/tago/model/TagoDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/view/TextInputView;->setText(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->size:Lcom/liber8tech/tago/android/view/TextInputView;

    if-nez v0, :cond_2

    const-string v1, "size"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/liber8tech/tago/model/TagoDevice;->getSize()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/view/TextInputView;->setText(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->color:Lcom/liber8tech/tago/android/view/TextInputView;

    if-nez v0, :cond_4

    const-string v1, "color"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Lcom/liber8tech/tago/model/TagoDevice;->getColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/view/TextInputView;->setText(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Lcom/liber8tech/tago/model/TagoDevice;->getLowBattery()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->battery:Lcom/liber8tech/tago/android/view/TextInputView;

    if-nez v0, :cond_6

    const-string v1, "battery"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    const v1, 0x7f0f00b7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ctx.getString(R.string.low_battery)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/view/TextInputView;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->battery:Lcom/liber8tech/tago/android/view/TextInputView;

    if-nez v0, :cond_8

    const-string v1, "battery"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    const v1, 0x7f0f00bf

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ctx.getString(R.string.normal_battery)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/view/TextInputView;->setText(Ljava/lang/String;)V

    .line 97
    :goto_3
    iget-object p1, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->mac:Lcom/liber8tech/tago/android/view/TextInputView;

    if-nez p1, :cond_9

    const-string v0, "mac"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p2}, Lcom/liber8tech/tago/model/TagoDevice;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/liber8tech/tago/android/view/TextInputView;->setText(Ljava/lang/String;)V

    return-void
.end method
