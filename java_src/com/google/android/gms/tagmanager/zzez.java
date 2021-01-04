package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzrt;

final class zzez implements Runnable {
    private final /* synthetic */ zzex zzbfi;
    private final /* synthetic */ zzrt zzbfj;

    zzez(zzex zzex, zzrt zzrt) {
        this.zzbfi = zzex;
        this.zzbfj = zzrt;
    }

    public final void run() {
        this.zzbfi.zzb(this.zzbfj);
    }
}
