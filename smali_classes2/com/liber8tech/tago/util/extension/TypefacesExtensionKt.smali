.class public final Lcom/liber8tech/tago/util/extension/TypefacesExtensionKt;
.super Ljava/lang/Object;
.source "TypefacesExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "bold",
        "",
        "Landroid/widget/TextView;",
        "italic",
        "regular",
        "semibold",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public static final bold(Landroid/widget/TextView;)V
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;->getBold()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-static {v1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;->setBold(Landroid/graphics/Typeface;)V

    .line 28
    :cond_0
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;->getBold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static final italic(Landroid/widget/TextView;)V
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;->getItalic()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080001

    invoke-static {v1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;->setItalic(Landroid/graphics/Typeface;)V

    .line 35
    :cond_0
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;->getItalic()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static final regular(Landroid/widget/TextView;)V
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;->getRegular()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080002

    invoke-static {v1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;->setRegular(Landroid/graphics/Typeface;)V

    .line 21
    :cond_0
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;->getRegular()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static final semibold(Landroid/widget/TextView;)V
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;->getSemibold()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080003

    invoke-static {v1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;->setSemibold(Landroid/graphics/Typeface;)V

    .line 42
    :cond_0
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    invoke-virtual {v0}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;->getSemibold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
