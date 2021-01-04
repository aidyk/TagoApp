.class public final enum Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;
.super Ljava/lang/Enum;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/exif2/ExifInterface$Flash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RedEyeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

.field public static final enum NONE:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

.field public static final enum SUPPORTED:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2521
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;->NONE:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

    .line 2522
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

    const-string v1, "SUPPORTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;->SUPPORTED:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

    const/4 v0, 0x2

    .line 2520
    new-array v0, v0, [Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;->NONE:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

    aput-object v1, v0, v2

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;->SUPPORTED:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

    aput-object v1, v0, v3

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;->$VALUES:[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2520
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;
    .locals 1

    .line 2520
    const-class v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

    return-object p0
.end method

.method public static values()[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;
    .locals 1

    .line 2520
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;->$VALUES:[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

    invoke-virtual {v0}, [Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lit/sephiroth/android/library/exif2/ExifInterface$Flash$RedEyeMode;

    return-object v0
.end method
