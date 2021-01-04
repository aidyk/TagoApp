package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* access modifiers changed from: package-private */
public final class zzg<TResult> implements zzq<TResult> {
    private final Object mLock = new Object();
    private final Executor zzd;
    @GuardedBy("mLock")
    private OnCanceledListener zzj;

    public zzg(@NonNull Executor executor, @NonNull OnCanceledListener onCanceledListener) {
        this.zzd = executor;
        this.zzj = onCanceledListener;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void onComplete(@NonNull Task task) {
        if (task.isCanceled()) {
            synchronized (this.mLock) {
                if (this.zzj != null) {
                    this.zzd.execute(new zzh(this));
                }
            }
        }
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void cancel() {
        synchronized (this.mLock) {
            this.zzj = null;
        }
    }
}
