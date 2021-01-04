package it.sephiroth.android.library.exif2;

import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.UByte;

class ByteBufferInputStream extends InputStream {
    private ByteBuffer mBuf;

    public ByteBufferInputStream(ByteBuffer byteBuffer) {
        this.mBuf = byteBuffer;
    }

    @Override // java.io.InputStream
    public int read() {
        if (!this.mBuf.hasRemaining()) {
            return -1;
        }
        return this.mBuf.get() & UByte.MAX_VALUE;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (!this.mBuf.hasRemaining()) {
            return -1;
        }
        int min = Math.min(i2, this.mBuf.remaining());
        this.mBuf.get(bArr, i, min);
        return min;
    }
}
