package com.google.android.gms.internal.vision;

import java.io.IOException;

public final class zzdo extends zzjn<zzdo> {
    public Float zzpc = null;
    public Float zzpd = null;
    public Float zzpe = null;
    public Float zzpf = null;
    public Float zzpg = null;
    public Float zzph = null;

    public zzdo() {
        this.zzadp = -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final void zza(zzjl zzjl) throws IOException {
        if (this.zzpc != null) {
            zzjl.zza(1, this.zzpc.floatValue());
        }
        if (this.zzpd != null) {
            zzjl.zza(2, this.zzpd.floatValue());
        }
        if (this.zzpe != null) {
            zzjl.zza(3, this.zzpe.floatValue());
        }
        if (this.zzpf != null) {
            zzjl.zza(4, this.zzpf.floatValue());
        }
        if (this.zzpg != null) {
            zzjl.zza(5, this.zzpg.floatValue());
        }
        if (this.zzph != null) {
            zzjl.zza(6, this.zzph.floatValue());
        }
        super.zza(zzjl);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final int zzt() {
        int zzt = super.zzt();
        if (this.zzpc != null) {
            this.zzpc.floatValue();
            zzt += zzjl.zzav(1) + 4;
        }
        if (this.zzpd != null) {
            this.zzpd.floatValue();
            zzt += zzjl.zzav(2) + 4;
        }
        if (this.zzpe != null) {
            this.zzpe.floatValue();
            zzt += zzjl.zzav(3) + 4;
        }
        if (this.zzpf != null) {
            this.zzpf.floatValue();
            zzt += zzjl.zzav(4) + 4;
        }
        if (this.zzpg != null) {
            this.zzpg.floatValue();
            zzt += zzjl.zzav(5) + 4;
        }
        if (this.zzph == null) {
            return zzt;
        }
        this.zzph.floatValue();
        return zzt + zzjl.zzav(6) + 4;
    }

    @Override // com.google.android.gms.internal.vision.zzjt
    public final /* synthetic */ zzjt zza(zzjk zzjk) throws IOException {
        while (true) {
            int zzdq = zzjk.zzdq();
            if (zzdq == 0) {
                return this;
            }
            if (zzdq == 13) {
                this.zzpc = Float.valueOf(Float.intBitsToFloat(zzjk.zzdv()));
            } else if (zzdq == 21) {
                this.zzpd = Float.valueOf(Float.intBitsToFloat(zzjk.zzdv()));
            } else if (zzdq == 29) {
                this.zzpe = Float.valueOf(Float.intBitsToFloat(zzjk.zzdv()));
            } else if (zzdq == 37) {
                this.zzpf = Float.valueOf(Float.intBitsToFloat(zzjk.zzdv()));
            } else if (zzdq == 45) {
                this.zzpg = Float.valueOf(Float.intBitsToFloat(zzjk.zzdv()));
            } else if (zzdq == 53) {
                this.zzph = Float.valueOf(Float.intBitsToFloat(zzjk.zzdv()));
            } else if (!super.zza(zzjk, zzdq)) {
                return this;
            }
        }
    }
}
