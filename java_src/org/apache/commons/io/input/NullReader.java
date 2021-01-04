package org.apache.commons.io.input;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class NullReader extends Reader {
    private boolean eof;
    private long mark;
    private final boolean markSupported;
    private long position;
    private long readlimit;
    private final long size;
    private final boolean throwEofException;

    /* access modifiers changed from: protected */
    public int processChar() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public void processChars(char[] cArr, int i, int i2) {
    }

    public NullReader(long j) {
        this(j, true, false);
    }

    public NullReader(long j, boolean z, boolean z2) {
        this.mark = -1;
        this.size = j;
        this.markSupported = z;
        this.throwEofException = z2;
    }

    public long getPosition() {
        return this.position;
    }

    public long getSize() {
        return this.size;
    }

    @Override // java.io.Closeable, java.io.Reader, java.lang.AutoCloseable
    public void close() throws IOException {
        this.eof = false;
        this.position = 0;
        this.mark = -1;
    }

    @Override // java.io.Reader
    public synchronized void mark(int i) {
        if (this.markSupported) {
            this.mark = this.position;
            this.readlimit = (long) i;
        } else {
            throw new UnsupportedOperationException("Mark not supported");
        }
    }

    public boolean markSupported() {
        return this.markSupported;
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this.eof) {
            throw new IOException("Read after end of file");
        } else if (this.position == this.size) {
            return doEndOfFile();
        } else {
            this.position++;
            return processChar();
        }
    }

    @Override // java.io.Reader
    public int read(char[] cArr) throws IOException {
        return read(cArr, 0, cArr.length);
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        if (this.eof) {
            throw new IOException("Read after end of file");
        } else if (this.position == this.size) {
            return doEndOfFile();
        } else {
            this.position += (long) i2;
            if (this.position > this.size) {
                i2 -= (int) (this.position - this.size);
                this.position = this.size;
            }
            processChars(cArr, i, i2);
            return i2;
        }
    }

    @Override // java.io.Reader
    public synchronized void reset() throws IOException {
        if (!this.markSupported) {
            throw new UnsupportedOperationException("Mark not supported");
        } else if (this.mark < 0) {
            throw new IOException("No position has been marked");
        } else if (this.position <= this.mark + this.readlimit) {
            this.position = this.mark;
            this.eof = false;
        } else {
            throw new IOException("Marked position [" + this.mark + "] is no longer valid - passed the read limit [" + this.readlimit + "]");
        }
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        if (this.eof) {
            throw new IOException("Skip after end of file");
        } else if (this.position == this.size) {
            return (long) doEndOfFile();
        } else {
            this.position += j;
            if (this.position <= this.size) {
                return j;
            }
            long j2 = j - (this.position - this.size);
            this.position = this.size;
            return j2;
        }
    }

    private int doEndOfFile() throws EOFException {
        this.eof = true;
        if (!this.throwEofException) {
            return -1;
        }
        throw new EOFException();
    }
}
