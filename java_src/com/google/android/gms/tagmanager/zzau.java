package com.google.android.gms.tagmanager;

import java.util.List;

final class zzau implements Runnable {
    private final /* synthetic */ List zzbby;
    private final /* synthetic */ long zzbbz;
    private final /* synthetic */ zzat zzbca;

    zzau(zzat zzat, List list, long j) {
        this.zzbca = zzat;
        this.zzbby = list;
        this.zzbbz = j;
    }

    public final void run() {
        this.zzbca.zzb(this.zzbby, this.zzbbz);
    }
}
