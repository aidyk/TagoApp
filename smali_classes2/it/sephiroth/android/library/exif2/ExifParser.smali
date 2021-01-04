.class Lit/sephiroth/android/library/exif2/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/exif2/ExifParser$Section;,
        Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;,
        Lit/sephiroth/android/library/exif2/ExifParser$IfdEvent;,
        Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field protected static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field protected static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field protected static final EXIF_HEADER:I = 0x45786966

.field protected static final EXIF_HEADER_TAIL:S = 0x0s

.field protected static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field protected static final OFFSET_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ExifParser"

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field protected static final TAG_SIZE:I = 0xc

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field protected static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final US_ASCII:Ljava/nio/charset/Charset;

.field static final deftabs:[[I

.field static final std_chrominance_quant_tbl:[I

.field static final std_luminance_quant_tbl:[I


# instance fields
.field private final mByteArray:[B

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;

.field private mImageLength:I

.field private mImageWidth:I

.field private final mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

.field private mJpegSizeTag:Lit/sephiroth/android/library/exif2/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private final mOptions:I

.field private mProcess:S

.field private mQualityGuess:I

.field private mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lit/sephiroth/android/library/exif2/ExifParser$Section;",
            ">;"
        }
    .end annotation
.end field

.field private mStripSizeTag:Lit/sephiroth/android/library/exif2/ExifTag;

.field private mTag:Lit/sephiroth/android/library/exif2/ExifTag;

.field private final mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

.field private mUncompressedDataPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "US-ASCII"

    .line 76
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 77
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_EXIF_IFD:S

    .line 78
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_GPS_IFD:S

    .line 79
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 80
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 81
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 82
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 83
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    const/16 v0, 0x40

    .line 110
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lit/sephiroth/android/library/exif2/ExifParser;->std_luminance_quant_tbl:[I

    .line 113
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifParser;->std_chrominance_quant_tbl:[I

    const/4 v0, 0x2

    .line 118
    new-array v0, v0, [[I

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifParser;->std_luminance_quant_tbl:[I

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lit/sephiroth/android/library/exif2/ExifParser;->std_chrominance_quant_tbl:[I

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifParser;->deftabs:[[I

    return-void

    :array_0
    .array-data 4
        0x10
        0xb
        0xc
        0xe
        0xc
        0xa
        0x10
        0xe
        0xd
        0xe
        0x12
        0x11
        0x10
        0x13
        0x18
        0x28
        0x1a
        0x18
        0x16
        0x16
        0x18
        0x31
        0x23
        0x25
        0x1d
        0x28
        0x3a
        0x33
        0x3d
        0x3c
        0x39
        0x33
        0x38
        0x37
        0x40
        0x48
        0x5c
        0x4e
        0x40
        0x44
        0x57
        0x45
        0x37
        0x38
        0x50
        0x6d
        0x51
        0x57
        0x5f
        0x62
        0x67
        0x68
        0x67
        0x3e
        0x4d
        0x71
        0x79
        0x70
        0x64
        0x78
        0x5c
        0x65
        0x67
        0x63
    .end array-data

    :array_1
    .array-data 4
        0x11
        0x12
        0x12
        0x18
        0x15
        0x18
        0x2f
        0x1a
        0x1a
        0x2f
        0x63
        0x42
        0x38
        0x42
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
    .end array-data
.end method

.method private constructor <init>(Ljava/io/InputStream;ILit/sephiroth/android/library/exif2/ExifInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdStartOffset:I

    .line 89
    iput v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mNumOfTagInIfd:I

    .line 101
    iput-short v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mProcess:S

    .line 103
    iput v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mUncompressedDataPosition:I

    const/16 v1, 0x8

    .line 157
    new-array v2, v1, [B

    iput-object v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mByteArray:[B

    .line 158
    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mByteArray:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_4

    const-string v2, "ExifParser"

    const-string v3, "Reading exif..."

    .line 126
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mSections:Ljava/util/List;

    .line 129
    iput-object p3, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    .line 130
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/exif2/ExifParser;->seekTiffData(Ljava/io/InputStream;)Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    .line 131
    iput p2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mOptions:I

    .line 135
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/exif2/ExifParser;->parseTiffHeader(Lit/sephiroth/android/library/exif2/CountedDataInputStream;)V

    .line 141
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide p1

    const-wide/32 v2, 0x7fffffff

    cmp-long p3, p1, v2

    if-gtz p3, :cond_3

    long-to-int p3, p1

    .line 145
    iput p3, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfd0Position:I

    .line 146
    iput v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdType:I

    .line 148
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifParser;->registerIfd(IJ)V

    const-wide/16 v2, 0x8

    cmp-long v0, p1, v2

    if-eqz v0, :cond_2

    sub-int/2addr p3, v1

    .line 151
    new-array p1, p3, [B

    iput-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mDataAboveIfd0:[B

    .line 152
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/ExifParser;->read([B)I

    :cond_2
    return-void

    .line 143
    :cond_3
    new-instance p3, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 123
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Null argument inputStream to ExifParser"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static Get16m([BI)I
    .locals 1

    .line 342
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    .line 343
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private checkOffsetOrImageTag(Lit/sephiroth/android/library/exif2/ExifTag;)V
    .locals 5

    .line 800
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 803
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getTagId()S

    move-result v0

    .line 804
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getIfd()I

    move-result v1

    .line 805
    sget-short v2, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_EXIF_IFD:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    .line 806
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 807
    :cond_1
    invoke-virtual {p1, v4}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 810
    :cond_2
    sget-short v2, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_GPS_IFD:S

    if-ne v0, v2, :cond_3

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    .line 811
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 812
    invoke-virtual {p1, v4}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 815
    :cond_3
    sget-short v2, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v0, v2, :cond_4

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 816
    invoke-direct {p0, v3}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 817
    invoke-virtual {p1, v4}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lit/sephiroth/android/library/exif2/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 820
    :cond_4
    sget-short v2, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v0, v2, :cond_5

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 821
    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 822
    invoke-virtual {p1, v4}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/exif2/ExifParser;->registerCompressedImage(J)V

    goto/16 :goto_2

    .line 825
    :cond_5
    sget-short v2, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v0, v2, :cond_6

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 826
    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 827
    iput-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mJpegSizeTag:Lit/sephiroth/android/library/exif2/ExifTag;

    goto :goto_2

    .line 830
    :cond_6
    sget-short v2, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v0, v2, :cond_9

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/exif2/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 831
    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 832
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 833
    :goto_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 834
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataType()S

    move-result v0

    if-ne v0, v3, :cond_7

    .line 835
    invoke-virtual {p1, v4}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lit/sephiroth/android/library/exif2/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_1

    .line 838
    :cond_7
    invoke-virtual {p1, v4}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lit/sephiroth/android/library/exif2/ExifParser;->registerUncompressedStrip(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 843
    :cond_8
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;

    invoke-direct {v2, p1, v4}, Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;-><init>(Lit/sephiroth/android/library/exif2/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 847
    :cond_9
    sget-short v2, Lit/sephiroth/android/library/exif2/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v0, v2, :cond_a

    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->checkAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 848
    iput-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mStripSizeTag:Lit/sephiroth/android/library/exif2/ExifTag;

    :cond_a
    :goto_2
    return-void
.end method

.method private isIfdRequested(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 442
    :pswitch_0
    iget p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 444
    :pswitch_1
    iget p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 440
    :pswitch_2
    iget p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 438
    :pswitch_3
    iget p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0

    .line 436
    :pswitch_4
    iget p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mOptions:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isThumbnailRequested()Z
    .locals 1

    .line 478
    iget v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 4

    .line 450
    iget v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    .line 458
    :pswitch_0
    invoke-direct {p0, v1}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v0

    return v0

    .line 455
    :pswitch_1
    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->isThumbnailRequested()Z

    move-result v0

    return v0

    :pswitch_2
    const/4 v0, 0x2

    .line 452
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static parse(Ljava/io/InputStream;ILit/sephiroth/android/library/exif2/ExifInterface;)Lit/sephiroth/android/library/exif2/ExifParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;
        }
    .end annotation

    .line 488
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifParser;

    invoke-direct {v0, p0, p1, p2}, Lit/sephiroth/android/library/exif2/ExifParser;-><init>(Ljava/io/InputStream;ILit/sephiroth/android/library/exif2/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader(Lit/sephiroth/android/library/exif2/CountedDataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;
        }
    .end annotation

    .line 417
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    .line 419
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_2

    .line 422
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 428
    :goto_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readShort()S

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    return-void

    .line 429
    :cond_1
    new-instance p1, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;

    const-string v0, "Invalid TIFF header"

    invoke-direct {p1, v0}, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :cond_2
    new-instance p1, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;

    const-string v0, "Invalid TIFF header"

    invoke-direct {p1, v0}, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private process_M_DQT([BI)V
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v7, v5

    const/4 v6, 0x1

    move-wide v4, v3

    const/4 v3, 0x2

    .line 365
    :goto_0
    array-length v8, v0

    if-ge v3, v8, :cond_9

    add-int/lit8 v8, v3, 0x1

    .line 366
    aget-byte v3, v0, v3

    and-int/lit8 v9, v3, 0xf

    if-ge v9, v1, :cond_0

    .line 370
    sget-object v7, Lit/sephiroth/android/library/exif2/ExifParser;->deftabs:[[I

    aget-object v7, v7, v9

    :cond_0
    move v11, v6

    move-wide v5, v4

    const/4 v4, 0x0

    :goto_1
    const/16 v12, 0x40

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    if-ge v4, v12, :cond_4

    shr-int/lit8 v12, v3, 0x4

    if-eqz v12, :cond_1

    add-int/lit8 v12, v8, 0x1

    .line 378
    aget-byte v8, v0, v8

    mul-int/lit16 v8, v8, 0x100

    add-int/lit8 v15, v12, 0x1

    .line 380
    aget-byte v12, v0, v12

    add-int/2addr v12, v8

    move v8, v12

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v8, 0x1

    .line 383
    aget-byte v8, v0, v8

    move v15, v12

    :goto_2
    if-eqz v7, :cond_3

    move/from16 v16, v11

    int-to-double v10, v8

    .line 388
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v13

    aget v12, v7, v4

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    add-double/2addr v5, v10

    if-eq v8, v2, :cond_2

    const/4 v11, 0x0

    goto :goto_3

    :cond_2
    move/from16 v11, v16

    goto :goto_3

    :cond_3
    move/from16 v16, v11

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v8, v15

    goto :goto_1

    :cond_4
    move/from16 v16, v11

    if-eqz v7, :cond_8

    const-wide/high16 v3, 0x4050000000000000L    # 64.0

    div-double v4, v5, v3

    if-eqz v16, :cond_5

    goto :goto_4

    :cond_5
    cmpg-double v3, v4, v13

    if-gtz v3, :cond_6

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    sub-double/2addr v10, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v13, v10, v12

    goto :goto_4

    :cond_6
    const-wide v10, 0x40b3880000000000L    # 5000.0

    div-double v13, v10, v4

    :goto_4
    if-nez v9, :cond_7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v13, v9

    double-to-int v3, v13

    move-object/from16 v9, p0

    .line 409
    iput v3, v9, Lit/sephiroth/android/library/exif2/ExifParser;->mQualityGuess:I

    goto :goto_5

    :cond_7
    move-object/from16 v9, p0

    goto :goto_5

    :cond_8
    move-object/from16 v9, p0

    move-wide v4, v5

    :goto_5
    move v3, v8

    move/from16 v6, v16

    goto :goto_0

    :cond_9
    move-object/from16 v9, p0

    return-void
.end method

.method private process_M_SOFn([BI)V
    .locals 2

    .line 348
    array-length v0, p1

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    .line 351
    invoke-static {p1, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->Get16m([BI)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mImageLength:I

    const/4 v0, 0x5

    .line 352
    invoke-static {p1, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->Get16m([BI)I

    move-result p1

    iput p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mImageWidth:I

    :cond_0
    int-to-short p1, p2

    .line 354
    iput-short p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mProcess:S

    return-void
.end method

.method private readBytes(Ljava/io/InputStream;[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 331
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 333
    :goto_0
    invoke-virtual {p1, p2, p3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    add-int/2addr v1, v2

    add-int/2addr p3, v2

    sub-int v2, p4, v1

    .line 336
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method private readInt([BI)I
    .locals 2

    .line 161
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 162
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 163
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 164
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1
.end method

.method private readShort([BI)S
    .locals 2

    .line 168
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 169
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 170
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 171
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    return p1
.end method

.method private readTag()Lit/sephiroth/android/library/exif2/ExifTag;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readShort()S

    move-result v2

    .line 750
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readShort()S

    move-result v0

    .line 751
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v1}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-gtz v1, :cond_5

    .line 756
    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifTag;->isValidType(S)Z

    move-result v1

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    const-string v1, "ExifParser"

    const-string v3, "Tag %04x: Invalid data type %d"

    const/4 v4, 0x2

    .line 757
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->skip(J)J

    const/4 v0, 0x0

    return-object v0

    .line 762
    :cond_0
    new-instance v10, Lit/sephiroth/android/library/exif2/ExifTag;

    long-to-int v11, v3

    iget v6, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdType:I

    if-eqz v11, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    move-object v1, v10

    move v3, v0

    move v4, v11

    move v5, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/exif2/ExifTag;-><init>(SSIIZ)V

    .line 763
    invoke-virtual {v10}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataSize()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    .line 765
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v1}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-gtz v3, :cond_3

    .line 771
    iget v3, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfd0Position:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 772
    new-array v0, v11, [B

    .line 773
    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mDataAboveIfd0:[B

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {v3, v1, v0, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    invoke-virtual {v10, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue([B)Z

    goto :goto_1

    :cond_2
    long-to-int v0, v1

    .line 777
    invoke-virtual {v10, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->setOffset(I)V

    goto :goto_1

    .line 767
    :cond_3
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;

    const-string v1, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_4
    invoke-virtual {v10}, Lit/sephiroth/android/library/exif2/ExifTag;->hasDefinedCount()Z

    move-result v0

    .line 783
    invoke-virtual {v10, v9}, Lit/sephiroth/android/library/exif2/ExifTag;->setHasDefinedCount(Z)V

    .line 785
    invoke-virtual {p0, v10}, Lit/sephiroth/android/library/exif2/ExifParser;->readFullTagValue(Lit/sephiroth/android/library/exif2/ExifTag;)V

    .line 786
    invoke-virtual {v10, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->setHasDefinedCount(Z)V

    .line 787
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->skip(J)J

    .line 789
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v10, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->setOffset(I)V

    :goto_1
    return-object v10

    .line 753
    :cond_5
    new-instance v0, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;

    const-string v1, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerCompressedImage(J)V
    .locals 2

    .line 741
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerIfd(IJ)V
    .locals 2

    .line 467
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lit/sephiroth/android/library/exif2/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v1

    invoke-direct {p3, p1, v1}, Lit/sephiroth/android/library/exif2/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 2

    .line 745
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;

    const/4 v1, 0x4

    invoke-direct {p3, v1, p1}, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Lit/sephiroth/android/library/exif2/CountedDataInputStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;
        }
    .end annotation

    .line 175
    new-instance v0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 178
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readUnsignedByte()I

    move-result p1

    .line 179
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readUnsignedByte()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    if-ne p1, v3, :cond_9

    const/16 p1, 0xd8

    if-eq v1, p1, :cond_0

    goto/16 :goto_6

    :cond_0
    move-object p1, v2

    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 196
    :goto_1
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readUnsignedByte()I

    move-result v6

    if-eq v6, v3, :cond_8

    if-ne v4, v3, :cond_8

    const/16 v4, 0xa

    if-le v5, v4, :cond_1

    const-string v4, "ExifParser"

    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extraneous "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " padding bytes before section "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    new-instance v4, Lit/sephiroth/android/library/exif2/ExifParser$Section;

    invoke-direct {v4}, Lit/sephiroth/android/library/exif2/ExifParser$Section;-><init>()V

    .line 206
    iput v6, v4, Lit/sephiroth/android/library/exif2/ExifParser$Section;->type:I

    .line 209
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readByte()B

    move-result v5

    .line 210
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readByte()B

    move-result v7

    and-int/lit16 v8, v5, 0xff

    const/16 v9, 0x8

    shl-int/2addr v8, v9

    and-int/lit16 v10, v7, 0xff

    or-int/2addr v8, v10

    const/4 v10, 0x2

    if-lt v8, v10, :cond_7

    .line 217
    iput v8, v4, Lit/sephiroth/android/library/exif2/ExifParser$Section;->size:I

    .line 219
    new-array v11, v8, [B

    .line 220
    aput-byte v5, v11, v1

    const/4 v5, 0x1

    .line 221
    aput-byte v7, v11, v5

    add-int/lit8 v7, v8, -0x2

    .line 226
    invoke-direct {p0, v0, v11, v10, v7}, Lit/sephiroth/android/library/exif2/ExifParser;->readBytes(Ljava/io/InputStream;[BII)I

    move-result v12

    if-ne v12, v7, :cond_6

    .line 232
    iput-object v11, v4, Lit/sephiroth/android/library/exif2/ExifParser$Section;->data:[B

    const/16 v7, 0xed

    if-eq v6, v7, :cond_4

    const/16 v7, 0xfe

    if-eq v6, v7, :cond_3

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    packed-switch v6, :pswitch_data_4

    const-string v7, "ExifParser"

    .line 303
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown marker: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "0x%2X"

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_0
    if-lt v8, v9, :cond_4

    .line 289
    invoke-direct {p0, v11, v10}, Lit/sephiroth/android/library/exif2/ExifParser;->readInt([BI)I

    move-result v7

    const/4 v10, 0x6

    .line 290
    invoke-direct {p0, v11, v10}, Lit/sephiroth/android/library/exif2/ExifParser;->readShort([BI)S

    move-result v10

    const v12, 0x45786966

    if-ne v7, v12, :cond_2

    if-nez v10, :cond_2

    .line 293
    new-instance p1, Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v10, v8, -0x8

    invoke-direct {v7, v11, v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p1, v7}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    add-int/lit8 v7, v8, -0x6

    .line 294
    invoke-virtual {p1, v7}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->setEnd(I)V

    goto :goto_3

    :cond_2
    const-string v7, "ExifParser"

    const-string v9, "Image cotains XMP section"

    .line 297
    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_1
    const/16 v7, 0x10

    if-ge v8, v7, :cond_4

    goto :goto_2

    .line 246
    :pswitch_2
    invoke-direct {p0, v11, v8}, Lit/sephiroth/android/library/exif2/ExifParser;->process_M_DQT([BI)V

    goto :goto_3

    .line 240
    :pswitch_3
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mSections:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mUncompressedDataPosition:I

    return-object p1

    :pswitch_4
    const-string p1, "ExifParser"

    const-string v0, "No image in jpeg!"

    .line 254
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 284
    :pswitch_5
    invoke-direct {p0, v11, v6}, Lit/sephiroth/android/library/exif2/ExifParser;->process_M_SOFn([BI)V

    goto :goto_3

    :cond_3
    :goto_2
    move-object v7, p1

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    :pswitch_6
    move-object v7, p1

    const/4 p1, 0x0

    :goto_4
    if-nez p1, :cond_5

    .line 309
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mSections:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    const-string p1, "ExifParser"

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignoring marker: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "0x%2X"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object p1, v7

    goto/16 :goto_0

    .line 229
    :cond_6
    new-instance p1, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Premature end of file? Expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_7
    new-instance p1, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;

    const-string v0, "Invalid marker"

    invoke-direct {p1, v0}, Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto/16 :goto_1

    :cond_9
    :goto_6
    const-string p1, "ExifParser"

    const-string v0, "invalid jpeg header"

    .line 182
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xcd
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd9
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private skipTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->skipTo(J)V

    .line 720
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 721
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkAllowed(II)Z
    .locals 1

    .line 857
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 861
    :cond_0
    invoke-static {p2, p1}, Lit/sephiroth/android/library/exif2/ExifInterface;->isIfdAllowed(II)Z

    move-result p1

    return p1
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 1031
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .line 711
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mJpegSizeTag:Lit/sephiroth/android/library/exif2/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 714
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mJpegSizeTag:Lit/sephiroth/android/library/exif2/ExifTag;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getCurrentIfd()I
    .locals 1

    .line 686
    iget v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdType:I

    return v0
.end method

.method public getImageLength()I
    .locals 1

    .line 1048
    iget v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mImageLength:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 1040
    iget v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mImageWidth:I

    return v0
.end method

.method public getJpegProcess()S
    .locals 1

    .line 1044
    iget-short v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mProcess:S

    return v0
.end method

.method public getQualityGuess()I
    .locals 1

    .line 1036
    iget v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mQualityGuess:I

    return v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lit/sephiroth/android/library/exif2/ExifParser$Section;",
            ">;"
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mSections:Ljava/util/List;

    return-object v0
.end method

.method protected getStripIndex()I
    .locals 1

    .line 694
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mImageEvent:Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;

    iget v0, v0, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected getStripSize()I
    .locals 2

    .line 702
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mStripSizeTag:Lit/sephiroth/android/library/exif2/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 703
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mStripSizeTag:Lit/sephiroth/android/library/exif2/ExifTag;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getTag()Lit/sephiroth/android/library/exif2/ExifTag;
    .locals 1

    .line 666
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTag:Lit/sephiroth/android/library/exif2/ExifTag;

    return-object v0
.end method

.method public getTagCountInCurrentIfd()I
    .locals 1

    .line 673
    iget v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mNumOfTagInIfd:I

    return v0
.end method

.method public getUncompressedDataPosition()I
    .locals 1

    .line 1056
    iget v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mUncompressedDataPosition:I

    return v0
.end method

.method public isDefinedTag(II)Z
    .locals 1

    .line 853
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    int-to-short p2, p2

    invoke-static {p1, p2}, Lit/sephiroth/android/library/exif2/ExifInterface;->defineTag(IS)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected next()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    return v1

    .line 519
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 520
    iget v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdStartOffset:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    .line 522
    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readTag()Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTag:Lit/sephiroth/android/library/exif2/ExifTag;

    .line 523
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTag:Lit/sephiroth/android/library/exif2/ExifTag;

    if-nez v0, :cond_1

    .line 524
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->next()I

    move-result v0

    return v0

    .line 526
    :cond_1
    iget-boolean v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTag:Lit/sephiroth/android/library/exif2/ExifTag;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->checkOffsetOrImageTag(Lit/sephiroth/android/library/exif2/ExifTag;)V

    :cond_2
    return v4

    :cond_3
    if-ne v0, v2, :cond_8

    .line 533
    iget v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdType:I

    const-wide/16 v5, 0x0

    if-nez v0, :cond_5

    .line 534
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readUnsignedLong()J

    move-result-wide v7

    .line 535
    invoke-direct {p0, v4}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    cmp-long v0, v7, v5

    if-eqz v0, :cond_8

    .line 537
    invoke-direct {p0, v4, v7, v8}, Lit/sephiroth/android/library/exif2/ExifParser;->registerIfd(IJ)V

    goto :goto_1

    .line 544
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lez v0, :cond_6

    .line 545
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v4}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->getReadByteCount()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    :goto_0
    if-ge v0, v2, :cond_7

    const-string v2, "ExifParser"

    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid size of link to next IFD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 551
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readUnsignedLong()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_8

    const-string v0, "ExifParser"

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid link to next IFD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_8
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 559
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 560
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 563
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lit/sephiroth/android/library/exif2/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    instance-of v4, v2, Lit/sephiroth/android/library/exif2/ExifParser$IfdEvent;

    if-eqz v4, :cond_b

    .line 570
    check-cast v2, Lit/sephiroth/android/library/exif2/ExifParser$IfdEvent;

    iget v4, v2, Lit/sephiroth/android/library/exif2/ExifParser$IfdEvent;->ifd:I

    iput v4, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdType:I

    .line 571
    iget-object v4, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v4}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mNumOfTagInIfd:I

    .line 572
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdStartOffset:I

    .line 574
    iget v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v0, v0, 0xc

    iget v4, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdStartOffset:I

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    iget-object v4, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v4}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->getEnd()I

    move-result v4

    if-le v0, v4, :cond_9

    const-string v0, "ExifParser"

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size of IFD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 579
    :cond_9
    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 580
    iget-boolean v0, v2, Lit/sephiroth/android/library/exif2/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 584
    :cond_a
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 587
    :cond_b
    instance-of v0, v2, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;

    if-eqz v0, :cond_c

    .line 588
    check-cast v2, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;

    iput-object v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mImageEvent:Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;

    .line 589
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mImageEvent:Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;

    iget v0, v0, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;->type:I

    return v0

    .line 592
    :cond_c
    check-cast v2, Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;

    .line 593
    iget-object v0, v2, Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;->tag:Lit/sephiroth/android/library/exif2/ExifTag;

    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTag:Lit/sephiroth/android/library/exif2/ExifTag;

    .line 594
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTag:Lit/sephiroth/android/library/exif2/ExifTag;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataType()S

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_d

    .line 595
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTag:Lit/sephiroth/android/library/exif2/ExifTag;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->readFullTagValue(Lit/sephiroth/android/library/exif2/ExifTag;)V

    .line 596
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTag:Lit/sephiroth/android/library/exif2/ExifTag;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->checkOffsetOrImageTag(Lit/sephiroth/android/library/exif2/ExifTag;)V

    .line 598
    :cond_d
    iget-boolean v0, v2, Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v0, :cond_8

    return v3

    :catch_0
    const-string v4, "ExifParser"

    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to skip to data at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", the file may be broken."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    return v1
.end method

.method protected read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->read([B)I

    move-result p1

    return p1
.end method

.method protected read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method protected readFullTagValue(Lit/sephiroth/android/library/exif2/ExifTag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataType()S

    move-result v0

    .line 867
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result v1

    const/high16 v2, 0x66000000

    if-ge v1, v2, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 874
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result v0

    .line 875
    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 876
    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v3}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v2, v3, :cond_4

    .line 877
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 878
    instance-of v2, v0, Lit/sephiroth/android/library/exif2/ExifParser$ImageEvent;

    if-eqz v2, :cond_1

    const-string v0, "ExifParser"

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    const-string v2, "ExifParser"

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid thumbnail offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 886
    :cond_1
    instance-of v2, v0, Lit/sephiroth/android/library/exif2/ExifParser$IfdEvent;

    if-eqz v2, :cond_2

    const-string v2, "ExifParser"

    .line 887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ifd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lit/sephiroth/android/library/exif2/ExifParser$IfdEvent;

    iget v0, v0, Lit/sephiroth/android/library/exif2/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " overlaps value for tag: \n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 889
    :cond_2
    instance-of v2, v0, Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;

    if-eqz v2, :cond_3

    const-string v2, "ExifParser"

    .line 890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag value for tag: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;

    iget-object v0, v0, Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;->tag:Lit/sephiroth/android/library/exif2/ExifTag;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " overlaps value for tag: \n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_3
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v2}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->getReadByteCount()I

    move-result v2

    sub-int/2addr v0, v2

    const-string v2, "ExifParser"

    .line 893
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid size of tag: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " setting count to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->forceSetComponentCount(I)V

    .line 899
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataType()S

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 943
    :pswitch_1
    new-array v0, v1, [Lit/sephiroth/android/library/exif2/Rational;

    .line 944
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_5

    .line 945
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readRational()Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 947
    :cond_5
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue([Lit/sephiroth/android/library/exif2/Rational;)Z

    goto :goto_7

    .line 935
    :pswitch_2
    new-array v0, v1, [I

    .line 936
    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_6

    .line 937
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readLong()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 939
    :cond_6
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 919
    :pswitch_3
    new-array v0, v1, [Lit/sephiroth/android/library/exif2/Rational;

    .line 920
    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_7

    .line 921
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readUnsignedRational()Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 923
    :cond_7
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue([Lit/sephiroth/android/library/exif2/Rational;)Z

    goto :goto_7

    .line 911
    :pswitch_4
    new-array v0, v1, [J

    .line 912
    array-length v1, v0

    :goto_5
    if-ge v2, v1, :cond_8

    .line 913
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readUnsignedLong()J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 915
    :cond_8
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue([J)Z

    goto :goto_7

    .line 927
    :pswitch_5
    new-array v0, v1, [I

    .line 928
    array-length v1, v0

    :goto_6
    if-ge v2, v1, :cond_9

    .line 929
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readUnsignedShort()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 931
    :cond_9
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 908
    :pswitch_6
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/exif2/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue(Ljava/lang/String;)Z

    goto :goto_7

    .line 902
    :pswitch_7
    new-array v0, v1, [B

    .line 903
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->read([B)I

    .line 904
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue([B)Z

    :goto_7
    return-void

    .line 870
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "size out of bounds"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readRational()Lit/sephiroth/android/library/exif2/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1022
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readLong()I

    move-result v0

    .line 1023
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readLong()I

    move-result v1

    .line 1024
    new-instance v2, Lit/sephiroth/android/library/exif2/Rational;

    int-to-long v3, v0

    int-to-long v0, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lit/sephiroth/android/library/exif2/Rational;-><init>(JJ)V

    return-object v2
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    sget-object v0, Lit/sephiroth/android/library/exif2/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 978
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lit/sephiroth/android/library/exif2/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 1007
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 1008
    new-instance v4, Lit/sephiroth/android/library/exif2/Rational;

    invoke-direct {v4, v0, v1, v2, v3}, Lit/sephiroth/android/library/exif2/Rational;-><init>(JJ)V

    return-object v4
.end method

.method protected readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 990
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Lit/sephiroth/android/library/exif2/ExifTag;)V
    .locals 4

    .line 735
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v1}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 736
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lit/sephiroth/android/library/exif2/ExifParser$ExifTagEvent;-><init>(Lit/sephiroth/android/library/exif2/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;
        }
    .end annotation

    .line 614
    iget v0, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 615
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTiffStream:Lit/sephiroth/android/library/exif2/CountedDataInputStream;

    invoke-virtual {v1}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-le v1, v0, :cond_0

    return-void

    .line 619
    :cond_0
    iget-boolean v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 621
    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readTag()Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTag:Lit/sephiroth/android/library/exif2/ExifTag;

    add-int/lit8 v1, v1, 0xc

    .line 623
    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTag:Lit/sephiroth/android/library/exif2/ExifTag;

    if-nez v2, :cond_1

    goto :goto_0

    .line 626
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mTag:Lit/sephiroth/android/library/exif2/ExifTag;

    invoke-direct {p0, v2}, Lit/sephiroth/android/library/exif2/ExifParser;->checkOffsetOrImageTag(Lit/sephiroth/android/library/exif2/ExifTag;)V

    goto :goto_0

    .line 630
    :cond_2
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->skipTo(I)V

    .line 632
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 634
    iget v2, p0, Lit/sephiroth/android/library/exif2/ExifParser;->mIfdType:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lit/sephiroth/android/library/exif2/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_5

    .line 636
    invoke-direct {p0, v2, v0, v1}, Lit/sephiroth/android/library/exif2/ExifParser;->registerIfd(IJ)V

    :cond_5
    return-void
.end method
