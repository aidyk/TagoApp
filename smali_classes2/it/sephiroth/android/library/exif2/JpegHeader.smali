.class Lit/sephiroth/android/library/exif2/JpegHeader;
.super Ljava/lang/Object;
.source "JpegHeader.java"


# static fields
.field public static final DAC:S = -0x34s

.field public static final JFIF_HEADER:[B

.field public static final JPG:S = -0x38s

.field public static final M_COM:S = -0x2s

.field public static final M_DHT:S = -0x3cs

.field public static final M_DQT:S = -0x25s

.field public static final M_EOI:S = -0x27s

.field public static final M_EXIF:S = -0x1fs

.field public static final M_IPTC:S = -0x13s

.field public static final M_JFIF:S = -0x20s

.field public static final M_SOF0:S = -0x40s

.field public static final M_SOF1:S = -0x3fs

.field public static final M_SOF10:S = -0x36s

.field public static final M_SOF11:S = -0x35s

.field public static final M_SOF13:S = -0x33s

.field public static final M_SOF14:S = -0x32s

.field public static final M_SOF15:S = -0x31s

.field public static final M_SOF2:S = -0x3es

.field public static final M_SOF3:S = -0x3ds

.field public static final M_SOF5:S = -0x3bs

.field public static final M_SOF6:S = -0x3as

.field public static final M_SOF7:S = -0x39s

.field public static final M_SOF9:S = -0x37s

.field public static final M_SOS:S = -0x26s

.field public static final SOI:S = -0x28s

.field public static final TAG_M_COM:I = 0xfe

.field public static final TAG_M_DHT:I = 0xc4

.field public static final TAG_M_DQT:I = 0xdb

.field public static final TAG_M_EOI:I = 0xd9

.field public static final TAG_M_EXIF:I = 0xe1

.field public static final TAG_M_IPTC:I = 0xed

.field public static final TAG_M_JFIF:I = 0xe0

.field public static final TAG_M_SOF0:I = 0xc0

.field public static final TAG_M_SOF1:I = 0xc1

.field public static final TAG_M_SOF10:I = 0xca

.field public static final TAG_M_SOF11:I = 0xcb

.field public static final TAG_M_SOF13:I = 0xcd

.field public static final TAG_M_SOF14:I = 0xce

.field public static final TAG_M_SOF15:I = 0xcf

.field public static final TAG_M_SOF2:I = 0xc2

.field public static final TAG_M_SOF3:I = 0xc3

.field public static final TAG_M_SOF5:I = 0xc5

.field public static final TAG_M_SOF6:I = 0xc6

.field public static final TAG_M_SOF7:I = 0xc7

.field public static final TAG_M_SOF9:I = 0xc9

.field public static final TAG_M_SOS:I = 0xda

.field public static final TAG_SOI:I = 0xd8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    .line 60
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lit/sephiroth/android/library/exif2/JpegHeader;->JFIF_HEADER:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x20t
        0x0t
        0x10t
        0x4at
        0x46t
        0x49t
        0x46t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2ct
        0x1t
        0x2ct
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isSofMarker(S)Z
    .locals 1

    const/16 v0, -0x40

    if-lt p0, v0, :cond_0

    const/16 v0, -0x31

    if-gt p0, v0, :cond_0

    const/16 v0, -0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, -0x38

    if-eq p0, v0, :cond_0

    const/16 v0, -0x34

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
