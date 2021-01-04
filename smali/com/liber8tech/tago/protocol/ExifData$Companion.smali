.class public final Lcom/liber8tech/tago/protocol/ExifData$Companion;
.super Ljava/lang/Object;
.source "ExifData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liber8tech/tago/protocol/ExifData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExifData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExifData.kt\ncom/liber8tech/tago/protocol/ExifData$Companion\n*L\n1#1,26:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/liber8tech/tago/protocol/ExifData$Companion;",
        "",
        "()V",
        "fromBytes",
        "Lcom/liber8tech/tago/protocol/ExifData;",
        "array",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/liber8tech/tago/protocol/ExifData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBytes([B)Lcom/liber8tech/tago/protocol/ExifData;
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface;

    invoke-direct {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;-><init>()V

    const/16 v1, 0x3f

    .line 13
    invoke-virtual {v0, p1, v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->readExif([BI)V

    .line 15
    sget p1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_USER_COMMENT:I

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTag(I)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    const-string v0, "exif.getTag(ExifInterface.TAG_USER_COMMENT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAsBytes()[B

    move-result-object p1

    const-string v0, "exif.getTag(ExifInterfac\u2026SER_COMMENT).valueAsBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 18
    new-instance v0, Lcom/liber8tech/tago/protocol/ExifData;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v1, "Base64.decode(base64String.toString(), 0)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/liber8tech/tago/protocol/ExifData;-><init>([B)V

    return-object v0
.end method
