.class public final enum Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;
.super Ljava/lang/Enum;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/exif2/ExifInterface$Flash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlashFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

.field public static final enum FUNCTION_NOR_PRESENT:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

.field public static final enum FUNCTION_PRESENT:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2515
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

    const-string v1, "FUNCTION_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;->FUNCTION_PRESENT:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

    .line 2516
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

    const-string v1, "FUNCTION_NOR_PRESENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;->FUNCTION_NOR_PRESENT:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

    const/4 v0, 0x2

    .line 2514
    new-array v0, v0, [Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;->FUNCTION_PRESENT:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

    aput-object v1, v0, v2

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;->FUNCTION_NOR_PRESENT:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

    aput-object v1, v0, v3

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;->$VALUES:[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2514
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;
    .locals 1

    .line 2514
    const-class v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

    return-object p0
.end method

.method public static values()[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;
    .locals 1

    .line 2514
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;->$VALUES:[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

    invoke-virtual {v0}, [Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lit/sephiroth/android/library/exif2/ExifInterface$Flash$FlashFunction;

    return-object v0
.end method
