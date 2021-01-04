package com.google.android.gms.internal.vision;

import java.io.IOException;

public final class zzdu extends zzjn<zzdu> {
    private zzdl zzqc = null;
    public zzdr zzqd = null;
    public zzdp zzqe = null;
    private Integer zzqf = null;

    public zzdu() {
        this.zzadp = -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final void zza(zzjl zzjl) throws IOException {
        if (this.zzqc != null) {
            zzjl.zza(1, this.zzqc);
        }
        if (this.zzqd != null) {
            zzjl.zza(2, this.zzqd);
        }
        if (this.zzqe != null) {
            zzjl.zza(3, this.zzqe);
        }
        if (this.zzqf != null) {
            zzjl.zze(4, this.zzqf.intValue());
        }
        super.zza(zzjl);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final int zzt() {
        int zzt = super.zzt();
        if (this.zzqc != null) {
            zzt += zzjl.zzb(1, this.zzqc);
        }
        if (this.zzqd != null) {
            zzt += zzjl.zzb(2, this.zzqd);
        }
        if (this.zzqe != null) {
            zzt += zzjl.zzb(3, this.zzqe);
        }
        return this.zzqf != null ? zzt + zzjl.zzi(4, this.zzqf.intValue()) : zzt;
    }

    @Override // com.google.android.gms.internal.vision.zzjt
    public final /* synthetic */ zzjt zza(zzjk zzjk) throws IOException {
        while (true) {
            int zzdq = zzjk.zzdq();
            if (zzdq == 0) {
                return this;
            }
            if (zzdq == 10) {
                if (this.zzqc == null) {
                    this.zzqc = new zzdl();
                }
                zzjk.zza(this.zzqc);
            } else if (zzdq == 18) {
                if (this.zzqd == null) {
                    this.zzqd = new zzdr();
                }
                zzjk.zza(this.zzqd);
            } else if (zzdq == 26) {
                if (this.zzqe == null) {
                    this.zzqe = new zzdp();
                }
                zzjk.zza(this.zzqe);
            } else if (zzdq == 32) {
                this.zzqf = Integer.valueOf(zzjk.zzdt());
            } else if (!super.zza(zzjk, zzdq)) {
                return this;
            }
        }
    }
}
