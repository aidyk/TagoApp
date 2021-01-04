package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzda implements zzcd {
    private final /* synthetic */ Runnable zzacf;
    private final /* synthetic */ zzcx zzacg;

    zzda(zzcx zzcx, Runnable runnable) {
        this.zzacg = zzcx;
        this.zzacf = runnable;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final void zza(Throwable th) {
        this.zzacg.handler.post(this.zzacf);
    }
}
