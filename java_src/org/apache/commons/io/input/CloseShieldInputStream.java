package org.apache.commons.io.input;

import java.io.InputStream;

public class CloseShieldInputStream extends ProxyInputStream {
    public CloseShieldInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.Closeable, org.apache.commons.io.input.ProxyInputStream, java.lang.AutoCloseable, java.io.InputStream
    public void close() {
        this.in = new ClosedInputStream();
    }
}
