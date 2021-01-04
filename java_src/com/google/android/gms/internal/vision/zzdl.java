package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzcz;
import java.io.IOException;

public final class zzdl extends zzjn<zzdl> {
    private String url = null;
    private Boolean zzoi = null;
    private zzcz.zzc.zzb zzoj;
    private Long zzok = null;
    private Long zzol = null;
    private Long zzom = null;
    private String zzon = null;

    public zzdl() {
        this.zzadp = -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final void zza(zzjl zzjl) throws IOException {
        if (this.url != null) {
            zzjl.zza(1, this.url);
        }
        if (this.zzoi != null) {
            zzjl.zzb(2, this.zzoi.booleanValue());
        }
        if (!(this.zzoj == null || this.zzoj == null)) {
            zzjl.zze(3, this.zzoj.zzr());
        }
        if (this.zzok != null) {
            zzjl.zzi(4, this.zzok.longValue());
        }
        if (this.zzol != null) {
            zzjl.zzi(5, this.zzol.longValue());
        }
        if (this.zzom != null) {
            zzjl.zzi(6, this.zzom.longValue());
        }
        if (this.zzon != null) {
            zzjl.zza(7, this.zzon);
        }
        super.zza(zzjl);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final int zzt() {
        int zzt = super.zzt();
        if (this.url != null) {
            zzt += zzjl.zzb(1, this.url);
        }
        if (this.zzoi != null) {
            this.zzoi.booleanValue();
            zzt += zzjl.zzav(2) + 1;
        }
        if (!(this.zzoj == null || this.zzoj == null)) {
            zzt += zzjl.zzi(3, this.zzoj.zzr());
        }
        if (this.zzok != null) {
            zzt += zzjl.zzd(4, this.zzok.longValue());
        }
        if (this.zzol != null) {
            zzt += zzjl.zzd(5, this.zzol.longValue());
        }
        if (this.zzom != null) {
            zzt += zzjl.zzd(6, this.zzom.longValue());
        }
        return this.zzon != null ? zzt + zzjl.zzb(7, this.zzon) : zzt;
    }

    @Override // com.google.android.gms.internal.vision.zzjt
    public final /* synthetic */ zzjt zza(zzjk zzjk) throws IOException {
        while (true) {
            int zzdq = zzjk.zzdq();
            if (zzdq == 0) {
                return this;
            }
            if (zzdq == 10) {
                this.url = zzjk.readString();
            } else if (zzdq == 16) {
                this.zzoi = Boolean.valueOf(zzjk.zzcu());
            } else if (zzdq == 24) {
                int position = zzjk.getPosition();
                int zzdt = zzjk.zzdt();
                switch (zzdt) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                        this.zzoj = zzcz.zzc.zzb.zzs(zzdt);
                        continue;
                    default:
                        zzjk.zzbt(position);
                        zza(zzjk, zzdq);
                        continue;
                }
            } else if (zzdq == 32) {
                this.zzok = Long.valueOf(zzjk.zzdu());
            } else if (zzdq == 40) {
                this.zzol = Long.valueOf(zzjk.zzdu());
            } else if (zzdq == 48) {
                this.zzom = Long.valueOf(zzjk.zzdu());
            } else if (zzdq == 58) {
                this.zzon = zzjk.readString();
            } else if (!super.zza(zzjk, zzdq)) {
                return this;
            }
        }
    }
}
