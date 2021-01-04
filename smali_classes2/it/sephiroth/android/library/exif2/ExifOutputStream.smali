.class Lit/sephiroth/android/library/exif2/ExifOutputStream;
.super Ljava/lang/Object;
.source "ExifOutputStream.java"


# static fields
.field private static final EXIF_HEADER:I = 0x45786966

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"

.field private static final TAG_SIZE:S = 0xcs

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_HEADER_SIZE:S = 0x8s

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mExifData:Lit/sephiroth/android/library/exif2/ExifData;

.field private final mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;


# direct methods
.method protected constructor <init>(Lit/sephiroth/android/library/exif2/ExifInterface;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 42
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 45
    iput-object p1, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    return-void
.end method

.method private calculateAllOffset()I
    .locals 6

    .line 299
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v0

    const/16 v2, 0x8

    .line 300
    invoke-direct {p0, v0, v2}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->calculateOffsetOfIfd(Lit/sephiroth/android/library/exif2/IfdData;I)I

    move-result v2

    .line 301
    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/exif2/IfdData;->getTag(S)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue(I)Z

    .line 303
    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v3

    .line 304
    invoke-direct {p0, v3, v2}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->calculateOffsetOfIfd(Lit/sephiroth/android/library/exif2/IfdData;I)I

    move-result v2

    .line 306
    iget-object v4, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 308
    sget v5, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v5}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lit/sephiroth/android/library/exif2/IfdData;->getTag(S)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue(I)Z

    .line 309
    invoke-direct {p0, v4, v2}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->calculateOffsetOfIfd(Lit/sephiroth/android/library/exif2/IfdData;I)I

    move-result v2

    .line 312
    :cond_0
    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 314
    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-virtual {v0, v4}, Lit/sephiroth/android/library/exif2/IfdData;->getTag(S)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v4

    invoke-virtual {v4, v2}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue(I)Z

    .line 315
    invoke-direct {p0, v3, v2}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->calculateOffsetOfIfd(Lit/sephiroth/android/library/exif2/IfdData;I)I

    move-result v2

    .line 318
    :cond_1
    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 320
    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/exif2/IfdData;->setOffsetToNextIfd(I)V

    .line 321
    invoke-direct {p0, v3, v2}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->calculateOffsetOfIfd(Lit/sephiroth/android/library/exif2/IfdData;I)I

    move-result v2

    .line 325
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    sget v0, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/exif2/IfdData;->getTag(S)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue(I)Z

    .line 327
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 329
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->getStripCount()I

    move-result v0

    .line 331
    new-array v0, v0, [J

    .line 332
    :goto_0
    iget-object v4, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v4}, Lit/sephiroth/android/library/exif2/ExifData;->getStripCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    int-to-long v4, v2

    .line 333
    aput-wide v4, v0, v1

    .line 334
    iget-object v4, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v4, v1}, Lit/sephiroth/android/library/exif2/ExifData;->getStrip(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_4
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v3, v1}, Lit/sephiroth/android/library/exif2/IfdData;->getTag(S)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v1

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue([J)Z

    :cond_5
    :goto_1
    return v2
.end method

.method private calculateOffsetOfIfd(Lit/sephiroth/android/library/exif2/IfdData;I)I
    .locals 5

    .line 184
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/IfdData;->getTagCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 185
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/IfdData;->getAllTags()[Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    .line 186
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 187
    invoke-virtual {v3}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataSize()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 188
    invoke-virtual {v3, p2}, Lit/sephiroth/android/library/exif2/ExifTag;->setOffset(I)V

    .line 189
    invoke-virtual {v3}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataSize()I

    move-result v3

    add-int/2addr p2, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lit/sephiroth/android/library/exif2/IfdData;

    invoke-direct {v0, v1}, Lit/sephiroth/android/library/exif2/IfdData;-><init>(I)V

    .line 200
    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/exif2/ExifData;->addIfdData(Lit/sephiroth/android/library/exif2/IfdData;)V

    .line 202
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildUninitializedTag(I)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 206
    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/exif2/IfdData;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    .line 209
    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v2

    if-nez v2, :cond_1

    .line 211
    new-instance v2, Lit/sephiroth/android/library/exif2/IfdData;

    invoke-direct {v2, v3}, Lit/sephiroth/android/library/exif2/IfdData;-><init>(I)V

    .line 212
    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v3, v2}, Lit/sephiroth/android/library/exif2/ExifData;->addIfdData(Lit/sephiroth/android/library/exif2/IfdData;)V

    .line 216
    :cond_1
    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 218
    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildUninitializedTag(I)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 222
    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/exif2/IfdData;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    goto :goto_0

    .line 220
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_3
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 228
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildUninitializedTag(I)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/exif2/IfdData;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    goto :goto_1

    .line 230
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_5
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v0

    .line 238
    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v3}, Lit/sephiroth/android/library/exif2/ExifData;->hasCompressedThumbnail()Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v0, :cond_6

    .line 241
    new-instance v0, Lit/sephiroth/android/library/exif2/IfdData;

    invoke-direct {v0, v2}, Lit/sephiroth/android/library/exif2/IfdData;-><init>(I)V

    .line 242
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/exif2/ExifData;->addIfdData(Lit/sephiroth/android/library/exif2/IfdData;)V

    .line 245
    :cond_6
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildUninitializedTag(I)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 250
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/IfdData;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    .line 251
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildUninitializedTag(I)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 256
    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v2}, Lit/sephiroth/android/library/exif2/ExifData;->getCompressedThumbnail()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue(I)Z

    .line 257
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/IfdData;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    .line 260
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/IfdData;->removeTag(S)V

    .line 261
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/IfdData;->removeTag(S)V

    goto/16 :goto_3

    .line 253
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_9
    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v3}, Lit/sephiroth/android/library/exif2/ExifData;->hasUncompressedStrip()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v0, :cond_a

    .line 265
    new-instance v0, Lit/sephiroth/android/library/exif2/IfdData;

    invoke-direct {v0, v2}, Lit/sephiroth/android/library/exif2/IfdData;-><init>(I)V

    .line 266
    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/exif2/ExifData;->addIfdData(Lit/sephiroth/android/library/exif2/IfdData;)V

    .line 268
    :cond_a
    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v2}, Lit/sephiroth/android/library/exif2/ExifData;->getStripCount()I

    move-result v2

    .line 269
    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    sget v4, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildUninitializedTag(I)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 273
    iget-object v4, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    sget v5, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v4, v5}, Lit/sephiroth/android/library/exif2/ExifInterface;->buildUninitializedTag(I)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 277
    new-array v2, v2, [J

    .line 278
    :goto_2
    iget-object v5, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v5}, Lit/sephiroth/android/library/exif2/ExifData;->getStripCount()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 279
    iget-object v5, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v5, v1}, Lit/sephiroth/android/library/exif2/ExifData;->getStrip(I)[B

    move-result-object v5

    array-length v5, v5

    int-to-long v5, v5

    aput-wide v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 281
    :cond_b
    invoke-virtual {v4, v2}, Lit/sephiroth/android/library/exif2/ExifTag;->setValue([J)Z

    .line 282
    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/exif2/IfdData;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    .line 283
    invoke-virtual {v0, v4}, Lit/sephiroth/android/library/exif2/IfdData;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    .line 285
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/IfdData;->removeTag(S)V

    .line 286
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/IfdData;->removeTag(S)V

    goto :goto_3

    .line 275
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz v0, :cond_f

    .line 290
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/IfdData;->removeTag(S)V

    .line 291
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/IfdData;->removeTag(S)V

    .line 292
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/IfdData;->removeTag(S)V

    .line 293
    sget v1, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/IfdData;->removeTag(S)V

    :cond_f
    :goto_3
    return-void

    .line 204
    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 1

    .line 65
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr p1, v0

    if-le p4, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p4

    .line 67
    :goto_0
    iget-object p4, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, p2, p3, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return p1
.end method

.method private stripNullValueTags(Lit/sephiroth/android/library/exif2/ExifData;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/sephiroth/android/library/exif2/ExifData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/exif2/ExifTag;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit/sephiroth/android/library/exif2/ExifTag;

    .line 119
    invoke-virtual {v2}, Lit/sephiroth/android/library/exif2/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lit/sephiroth/android/library/exif2/ExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    invoke-virtual {v2}, Lit/sephiroth/android/library/exif2/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v2}, Lit/sephiroth/android/library/exif2/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lit/sephiroth/android/library/exif2/ExifData;->removeTag(SI)V

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private writeAllTags(Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->writeIfd(Lit/sephiroth/android/library/exif2/IfdData;Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V

    .line 142
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->writeIfd(Lit/sephiroth/android/library/exif2/IfdData;Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V

    .line 143
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->writeIfd(Lit/sephiroth/android/library/exif2/IfdData;Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->writeIfd(Lit/sephiroth/android/library/exif2/IfdData;Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V

    .line 151
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->writeIfd(Lit/sephiroth/android/library/exif2/IfdData;Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V

    :cond_2
    return-void
.end method

.method private writeIfd(Lit/sephiroth/android/library/exif2/IfdData;Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/IfdData;->getAllTags()[Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v0

    .line 159
    array-length v1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeShort(S)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    .line 160
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 161
    invoke-virtual {v5}, Lit/sephiroth/android/library/exif2/ExifTag;->getTagId()S

    move-result v6

    invoke-virtual {p2, v6}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeShort(S)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    .line 162
    invoke-virtual {v5}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataType()S

    move-result v6

    invoke-virtual {p2, v6}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeShort(S)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    .line 163
    invoke-virtual {v5}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result v6

    invoke-virtual {p2, v6}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeInt(I)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    .line 165
    invoke-virtual {v5}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataSize()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 166
    invoke-virtual {v5}, Lit/sephiroth/android/library/exif2/ExifTag;->getOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeInt(I)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    goto :goto_2

    .line 169
    :cond_0
    invoke-static {v5, p2}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->writeTagValue(Lit/sephiroth/android/library/exif2/ExifTag;Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V

    .line 170
    invoke-virtual {v5}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataSize()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 171
    invoke-virtual {p2, v2}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/IfdData;->getOffsetToNextIfd()I

    move-result p1

    invoke-virtual {p2, p1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeInt(I)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    .line 176
    array-length p1, v0

    :goto_3
    if-ge v2, p1, :cond_4

    aget-object v1, v0, v2

    .line 177
    invoke-virtual {v1}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataSize()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 178
    invoke-static {v1, p2}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->writeTagValue(Lit/sephiroth/android/library/exif2/ExifTag;Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method static writeTagValue(Lit/sephiroth/android/library/exif2/ExifTag;Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 362
    :pswitch_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 363
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/exif2/ExifTag;->getRational(I)Lit/sephiroth/android/library/exif2/Rational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeRational(Lit/sephiroth/android/library/exif2/Rational;)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :pswitch_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 357
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeInt(I)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    :pswitch_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_1

    .line 374
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/exif2/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeShort(S)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 344
    :pswitch_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 345
    array-length v2, v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result p0

    if-ne v2, p0, :cond_0

    .line 346
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-byte v1, v0, p0

    .line 347
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->write([B)V

    goto :goto_3

    .line 350
    :cond_0
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->write([B)V

    .line 351
    invoke-virtual {p1, v1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->write(I)V

    goto :goto_3

    .line 368
    :pswitch_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 369
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/ExifTag;->getBytes([B)V

    .line 370
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->write([B)V

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private writeThumbnail(Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ExifOutputStream"

    const-string v1, "writing thumbnail.."

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->write([B)V

    goto :goto_1

    .line 132
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExifOutputStream"

    const-string v1, "writing uncompressed strip.."

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 134
    :goto_0
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v1}, Lit/sephiroth/android/library/exif2/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/exif2/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected getExifData()Lit/sephiroth/android/library/exif2/ExifData;
    .locals 1

    .line 52
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    return-object v0
.end method

.method protected setExifData(Lit/sephiroth/android/library/exif2/ExifData;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    return-void
.end method

.method public writeExifData(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ExifOutputStream"

    const-string v1, "Writing exif data..."

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->stripNullValueTags(Lit/sephiroth/android/library/exif2/ExifData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 79
    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->createRequiredIfdAndTag()V

    .line 80
    invoke-direct {p0}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->calculateAllOffset()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    const v3, 0xffff

    if-gt v1, v3, :cond_3

    .line 86
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/high16 v4, 0x10000

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 87
    new-instance p1, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    invoke-direct {p1, v3}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 89
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v3}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    const/16 v3, 0xff

    .line 91
    invoke-virtual {p1, v3}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->write(I)V

    const/16 v3, 0xe1

    .line 92
    invoke-virtual {p1, v3}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->write(I)V

    int-to-short v1, v1

    .line 93
    invoke-virtual {p1, v1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeShort(S)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    const v1, 0x45786966

    .line 94
    invoke-virtual {p1, v1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeInt(I)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, v1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeShort(S)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    .line 96
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v1}, Lit/sephiroth/android/library/exif2/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v3, :cond_1

    const/16 v1, 0x4d4d

    .line 97
    invoke-virtual {p1, v1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeShort(S)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    goto :goto_0

    :cond_1
    const/16 v1, 0x4949

    .line 100
    invoke-virtual {p1, v1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeShort(S)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    .line 102
    :goto_0
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v1}, Lit/sephiroth/android/library/exif2/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    const/16 v1, 0x2a

    .line 103
    invoke-virtual {p1, v1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeShort(S)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    .line 104
    invoke-virtual {p1, v2}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeInt(I)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    .line 105
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->writeAllTags(Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V

    .line 107
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/exif2/ExifOutputStream;->writeThumbnail(Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;)V

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/sephiroth/android/library/exif2/ExifTag;

    .line 110
    iget-object v2, p0, Lit/sephiroth/android/library/exif2/ExifOutputStream;->mExifData:Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {v2, v1}, Lit/sephiroth/android/library/exif2/ExifData;->addTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->flush()V

    return-void

    .line 83
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Exif header is too large (>64Kb)"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
