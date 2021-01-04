.class public Lit/sephiroth/android/library/exif2/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# static fields
.field static final formatter:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    invoke-static {}, Ljava/text/DecimalFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifUtil;->formatter:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processLensSpecifications([Lit/sephiroth/android/library/exif2/Rational;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 14
    aget-object v0, p0, v0

    const/4 v1, 0x1

    .line 15
    aget-object v2, p0, v1

    const/4 v3, 0x2

    .line 16
    aget-object v3, p0, v3

    const/4 v4, 0x3

    .line 17
    aget-object p0, p0, v4

    .line 19
    sget-object v4, Lit/sephiroth/android/library/exif2/ExifUtil;->formatter:Ljava/text/NumberFormat;

    invoke-virtual {v4, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    sget-object v4, Lit/sephiroth/android/library/exif2/ExifUtil;->formatter:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifUtil;->formatter:Ljava/text/NumberFormat;

    invoke-virtual {v2}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mm f/"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifUtil;->formatter:Ljava/text/NumberFormat;

    invoke-virtual {v3}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifUtil;->formatter:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/Rational;->toDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
