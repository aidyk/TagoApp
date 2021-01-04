.class Lit/sephiroth/android/library/exif2/CountedDataInputStream;
.super Ljava/io/FilterInputStream;
.source "CountedDataInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mByteArray:[B

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mCount:I

.field private mEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x8

    .line 30
    new-array p1, p1, [B

    iput-object p1, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteArray:[B

    .line 31
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteArray:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mCount:I

    .line 33
    iput p1, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mEnd:I

    return-void
.end method


# virtual methods
.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 91
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .line 44
    iget v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mEnd:I

    return v0
.end method

.method public getReadByteCount()I
    .locals 1

    .line 48
    iget v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mCount:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 61
    iget v1, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mCount:I

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mCount:I

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 54
    iget v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mCount:I

    if-ltz p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mCount:I

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 68
    iget p2, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mCount:I

    if-ltz p1, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    add-int/2addr p2, p3

    iput p2, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mCount:I

    return p1
.end method

.method public readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readOrThrow([BII)V

    .line 110
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 111
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readOrThrow([BII)V

    .line 131
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 132
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readOrThrow([BII)V

    .line 137
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 138
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readOrThrow([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readOrThrow([BII)V

    return-void
.end method

.method public readOrThrow([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->read([BII)I

    move-result p1

    if-ne p1, p3, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readOrThrow([BII)V

    .line 104
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 105
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-array p1, p1, [B

    .line 143
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readOrThrow([B)V

    .line 144
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    new-array p1, p1, [B

    .line 153
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readOrThrow([B)V

    .line 154
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readOrThrow([BII)V

    .line 116
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 117
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setEnd(I)V
    .locals 0

    .line 40
    iput p1, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mEnd:I

    return-void
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 75
    iget v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mCount:I

    return-wide p1
.end method

.method public skipOrThrow(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->skip(J)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public skipTo(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget v0, p0, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->mCount:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 83
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/exif2/CountedDataInputStream;->skipOrThrow(J)V

    return-void
.end method
