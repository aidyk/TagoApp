.class public final Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;
.super Ljava/lang/Object;
.source "DevicePreview.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liber8tech/tago/android/drawable/DevicePreview;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;",
        "",
        "()V",
        "black",
        "Lcom/liber8tech/tago/android/drawable/DevicePreview;",
        "getBlack",
        "()Lcom/liber8tech/tago/android/drawable/DevicePreview;",
        "gold",
        "getGold",
        "silver",
        "getSilver",
        "unknown",
        "getUnknown",
        "from",
        "ctx",
        "Landroid/content/Context;",
        "arc",
        "Lcom/liber8tech/tago/model/Arc;",
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$from(Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;Landroid/content/Context;Lcom/liber8tech/tago/model/Arc;)Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/liber8tech/tago/model/Arc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;->from(Landroid/content/Context;Lcom/liber8tech/tago/model/Arc;)Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object p0

    return-object p0
.end method

.method private final from(Landroid/content/Context;Lcom/liber8tech/tago/model/Arc;)Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .locals 7

    .line 20
    new-instance v2, Landroid/graphics/RectF;

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x23

    invoke-static {p1, v1}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 21
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/4 v0, 0x2

    .line 22
    invoke-static {p1, v0}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0}, Lorg/jetbrains/anko/DimensionsKt;->dip(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 23
    new-instance v6, Lcom/liber8tech/tago/android/drawable/DevicePreview;

    const v0, 0x7f050066

    invoke-static {p1, v0}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/liber8tech/tago/android/drawable/DevicePreview;-><init>(Lcom/liber8tech/tago/model/Arc;Landroid/graphics/RectF;Landroid/graphics/RectF;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method


# virtual methods
.method public final getBlack()Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    invoke-static {}, Lcom/liber8tech/tago/android/drawable/DevicePreview;->access$getBlack$cp()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    return-object v0
.end method

.method public final getGold()Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    invoke-static {}, Lcom/liber8tech/tago/android/drawable/DevicePreview;->access$getGold$cp()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    return-object v0
.end method

.method public final getSilver()Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    invoke-static {}, Lcom/liber8tech/tago/android/drawable/DevicePreview;->access$getSilver$cp()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknown()Lcom/liber8tech/tago/android/drawable/DevicePreview;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    invoke-static {}, Lcom/liber8tech/tago/android/drawable/DevicePreview;->access$getUnknown$cp()Lcom/liber8tech/tago/android/drawable/DevicePreview;

    move-result-object v0

    return-object v0
.end method
