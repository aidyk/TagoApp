package org.apache.commons.io;

import java.io.IOException;

public class IOExceptionWithCause extends IOException {
    private static final long serialVersionUID = 1;

    public IOExceptionWithCause(String str, Throwable th) {
        super(str);
        initCause(th);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public IOExceptionWithCause(Throwable th) {
        super(th == null ? null : th.toString());
        initCause(th);
    }
}
