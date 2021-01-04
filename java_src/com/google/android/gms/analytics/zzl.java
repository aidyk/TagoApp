package com.google.android.gms.analytics;

/* access modifiers changed from: package-private */
public final class zzl implements Runnable {
    private final /* synthetic */ zzg zzss;
    private final /* synthetic */ zzk zzst;

    zzl(zzk zzk, zzg zzg) {
        this.zzst = zzk;
        this.zzss = zzg;
    }

    public final void run() {
        this.zzss.zzz().zza(this.zzss);
        for (zzn zzn : this.zzst.zzsn) {
            zzn.zza(this.zzss);
        }
        zzk zzk = this.zzst;
        zzk.zzb((zzk) this.zzss);
    }
}
