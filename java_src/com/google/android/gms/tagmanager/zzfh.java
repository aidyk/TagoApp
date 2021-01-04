package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzp;

/* access modifiers changed from: package-private */
public final class zzfh {
    private zzdz<zzp> zzbga;
    private zzp zzbgb;

    public zzfh(zzdz<zzp> zzdz, zzp zzp) {
        this.zzbga = zzdz;
        this.zzbgb = zzp;
    }

    public final zzdz<zzp> zzpv() {
        return this.zzbga;
    }

    public final zzp zzpw() {
        return this.zzbgb;
    }

    public final int getSize() {
        return this.zzbga.getObject().zzzo() + (this.zzbgb == null ? 0 : this.zzbgb.zzzo());
    }
}
