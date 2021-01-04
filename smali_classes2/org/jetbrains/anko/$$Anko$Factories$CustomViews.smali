.class public final Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;
.super Ljava/lang/Object;
.source "CustomViews.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008R\u001d\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\r0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "org/jetbrains/anko/$$Anko$Factories$CustomViews",
        "",
        "()V",
        "EDIT_TEXT",
        "Lkotlin/Function1;",
        "Landroid/content/Context;",
        "Landroid/widget/EditText;",
        "getEDIT_TEXT",
        "()Lkotlin/jvm/functions/Function1;",
        "HORIZONTAL_PROGRESS_BAR_FACTORY",
        "Landroid/widget/ProgressBar;",
        "getHORIZONTAL_PROGRESS_BAR_FACTORY",
        "VERTICAL_LAYOUT_FACTORY",
        "Lorg/jetbrains/anko/_LinearLayout;",
        "getVERTICAL_LAYOUT_FACTORY",
        "platform-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# static fields
.field private static final EDIT_TEXT:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HORIZONTAL_PROGRESS_BAR_FACTORY:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

.field private static final VERTICAL_LAYOUT_FACTORY:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Lorg/jetbrains/anko/_LinearLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    invoke-direct {v0}, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;-><init>()V

    sput-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;

    .line 32
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews$VERTICAL_LAYOUT_FACTORY$1;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews$VERTICAL_LAYOUT_FACTORY$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->VERTICAL_LAYOUT_FACTORY:Lkotlin/jvm/functions/Function1;

    .line 38
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews$EDIT_TEXT$1;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews$EDIT_TEXT$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->EDIT_TEXT:Lkotlin/jvm/functions/Function1;

    .line 40
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews$HORIZONTAL_PROGRESS_BAR_FACTORY$1;->INSTANCE:Lorg/jetbrains/anko/$$Anko$Factories$CustomViews$HORIZONTAL_PROGRESS_BAR_FACTORY$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->HORIZONTAL_PROGRESS_BAR_FACTORY:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEDIT_TEXT()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->EDIT_TEXT:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getHORIZONTAL_PROGRESS_BAR_FACTORY()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->HORIZONTAL_PROGRESS_BAR_FACTORY:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getVERTICAL_LAYOUT_FACTORY()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Lorg/jetbrains/anko/_LinearLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    sget-object v0, Lorg/jetbrains/anko/$$Anko$Factories$CustomViews;->VERTICAL_LAYOUT_FACTORY:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
