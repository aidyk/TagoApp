.class public final enum Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;
.super Ljava/lang/Enum;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/exif2/ExifInterface$Flash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompulsoryMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

.field public static final enum AUTO:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

.field public static final enum FIRING:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

.field public static final enum SUPPRESSION:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

.field public static final enum UNKNOWN:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 2507
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;->UNKNOWN:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    .line 2508
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    const-string v1, "FIRING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;->FIRING:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    .line 2509
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    const-string v1, "SUPPRESSION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;->SUPPRESSION:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    .line 2510
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    const-string v1, "AUTO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;->AUTO:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    const/4 v0, 0x4

    .line 2506
    new-array v0, v0, [Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;->UNKNOWN:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    aput-object v1, v0, v2

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;->FIRING:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    aput-object v1, v0, v3

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;->SUPPRESSION:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    aput-object v1, v0, v4

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;->AUTO:Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    aput-object v1, v0, v5

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;->$VALUES:[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2506
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;
    .locals 1

    .line 2506
    const-class v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    return-object p0
.end method

.method public static values()[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;
    .locals 1

    .line 2506
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;->$VALUES:[Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    invoke-virtual {v0}, [Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lit/sephiroth/android/library/exif2/ExifInterface$Flash$CompulsoryMode;

    return-object v0
.end method
