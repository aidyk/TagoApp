.class public final enum Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;
.super Ljava/lang/Enum;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/exif2/ExifInterface$Flash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StrobeLightDetection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

.field public static final enum LIGHT_DETECTED:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

.field public static final enum LIGHT_NOT_DETECTED:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

.field public static final enum NO_DETECTION:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

.field public static final enum RESERVED:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 2502
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    const-string v1, "NO_DETECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;->NO_DETECTION:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    const-string v1, "RESERVED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;->RESERVED:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    const-string v1, "LIGHT_NOT_DETECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;->LIGHT_NOT_DETECTED:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    const-string v1, "LIGHT_DETECTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;->LIGHT_DETECTED:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    const/4 v0, 0x4

    .line 2501
    new-array v0, v0, [Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;->NO_DETECTION:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    aput-object v1, v0, v2

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;->RESERVED:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    aput-object v1, v0, v3

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;->LIGHT_NOT_DETECTED:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    aput-object v1, v0, v4

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;->LIGHT_DETECTED:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    aput-object v1, v0, v5

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;->$VALUES:[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2501
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;
    .locals 1

    .line 2501
    const-class v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    return-object p0
.end method

.method public static values()[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;
    .locals 1

    .line 2501
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;->$VALUES:[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    invoke-virtual {v0}, [Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lit/sephiroth/android/library/exif2/ExifInterface$Flash$StrobeLightDetection;

    return-object v0
.end method
