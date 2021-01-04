package com.google.android.gms.internal.measurement;

import java.lang.Thread;

/* access modifiers changed from: package-private */
public final class zzax implements Thread.UncaughtExceptionHandler {
    private final /* synthetic */ zzaw zzwp;

    zzax(zzaw zzaw) {
        this.zzwp = zzaw;
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        zzcp zzcn = this.zzwp.zzcn();
        if (zzcn != null) {
            zzcn.zze("Job execution failed", th);
        }
    }
}
