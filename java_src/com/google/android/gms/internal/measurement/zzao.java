package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzao implements Runnable {
    private final /* synthetic */ zzal zzvs;
    private final /* synthetic */ String zzvu;
    private final /* synthetic */ Runnable zzvv;

    zzao(zzal zzal, String str, Runnable runnable) {
        this.zzvs = zzal;
        this.zzvu = str;
        this.zzvv = runnable;
    }

    public final void run() {
        this.zzvs.zzvq.zzy(this.zzvu);
        if (this.zzvv != null) {
            this.zzvv.run();
        }
    }
}
