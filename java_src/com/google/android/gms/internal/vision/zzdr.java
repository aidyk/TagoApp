package com.google.android.gms.internal.vision;

import java.io.IOException;

public final class zzdr extends zzjn<zzdr> {
    public String name = null;
    public String zzon = null;
    public Long zzpq = null;
    public zzdh zzpr = null;
    public zzdn zzps = null;
    private zzdi zzpt = null;

    public zzdr() {
        this.zzadp = -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final void zza(zzjl zzjl) throws IOException {
        if (this.name != null) {
            zzjl.zza(1, this.name);
        }
        if (this.zzpq != null) {
            zzjl.zzi(2, this.zzpq.longValue());
        }
        if (this.zzpr != null) {
            zzjl.zza(3, this.zzpr);
        }
        if (this.zzon != null) {
            zzjl.zza(6, this.zzon);
        }
        if (this.zzps != null) {
            zzjl.zza(16, this.zzps);
        }
        if (this.zzpt != null) {
            zzjl.zza(17, this.zzpt);
        }
        super.zza(zzjl);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final int zzt() {
        int zzt = super.zzt();
        if (this.name != null) {
            zzt += zzjl.zzb(1, this.name);
        }
        if (this.zzpq != null) {
            zzt += zzjl.zzd(2, this.zzpq.longValue());
        }
        if (this.zzpr != null) {
            zzt += zzjl.zzb(3, this.zzpr);
        }
        if (this.zzon != null) {
            zzt += zzjl.zzb(6, this.zzon);
        }
        if (this.zzps != null) {
            zzt += zzjl.zzb(16, this.zzps);
        }
        return this.zzpt != null ? zzt + zzjl.zzb(17, this.zzpt) : zzt;
    }

    @Override // com.google.android.gms.internal.vision.zzjt
    public final /* synthetic */ zzjt zza(zzjk zzjk) throws IOException {
        while (true) {
            int zzdq = zzjk.zzdq();
            if (zzdq == 0) {
                return this;
            }
            if (zzdq == 10) {
                this.name = zzjk.readString();
            } else if (zzdq == 16) {
                this.zzpq = Long.valueOf(zzjk.zzdu());
            } else if (zzdq == 26) {
                if (this.zzpr == null) {
                    this.zzpr = new zzdh();
                }
                zzjk.zza(this.zzpr);
            } else if (zzdq == 50) {
                this.zzon = zzjk.readString();
            } else if (zzdq == 130) {
                if (this.zzps == null) {
                    this.zzps = new zzdn();
                }
                zzjk.zza(this.zzps);
            } else if (zzdq == 138) {
                if (this.zzpt == null) {
                    this.zzpt = new zzdi();
                }
                zzjk.zza(this.zzpt);
            } else if (!super.zza(zzjk, zzdq)) {
                return this;
            }
        }
    }
}
