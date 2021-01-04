.class public final Lcom/liber8tech/tago/util/extension/Typefaces$Companion;
.super Ljava/lang/Object;
.source "TypefacesExtension.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liber8tech/tago/util/extension/Typefaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/liber8tech/tago/util/extension/Typefaces$Companion;",
        "",
        "()V",
        "bold",
        "Landroid/graphics/Typeface;",
        "getBold",
        "()Landroid/graphics/Typeface;",
        "setBold",
        "(Landroid/graphics/Typeface;)V",
        "italic",
        "getItalic",
        "setItalic",
        "regular",
        "getRegular",
        "setRegular",
        "semibold",
        "getSemibold",
        "setSemibold",
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
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBold()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 11
    invoke-static {}, Lcom/liber8tech/tago/util/extension/Typefaces;->access$getBold$cp()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getItalic()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 12
    invoke-static {}, Lcom/liber8tech/tago/util/extension/Typefaces;->access$getItalic$cp()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getRegular()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 10
    invoke-static {}, Lcom/liber8tech/tago/util/extension/Typefaces;->access$getRegular$cp()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getSemibold()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 13
    invoke-static {}, Lcom/liber8tech/tago/util/extension/Typefaces;->access$getSemibold$cp()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final setBold(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/Typefaces;->access$setBold$cp(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setItalic(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 12
    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/Typefaces;->access$setItalic$cp(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setRegular(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/Typefaces;->access$setRegular$cp(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setSemibold(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/Typefaces;->access$setSemibold$cp(Landroid/graphics/Typeface;)V

    return-void
.end method
