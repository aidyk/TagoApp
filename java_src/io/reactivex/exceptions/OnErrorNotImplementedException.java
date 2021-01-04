package io.reactivex.exceptions;

import io.reactivex.annotations.NonNull;

public final class OnErrorNotImplementedException extends RuntimeException {
    private static final long serialVersionUID = -6298857009889503852L;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public OnErrorNotImplementedException(String str, @NonNull Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public OnErrorNotImplementedException(@io.reactivex.annotations.NonNull java.lang.Throwable r3) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "The exception was not handled due to missing onError handler in the subscribe() method call. Further reading: https://github.com/ReactiveX/RxJava/wiki/Error-Handling | "
            r0.append(r1)
            if (r3 == 0) goto L_0x0011
            java.lang.String r1 = r3.getMessage()
            goto L_0x0013
        L_0x0011:
            java.lang.String r1 = ""
        L_0x0013:
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r2.<init>(r0, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.exceptions.OnErrorNotImplementedException.<init>(java.lang.Throwable):void");
    }
}
