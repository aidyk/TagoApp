package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

public class CallableBackgroundInitializer<T> extends BackgroundInitializer<T> {
    private final Callable<T> callable;

    public CallableBackgroundInitializer(Callable<T> callable2) {
        checkCallable(callable2);
        this.callable = callable2;
    }

    public CallableBackgroundInitializer(Callable<T> callable2, ExecutorService executorService) {
        super(executorService);
        checkCallable(callable2);
        this.callable = callable2;
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.lang3.concurrent.BackgroundInitializer
    public T initialize() throws Exception {
        return this.callable.call();
    }

    private void checkCallable(Callable<T> callable2) {
        if (callable2 == null) {
            throw new IllegalArgumentException("Callable must not be null!");
        }
    }
}
