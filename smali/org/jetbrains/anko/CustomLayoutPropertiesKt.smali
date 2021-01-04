.class public final Lorg/jetbrains/anko/CustomLayoutPropertiesKt;
.super Ljava/lang/Object;
.source "CustomLayoutProperties.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\"(\u0010\u0007\u001a\u00020\u0001*\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00018G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\"(\u0010\r\u001a\u00020\u0001*\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00018G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000c\"(\u0010\u0010\u001a\u00020\u0001*\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00018G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "matchParent",
        "",
        "getMatchParent",
        "()I",
        "wrapContent",
        "getWrapContent",
        "v",
        "horizontalMargin",
        "Landroid/view/ViewGroup$MarginLayoutParams;",
        "getHorizontalMargin",
        "(Landroid/view/ViewGroup$MarginLayoutParams;)I",
        "setHorizontalMargin",
        "(Landroid/view/ViewGroup$MarginLayoutParams;I)V",
        "margin",
        "getMargin",
        "setMargin",
        "verticalMargin",
        "getVerticalMargin",
        "setVerticalMargin",
        "platform-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field private static final matchParent:I = -0x1

.field private static final wrapContent:I = -0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getHorizontalMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1
    .param p0    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Property does not have a getter"
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object p0, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p0}, Lorg/jetbrains/anko/internals/AnkoInternals;->noGetter()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public static final getMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1
    .param p0    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Property does not have a getter"
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object p0, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p0}, Lorg/jetbrains/anko/internals/AnkoInternals;->noGetter()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public static final getMatchParent()I
    .locals 1

    .line 25
    sget v0, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->matchParent:I

    return v0
.end method

.method public static final getVerticalMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1
    .param p0    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Property does not have a getter"
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object p0, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {p0}, Lorg/jetbrains/anko/internals/AnkoInternals;->noGetter()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public static final getWrapContent()I
    .locals 1

    .line 26
    sget v0, Lorg/jetbrains/anko/CustomLayoutPropertiesKt;->wrapContent:I

    return v0
.end method

.method public static final setHorizontalMargin(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method

.method public static final setMargin(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 43
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 44
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 45
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method public static final setVerticalMargin(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 32
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method
