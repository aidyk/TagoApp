package org.apache.commons.io.output;

import java.io.OutputStream;

public class CloseShieldOutputStream extends ProxyOutputStream {
    public CloseShieldOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.io.FilterOutputStream, org.apache.commons.io.output.ProxyOutputStream, java.lang.AutoCloseable
    public void close() {
        this.out = new ClosedOutputStream();
    }
}
