.class Lit/sephiroth/android/library/exif2/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/exif2/ExifInterface;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lit/sephiroth/android/library/exif2/ExifReader;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;I)Lit/sephiroth/android/library/exif2/ExifData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lit/sephiroth/android/library/exif2/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/ExifReader;->mInterface:Lit/sephiroth/android/library/exif2/ExifInterface;

    invoke-static {p1, p2, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->parse(Ljava/io/InputStream;ILit/sephiroth/android/library/exif2/ExifInterface;)Lit/sephiroth/android/library/exif2/ExifParser;

    move-result-object p1

    .line 46
    new-instance p2, Lit/sephiroth/android/library/exif2/ExifData;

    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p2, v0}, Lit/sephiroth/android/library/exif2/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 47
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lit/sephiroth/android/library/exif2/ExifData;->setSections(Ljava/util/List;)V

    .line 48
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getUncompressedDataPosition()I

    move-result v0

    iput v0, p2, Lit/sephiroth/android/library/exif2/ExifData;->mUncompressedDataPosition:I

    .line 50
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getQualityGuess()I

    move-result v0

    invoke-virtual {p2, v0}, Lit/sephiroth/android/library/exif2/ExifData;->setQualityGuess(I)V

    .line 51
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getJpegProcess()S

    move-result v0

    invoke-virtual {p2, v0}, Lit/sephiroth/android/library/exif2/ExifData;->setJpegProcess(S)V

    .line 53
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getImageWidth()I

    move-result v0

    .line 54
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getImageLength()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 57
    invoke-virtual {p2, v0, v1}, Lit/sephiroth/android/library/exif2/ExifData;->setImageSize(II)V

    .line 62
    :cond_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->next()I

    move-result v0

    :goto_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 103
    :pswitch_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getStripSize()I

    move-result v0

    new-array v0, v0, [B

    .line 104
    array-length v1, v0

    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->read([B)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 105
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getStripIndex()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Lit/sephiroth/android/library/exif2/ExifData;->setStripBytes(I[B)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "ExifReader"

    const-string v1, "Failed to read the strip bytes"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 94
    :pswitch_1
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getCompressedImageSize()I

    move-result v0

    new-array v0, v0, [B

    .line 95
    array-length v1, v0

    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->read([B)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 96
    invoke-virtual {p2, v0}, Lit/sephiroth/android/library/exif2/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    :cond_2
    const-string v0, "ExifReader"

    const-string v1, "Failed to read the compressed thumbnail"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    :pswitch_2
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getTag()Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifTag;->getDataType()S

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 89
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->readFullTagValue(Lit/sephiroth/android/library/exif2/ExifTag;)V

    .line 91
    :cond_3
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p2, v1}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/exif2/IfdData;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    goto :goto_1

    .line 69
    :pswitch_3
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getTag()Lit/sephiroth/android/library/exif2/ExifTag;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifTag;->hasValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 74
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/exif2/ExifParser;->registerForTagValue(Lit/sephiroth/android/library/exif2/ExifTag;)V

    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifTag;->getTagId()S

    move-result v2

    invoke-virtual {p1, v1, v2}, Lit/sephiroth/android/library/exif2/ExifParser;->isDefinedTag(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    invoke-virtual {v0}, Lit/sephiroth/android/library/exif2/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p2, v1}, Lit/sephiroth/android/library/exif2/ExifData;->getIfdData(I)Lit/sephiroth/android/library/exif2/IfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/exif2/IfdData;->setTag(Lit/sephiroth/android/library/exif2/ExifTag;)Lit/sephiroth/android/library/exif2/ExifTag;

    goto :goto_1

    :cond_5
    const-string v1, "ExifReader"

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip tag because not registered in the tag table:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    :pswitch_4
    new-instance v0, Lit/sephiroth/android/library/exif2/IfdData;

    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->getCurrentIfd()I

    move-result v1

    invoke-direct {v0, v1}, Lit/sephiroth/android/library/exif2/IfdData;-><init>(I)V

    invoke-virtual {p2, v0}, Lit/sephiroth/android/library/exif2/ExifData;->addIfdData(Lit/sephiroth/android/library/exif2/IfdData;)V

    .line 112
    :goto_1
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/ExifParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_6
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
