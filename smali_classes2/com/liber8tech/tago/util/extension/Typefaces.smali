.class final Lcom/liber8tech/tago/util/extension/Typefaces;
.super Ljava/lang/Object;
.source "TypefacesExtension.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liber8tech/tago/util/extension/Typefaces$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/liber8tech/tago/util/extension/Typefaces;",
        "",
        "()V",
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
.field public static final Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

.field private static bold:Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static italic:Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static regular:Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static semibold:Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/util/extension/Typefaces$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->Companion:Lcom/liber8tech/tago/util/extension/Typefaces$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBold$cp()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 8
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->bold:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static final synthetic access$getItalic$cp()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 8
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->italic:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static final synthetic access$getRegular$cp()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 8
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->regular:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static final synthetic access$getSemibold$cp()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 8
    sget-object v0, Lcom/liber8tech/tago/util/extension/Typefaces;->semibold:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static final synthetic access$setBold$cp(Landroid/graphics/Typeface;)V
    .locals 0
    .param p0    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 8
    sput-object p0, Lcom/liber8tech/tago/util/extension/Typefaces;->bold:Landroid/graphics/Typeface;

    return-void
.end method

.method public static final synthetic access$setItalic$cp(Landroid/graphics/Typeface;)V
    .locals 0
    .param p0    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 8
    sput-object p0, Lcom/liber8tech/tago/util/extension/Typefaces;->italic:Landroid/graphics/Typeface;

    return-void
.end method

.method public static final synthetic access$setRegular$cp(Landroid/graphics/Typeface;)V
    .locals 0
    .param p0    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 8
    sput-object p0, Lcom/liber8tech/tago/util/extension/Typefaces;->regular:Landroid/graphics/Typeface;

    return-void
.end method

.method public static final synthetic access$setSemibold$cp(Landroid/graphics/Typeface;)V
    .locals 0
    .param p0    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 8
    sput-object p0, Lcom/liber8tech/tago/util/extension/Typefaces;->semibold:Landroid/graphics/Typeface;

    return-void
.end method
