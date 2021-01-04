package com.google.android.gms.internal.vision;

import java.io.IOException;

public final class zzdk extends zzjn<zzdk> {
    public zzds[] zzoh = zzds.zzcc();

    public zzdk() {
        this.zzadp = -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final void zza(zzjl zzjl) throws IOException {
        if (this.zzoh != null && this.zzoh.length > 0) {
            for (int i = 0; i < this.zzoh.length; i++) {
                zzds zzds = this.zzoh[i];
                if (zzds != null) {
                    zzjl.zza(1, zzds);
                }
            }
        }
        super.zza(zzjl);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final int zzt() {
        int zzt = super.zzt();
        if (this.zzoh != null && this.zzoh.length > 0) {
            for (int i = 0; i < this.zzoh.length; i++) {
                zzds zzds = this.zzoh[i];
                if (zzds != null) {
                    zzt += zzjl.zzb(1, zzds);
                }
            }
        }
        return zzt;
    }

    @Override // com.google.android.gms.internal.vision.zzjt
    public final /* synthetic */ zzjt zza(zzjk zzjk) throws IOException {
        while (true) {
            int zzdq = zzjk.zzdq();
            if (zzdq == 0) {
                return this;
            }
            if (zzdq == 10) {
                int zzb = zzjw.zzb(zzjk, 10);
                int length = this.zzoh == null ? 0 : this.zzoh.length;
                zzds[] zzdsArr = new zzds[(zzb + length)];
                if (length != 0) {
                    System.arraycopy(this.zzoh, 0, zzdsArr, 0, length);
                }
                while (length < zzdsArr.length - 1) {
                    zzdsArr[length] = new zzds();
                    zzjk.zza(zzdsArr[length]);
                    zzjk.zzdq();
                    length++;
                }
                zzdsArr[length] = new zzds();
                zzjk.zza(zzdsArr[length]);
                this.zzoh = zzdsArr;
            } else if (!super.zza(zzjk, zzdq)) {
                return this;
            }
        }
    }
}
