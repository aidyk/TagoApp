.class Lit/sephiroth/android/library/exif2/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifData"

.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private imageLength:I

.field private imageWidth:I

.field private jpegProcess:S

.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

.field private mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lit/sephiroth/android/library/exif2/ExifParser$Section;",
            ">;"
        }
    .end annotation
.end field

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B

.field public mUncompressedDataPosition:I

.field private qualityGuess:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 36
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lit/sephiroth/android/library/exif2/ExifData;->USER_COMMENT_ASCII:[B

    .line 37
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lit/sephiroth/android/library/exif2/ExifData;->USER_COMMENT_JIS:[B

    .line 38
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lit/sephiroth/android/library/exif2/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 41
    new-array v0, v0, [Lit/sephiroth/android/library/exif2/IfdData;

    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->qualityGuess:I

    const/4 v1, -0x1

    .line 46
    iput v1, p0, Lit/sephiroth/android/library/exif2/ExifData;->imageLength:I

    iput v1, p0, Lit/sephiroth/android/library/exif2/ExifData;->imageWidth:I

    .line 47
    iput-short v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->jpegProcess:S

    .line 48
    iput v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mUncompressedDataPosition:I

    .line 51
    iput-object p1, p0, Lit/sephiroth/android/library/exif2/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected addIfdData(Lit/sephiroth/android/library/exif2/IfdData;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method protected addTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->getIfd()I

    move-result v0

    .line 147
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/exif2/ExifData;->addTag(Lit/sephiroth/android/library/exif2/ExifTag;I)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected addTag(Lit/sephiroth/android/library/exif2/ExifTag;I)Lit/sephiroth/android/library/exif2/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    .line 157
    invoke-static {p2}, Lit/sephiroth/android/library/exif2/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/exif2/ExifData;->getOrCreateIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object p2

    .line 159
    invoke-virtual {p2, p1}, Lit/sephiroth/android/library/exif2/IfdData;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mThumbnail:[B

    .line 187
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 316
    :cond_1
    instance-of v2, p1, Lit/sephiroth/android/library/exif2/ExifData;

    if-eqz v2, :cond_8

    .line 317
    check-cast p1, Lit/sephiroth/android/library/exif2/ExifData;

    .line 318
    iget-object v2, p1, Lit/sephiroth/android/library/exif2/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lit/sephiroth/android/library/exif2/ExifData;->mThumbnail:[B

    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifData;->mThumbnail:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 323
    :goto_0
    iget-object v3, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 324
    iget-object v3, p1, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6

    .line 329
    invoke-virtual {p1, v2}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v3

    .line 330
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v4

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    .line 331
    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/exif2/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1

    :cond_8
    return v1
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lit/sephiroth/android/library/exif2/ExifTag;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifData;->mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 251
    invoke-virtual {v5}, Lit/sephiroth/android/library/exif2/IfdData;->getAllTags()[Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 253
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 254
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    return-object v0
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lit/sephiroth/android/library/exif2/ExifTag;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 274
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/IfdData;->getAllTags()[Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 278
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 280
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lit/sephiroth/android/library/exif2/ExifTag;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifData;->mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 296
    invoke-virtual {v4, p1}, Lit/sephiroth/android/library/exif2/IfdData;->getTag(S)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 298
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 120
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    .line 61
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;
    .locals 1

    .line 345
    invoke-static {p1}, Lit/sephiroth/android/library/exif2/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageSize()[I
    .locals 3

    const/4 v0, 0x2

    .line 365
    new-array v0, v0, [I

    iget v1, p0, Lit/sephiroth/android/library/exif2/ExifData;->imageWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lit/sephiroth/android/library/exif2/ExifData;->imageLength:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getJpegProcess()S
    .locals 1

    .line 373
    iget-short v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->jpegProcess:S

    return v0
.end method

.method protected getOrCreateIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;
    .locals 2

    .line 169
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lit/sephiroth/android/library/exif2/IfdData;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/exif2/IfdData;-><init>(I)V

    .line 172
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifData;->mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method public getQualityGuess()I
    .locals 1

    .line 356
    iget v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->qualityGuess:I

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

    .line 381
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mSections:Ljava/util/List;

    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1

    .line 106
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method protected getStripCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lit/sephiroth/android/library/exif2/ExifTag;
    .locals 1

    .line 136
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p2, p1}, Lit/sephiroth/android/library/exif2/IfdData;->getTag(S)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 6

    .line 206
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 210
    :cond_0
    sget v3, Lit/sephiroth/android/library/exif2/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v3}, Lit/sephiroth/android/library/exif2/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/exif2/IfdData;->getTag(S)Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 214
    :cond_1
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    return-object v2

    .line 218
    :cond_2
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifTag;->getComponentCount()I

    move-result v3

    new-array v3, v3, [B

    .line 219
    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/exif2/ExifTag;->getBytes([B)V

    .line 221
    new-array v0, v4, [B

    .line 222
    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    :try_start_0
    sget-object v1, Lit/sephiroth/android/library/exif2/ExifData;->USER_COMMENT_ASCII:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    new-instance v0, Ljava/lang/String;

    array-length v1, v3

    sub-int/2addr v1, v4

    const-string v5, "US-ASCII"

    invoke-direct {v0, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    .line 228
    :cond_3
    sget-object v1, Lit/sephiroth/android/library/exif2/ExifData;->USER_COMMENT_JIS:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 229
    new-instance v0, Ljava/lang/String;

    array-length v1, v3

    sub-int/2addr v1, v4

    const-string v5, "EUC-JP"

    invoke-direct {v0, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    .line 231
    :cond_4
    sget-object v1, Lit/sephiroth/android/library/exif2/ExifData;->USER_COMMENT_UNICODE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    new-instance v0, Ljava/lang/String;

    array-length v1, v3

    sub-int/2addr v1, v4

    const-string v5, "UTF-16"

    invoke-direct {v0, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_5
    return-object v2

    :catch_0
    const-string v0, "ExifData"

    const-string v1, "Failed to decode the user comment"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasUncompressedStrip()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected removeTag(SI)V
    .locals 1

    .line 194
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-virtual {p2, p1}, Lit/sephiroth/android/library/exif2/IfdData;->removeTag(S)V

    return-void
.end method

.method protected removeThumbnailData()V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/ExifData;->clearThumbnailAndStrips()V

    .line 182
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mIfdDatas:[Lit/sephiroth/android/library/exif2/IfdData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0

    .line 68
    iput-object p1, p0, Lit/sephiroth/android/library/exif2/ExifData;->mThumbnail:[B

    return-void
.end method

.method protected setImageSize(II)V
    .locals 0

    .line 360
    iput p1, p0, Lit/sephiroth/android/library/exif2/ExifData;->imageWidth:I

    .line 361
    iput p2, p0, Lit/sephiroth/android/library/exif2/ExifData;->imageLength:I

    return-void
.end method

.method public setJpegProcess(S)V
    .locals 0

    .line 369
    iput-short p1, p0, Lit/sephiroth/android/library/exif2/ExifData;->jpegProcess:S

    return-void
.end method

.method protected setQualityGuess(I)V
    .locals 0

    .line 352
    iput p1, p0, Lit/sephiroth/android/library/exif2/ExifData;->qualityGuess:I

    return-void
.end method

.method public setSections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lit/sephiroth/android/library/exif2/ExifParser$Section;",
            ">;)V"
        }
    .end annotation

    .line 377
    iput-object p1, p0, Lit/sephiroth/android/library/exif2/ExifData;->mSections:Ljava/util/List;

    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3

    .line 82
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 87
    iget-object v1, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
