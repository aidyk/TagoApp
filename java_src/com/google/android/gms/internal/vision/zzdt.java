package com.google.android.gms.internal.vision;

import java.io.IOException;

public final class zzdt extends zzjn<zzdt> {
    private static volatile zzdt[] zzpx;
    public zzdk zzpy = null;
    public Integer zzpz = null;
    public zzdo zzqa = null;
    private zzdj zzqb = null;

    public static zzdt[] zzcd() {
        if (zzpx == null) {
            synchronized (zzjr.zzado) {
                if (zzpx == null) {
                    zzpx = new zzdt[0];
                }
            }
        }
        return zzpx;
    }

    public zzdt() {
        this.zzadp = -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final void zza(zzjl zzjl) throws IOException {
        if (this.zzpy != null) {
            zzjl.zza(1, this.zzpy);
        }
        if (this.zzpz != null) {
            zzjl.zze(2, this.zzpz.intValue());
        }
        if (this.zzqa != null) {
            zzjl.zza(16, this.zzqa);
        }
        if (this.zzqb != null) {
            zzjl.zza(17, this.zzqb);
        }
        super.zza(zzjl);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final int zzt() {
        int zzt = super.zzt();
        if (this.zzpy != null) {
            zzt += zzjl.zzb(1, this.zzpy);
        }
        if (this.zzpz != null) {
            zzt += zzjl.zzi(2, this.zzpz.intValue());
        }
        if (this.zzqa != null) {
            zzt += zzjl.zzb(16, this.zzqa);
        }
        return this.zzqb != null ? zzt + zzjl.zzb(17, this.zzqb) : zzt;
    }

    @Override // com.google.android.gms.internal.vision.zzjt
    public final /* synthetic */ zzjt zza(zzjk zzjk) throws IOException {
        while (true) {
            int zzdq = zzjk.zzdq();
            if (zzdq == 0) {
                return this;
            }
            if (zzdq == 10) {
                if (this.zzpy == null) {
                    this.zzpy = new zzdk();
                }
                zzjk.zza(this.zzpy);
            } else if (zzdq == 16) {
                this.zzpz = Integer.valueOf(zzjk.zzdt());
            } else if (zzdq == 130) {
                if (this.zzqa == null) {
                    this.zzqa = new zzdo();
                }
                zzjk.zza(this.zzqa);
            } else if (zzdq == 138) {
                if (this.zzqb == null) {
                    this.zzqb = new zzdj();
                }
                zzjk.zza(this.zzqb);
            } else if (!super.zza(zzjk, zzdq)) {
                return this;
            }
        }
    }
}
