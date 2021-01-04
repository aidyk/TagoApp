.class public final Lcom/liber8tech/tago/android/drawable/DevicePreview;
.super Landroid/graphics/drawable/Drawable;
.source "DevicePreview.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\'\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0008H\u0016J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0016J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0008H\u0016J\u0012\u0010\u0016\u001a\u00020\u000e2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/drawable/DevicePreview;",
        "Landroid/graphics/drawable/Drawable;",
        "arc",
        "Lcom/liber8tech/tago/model/Arc;",
        "rect",
        "Landroid/graphics/RectF;",
        "innerRect",
        "borderColor",
        "",
        "(Lcom/liber8tech/tago/model/Arc;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V",
        "paint",
        "Landroid/graphics/Paint;",
        "paintBorder",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getIntrinsicHeight",
        "getIntrinsicWidth",
        "getOpacity",
        "setAlpha",
        "alpha",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
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
.field public static final Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

.field private static final black:Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final gold:Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final silver:Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final unknown:Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final arc:Lcom/liber8tech/tago/model/Arc;

.field private final innerRect:Landroid/graphics/RectF;

.field private final paint:Landroid/graphics/Paint;

.field private final paintBorder:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    .line 26
    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    sget-object v1, Lcom/liber8tech/tago/android/TagoApplication;->Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/TagoApplication$Companion;->getInstance()Lcom/liber8tech/tago/android/TagoApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/liber8tech/tago/model/Arc;->Gold:Lcom/liber8tech/tago/model/Arc;

    invoke-static {v0, v1, v2}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->access$from(Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;Landroid/content/Context;Lcom/liber8tech/tago/model/Arc;)Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    sput-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->gold:Lcom/liber8tech/tago/android/drawable/DevicePreview;

    .line 27
    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    sget-object v1, Lcom/liber8tech/tago/android/TagoApplication;->Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/TagoApplication$Companion;->getInstance()Lcom/liber8tech/tago/android/TagoApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/liber8tech/tago/model/Arc;->Silver:Lcom/liber8tech/tago/model/Arc;

    invoke-static {v0, v1, v2}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->access$from(Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;Landroid/content/Context;Lcom/liber8tech/tago/model/Arc;)Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    sput-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->silver:Lcom/liber8tech/tago/android/drawable/DevicePreview;

    .line 28
    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    sget-object v1, Lcom/liber8tech/tago/android/TagoApplication;->Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/TagoApplication$Companion;->getInstance()Lcom/liber8tech/tago/android/TagoApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/liber8tech/tago/model/Arc;->Black:Lcom/liber8tech/tago/model/Arc;

    invoke-static {v0, v1, v2}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->access$from(Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;Landroid/content/Context;Lcom/liber8tech/tago/model/Arc;)Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    sput-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->black:Lcom/liber8tech/tago/android/drawable/DevicePreview;

    .line 29
    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->Companion:Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;

    sget-object v1, Lcom/liber8tech/tago/android/TagoApplication;->Companion:Lcom/liber8tech/tago/android/TagoApplication$Companion;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/TagoApplication$Companion;->getInstance()Lcom/liber8tech/tago/android/TagoApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/liber8tech/tago/model/Arc;->Unknown:Lcom/liber8tech/tago/model/Arc;

    invoke-static {v0, v1, v2}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->access$from(Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;Landroid/content/Context;Lcom/liber8tech/tago/model/Arc;)Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    sput-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->unknown:Lcom/liber8tech/tago/android/drawable/DevicePreview;

    return-void
.end method

.method private constructor <init>(Lcom/liber8tech/tago/model/Arc;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->arc:Lcom/liber8tech/tago/model/Arc;

    iput-object p2, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->rect:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->innerRect:Landroid/graphics/RectF;

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->paint:Landroid/graphics/Paint;

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->paintBorder:Landroid/graphics/Paint;

    .line 36
    iget-object p1, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->paint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->arc:Lcom/liber8tech/tago/model/Arc;

    invoke-virtual {p2}, Lcom/liber8tech/tago/model/Arc;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p1, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/liber8tech/tago/model/Arc;Landroid/graphics/RectF;Landroid/graphics/RectF;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1    # Lcom/liber8tech/tago/model/Arc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liber8tech/tago/android/drawable/DevicePreview;-><init>(Lcom/liber8tech/tago/model/Arc;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    return-void
.end method

.method public static final synthetic access$getBlack$cp()Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->black:Lcom/liber8tech/tago/android/drawable/DevicePreview;

    return-object v0
.end method

.method public static final synthetic access$getGold$cp()Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->gold:Lcom/liber8tech/tago/android/drawable/DevicePreview;

    return-object v0
.end method

.method public static final synthetic access$getSilver$cp()Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->silver:Lcom/liber8tech/tago/android/drawable/DevicePreview;

    return-object v0
.end method

.method public static final synthetic access$getUnknown$cp()Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    sget-object v0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->unknown:Lcom/liber8tech/tago/android/drawable/DevicePreview;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->arc:Lcom/liber8tech/tago/model/Arc;

    sget-object v1, Lcom/liber8tech/tago/model/Arc;->Unknown:Lcom/liber8tech/tago/model/Arc;

    const/high16 v2, 0x42480000    # 50.0f

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 47
    iget-object v0, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->innerRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/liber8tech/tago/android/drawable/DevicePreview;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
