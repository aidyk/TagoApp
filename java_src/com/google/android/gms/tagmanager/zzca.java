package com.google.android.gms.tagmanager;

final class zzca implements Runnable {
    private final /* synthetic */ zzby zzbdb;
    private final /* synthetic */ long zzbdc;
    private final /* synthetic */ String zzbdd;
    private final /* synthetic */ zzbz zzbde;

    zzca(zzbz zzbz, zzby zzby, long j, String str) {
        this.zzbde = zzbz;
        this.zzbdb = zzby;
        this.zzbdc = j;
        this.zzbdd = str;
    }

    public final void run() {
        if (this.zzbde.zzbda == null) {
            zzfn zzqe = zzfn.zzqe();
            zzqe.zza(this.zzbde.zzri, this.zzbdb);
            this.zzbde.zzbda = zzqe.zzqf();
        }
        this.zzbde.zzbda.zzb(this.zzbdc, this.zzbdd);
    }
}
