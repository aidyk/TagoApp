package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;

public class TeeOutputStream extends ProxyOutputStream {
    protected OutputStream branch;

    public TeeOutputStream(OutputStream outputStream, OutputStream outputStream2) {
        super(outputStream);
        this.branch = outputStream2;
    }

    @Override // java.io.OutputStream, java.io.FilterOutputStream, org.apache.commons.io.output.ProxyOutputStream
    public synchronized void write(byte[] bArr) throws IOException {
        super.write(bArr);
        this.branch.write(bArr);
    }

    @Override // java.io.OutputStream, java.io.FilterOutputStream, org.apache.commons.io.output.ProxyOutputStream
    public synchronized void write(byte[] bArr, int i, int i2) throws IOException {
        super.write(bArr, i, i2);
        this.branch.write(bArr, i, i2);
    }

    @Override // java.io.OutputStream, java.io.FilterOutputStream, org.apache.commons.io.output.ProxyOutputStream
    public synchronized void write(int i) throws IOException {
        super.write(i);
        this.branch.write(i);
    }

    @Override // java.io.OutputStream, java.io.FilterOutputStream, org.apache.commons.io.output.ProxyOutputStream, java.io.Flushable
    public void flush() throws IOException {
        super.flush();
        this.branch.flush();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.io.FilterOutputStream, org.apache.commons.io.output.ProxyOutputStream, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } finally {
            this.branch.close();
        }
    }
}
