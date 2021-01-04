.class Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/exif2/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEvent"
.end annotation


# instance fields
.field stripIndex:I

.field type:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1064
    iput v0, p0, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;->stripIndex:I

    .line 1065
    iput p1, p0, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;->type:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    iput p1, p0, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;->type:I

    .line 1070
    iput p2, p0, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;->stripIndex:I

    return-void
.end method
