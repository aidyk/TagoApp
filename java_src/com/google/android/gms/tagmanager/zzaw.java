package com.google.android.gms.tagmanager;

final class zzaw implements Runnable {
    private final /* synthetic */ zzat zzbca;
    private final /* synthetic */ String zzbcc;

    zzaw(zzat zzat, String str) {
        this.zzbca = zzat;
        this.zzbcc = str;
    }

    public final void run() {
        this.zzbca.zzdm(this.zzbcc);
    }
}
