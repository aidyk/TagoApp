package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzcz;
import java.io.IOException;

public final class zzdq extends zzjn<zzdq> {
    private zzcz.zzf.zzb zzpl;
    public Long zzpm = null;
    public Long zzpn = null;
    public Long zzpo = null;
    public Long zzpp = null;

    public zzdq() {
        this.zzadp = -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final void zza(zzjl zzjl) throws IOException {
        if (!(this.zzpl == null || this.zzpl == null)) {
            zzjl.zze(1, this.zzpl.zzr());
        }
        if (this.zzpm != null) {
            zzjl.zzi(2, this.zzpm.longValue());
        }
        if (this.zzpn != null) {
            zzjl.zzi(3, this.zzpn.longValue());
        }
        if (this.zzpp != null) {
            zzjl.zzi(4, this.zzpp.longValue());
        }
        if (this.zzpo != null) {
            zzjl.zzi(5, this.zzpo.longValue());
        }
        super.zza(zzjl);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final int zzt() {
        int zzt = super.zzt();
        if (!(this.zzpl == null || this.zzpl == null)) {
            zzt += zzjl.zzi(1, this.zzpl.zzr());
        }
        if (this.zzpm != null) {
            zzt += zzjl.zzd(2, this.zzpm.longValue());
        }
        if (this.zzpn != null) {
            zzt += zzjl.zzd(3, this.zzpn.longValue());
        }
        if (this.zzpp != null) {
            zzt += zzjl.zzd(4, this.zzpp.longValue());
        }
        return this.zzpo != null ? zzt + zzjl.zzd(5, this.zzpo.longValue()) : zzt;
    }

    @Override // com.google.android.gms.internal.vision.zzjt
    public final /* synthetic */ zzjt zza(zzjk zzjk) throws IOException {
        while (true) {
            int zzdq = zzjk.zzdq();
            if (zzdq == 0) {
                return this;
            }
            if (zzdq == 8) {
                int position = zzjk.getPosition();
                int zzdt = zzjk.zzdt();
                switch (zzdt) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                        this.zzpl = zzcz.zzf.zzb.zzu(zzdt);
                        continue;
                    default:
                        zzjk.zzbt(position);
                        zza(zzjk, zzdq);
                        continue;
                }
            } else if (zzdq == 16) {
                this.zzpm = Long.valueOf(zzjk.zzdu());
            } else if (zzdq == 24) {
                this.zzpn = Long.valueOf(zzjk.zzdu());
            } else if (zzdq == 32) {
                this.zzpp = Long.valueOf(zzjk.zzdu());
            } else if (zzdq == 40) {
                this.zzpo = Long.valueOf(zzjk.zzdu());
            } else if (!super.zza(zzjk, zzdq)) {
                return this;
            }
        }
    }
}
