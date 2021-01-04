.class public final Lcom/liber8tech/tago/android/view/SpinnerRowItem;
.super Landroid/widget/TextView;
.source "SpinnerRowItem.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpinnerRowItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpinnerRowItem.kt\ncom/liber8tech/tago/android/view/SpinnerRowItem\n+ 2 Dimensions.kt\norg/jetbrains/anko/DimensionsKt\n+ 3 CustomViewProperties.kt\norg/jetbrains/anko/CustomViewPropertiesKt\n*L\n1#1,26:1\n62#2:27\n74#3:28\n*E\n*S KotlinDebug\n*F\n+ 1 SpinnerRowItem.kt\ncom/liber8tech/tago/android/view/SpinnerRowItem\n*L\n16#1:27\n16#1:28\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/view/SpinnerRowItem;",
        "Landroid/widget/TextView;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "init",
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
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/SpinnerRowItem;->init()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/view/SpinnerRowItem;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/view/SpinnerRowItem;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/view/SpinnerRowItem;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/view/SpinnerRowItem;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/view/SpinnerRowItem;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/view/SpinnerRowItem;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final init()V
    .locals 2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v0

    .line 28
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/SpinnerRowItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x106000b

    invoke-static {v0, v1}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextColor(Landroid/widget/TextView;I)V

    .line 18
    invoke-static {p0}, Lcom/liber8tech/tago/util/extension/TypefacesExtensionKt;->regular(Landroid/widget/TextView;)V

    .line 19
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/view/SpinnerRowItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f05001a

    invoke-static {v0, v1}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setBackgroundColor(Landroid/view/View;I)V

    return-void
.end method
