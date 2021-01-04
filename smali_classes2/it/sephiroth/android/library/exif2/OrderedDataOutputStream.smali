.class Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "OrderedDataOutputStream.java"


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x4

    .line 26
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public setByteOrder(Ljava/nio/ByteOrder;)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;
    .locals 1

    .line 33
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public writeInt(I)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 52
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 53
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method public writeRational(Lit/sephiroth/android/library/exif2/Rational;)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/Rational;->getNumerator()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeInt(I)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    .line 46
    invoke-virtual {p1}, Lit/sephiroth/android/library/exif2/Rational;->getDenominator()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->writeInt(I)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;

    return-object p0
.end method

.method public writeShort(S)Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 39
    iget-object v0, p0, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 40
    iget-object p1, p0, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lit/sephiroth/android/library/exif2/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method
