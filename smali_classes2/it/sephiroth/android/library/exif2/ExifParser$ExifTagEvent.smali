.class Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/exif2/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field isRequested:Z

.field tag:Lit/sephiroth/android/library/exif2/ExifTag;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/exif2/ExifTag;Z)V
    .locals 0

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    iput-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;->tag:Lit/sephiroth/android/library/exif2/ExifTag;

    .line 1090
    iput-boolean p2, p0, Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;->isRequested:Z

    return-void
.end method
