package com.google.android.gms.internal.vision;

import java.io.IOException;

public final class zzdh extends zzjn<zzdh> {
    public String version = null;
    public String zzod = null;

    public zzdh() {
        this.zzadp = -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final void zza(zzjl zzjl) throws IOException {
        if (this.zzod != null) {
            zzjl.zza(1, this.zzod);
        }
        if (this.version != null) {
            zzjl.zza(2, this.version);
        }
        super.zza(zzjl);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final int zzt() {
        int zzt = super.zzt();
        if (this.zzod != null) {
            zzt += zzjl.zzb(1, this.zzod);
        }
        return this.version != null ? zzt + zzjl.zzb(2, this.version) : zzt;
    }

    @Override // com.google.android.gms.internal.vision.zzjt
    public final /* synthetic */ zzjt zza(zzjk zzjk) throws IOException {
        while (true) {
            int zzdq = zzjk.zzdq();
            if (zzdq == 0) {
                return this;
            }
            if (zzdq == 10) {
                this.zzod = zzjk.readString();
            } else if (zzdq == 18) {
                this.version = zzjk.readString();
            } else if (!super.zza(zzjk, zzdq)) {
                return this;
            }
        }
    }
}
