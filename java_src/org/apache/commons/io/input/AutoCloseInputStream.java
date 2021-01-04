package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;

public class AutoCloseInputStream extends ProxyInputStream {
    public AutoCloseInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.Closeable, org.apache.commons.io.input.ProxyInputStream, java.lang.AutoCloseable, java.io.InputStream
    public void close() throws IOException {
        this.in.close();
        this.in = new ClosedInputStream();
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.io.input.ProxyInputStream
    public void afterRead(int i) throws IOException {
        if (i == -1) {
            close();
        }
    }

    /* access modifiers changed from: protected */
    @Override // java.lang.Object
    public void finalize() throws Throwable {
        close();
        super.finalize();
    }
}
