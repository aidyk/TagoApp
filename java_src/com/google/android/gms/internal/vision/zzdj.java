package com.google.android.gms.internal.vision;

import java.io.IOException;

public final class zzdj extends zzjn<zzdj> {
    private String value = null;
    private Integer zzof;
    private Integer zzog;

    public zzdj() {
        this.zzadp = -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final void zza(zzjl zzjl) throws IOException {
        if (this.zzof != null) {
            zzjl.zze(1, this.zzof.intValue());
        }
        if (this.zzog != null) {
            zzjl.zze(2, this.zzog.intValue());
        }
        if (this.value != null) {
            zzjl.zza(3, this.value);
        }
        super.zza(zzjl);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final int zzt() {
        int zzt = super.zzt();
        if (this.zzof != null) {
            zzt += zzjl.zzi(1, this.zzof.intValue());
        }
        if (this.zzog != null) {
            zzt += zzjl.zzi(2, this.zzog.intValue());
        }
        return this.value != null ? zzt + zzjl.zzb(3, this.value) : zzt;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzc */
    public final zzdj zza(zzjk zzjk) throws IOException {
        int zzdt;
        while (true) {
            int zzdq = zzjk.zzdq();
            if (zzdq == 0) {
                return this;
            }
            if (zzdq == 8) {
                int position = zzjk.getPosition();
                try {
                    this.zzof = Integer.valueOf(zzeb.zzx(zzjk.zzdt()));
                } catch (IllegalArgumentException unused) {
                    zzjk.zzbt(position);
                    zza(zzjk, zzdq);
                }
            } else if (zzdq == 16) {
                try {
                    zzdt = zzjk.zzdt();
                    if (zzdt <= 0 || zzdt > 12) {
                        StringBuilder sb = new StringBuilder(50);
                        sb.append(zzdt);
                        sb.append(" is not a valid enum BarcodeValueFormat");
                    } else {
                        this.zzog = Integer.valueOf(zzdt);
                    }
                } catch (IllegalArgumentException unused2) {
                    zzjk.zzbt(zzjk.getPosition());
                    zza(zzjk, zzdq);
                }
            } else if (zzdq == 26) {
                this.value = zzjk.readString();
            } else if (!super.zza(zzjk, zzdq)) {
                return this;
            }
        }
        StringBuilder sb2 = new StringBuilder(50);
        sb2.append(zzdt);
        sb2.append(" is not a valid enum BarcodeValueFormat");
        throw new IllegalArgumentException(sb2.toString());
    }
}
