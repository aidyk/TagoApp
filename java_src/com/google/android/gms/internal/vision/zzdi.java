package com.google.android.gms.internal.vision;

import java.io.IOException;

public final class zzdi extends zzjn<zzdi> {
    private int[] zzoe = zzjw.zzzb;

    public zzdi() {
        this.zzadp = -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final void zza(zzjl zzjl) throws IOException {
        if (this.zzoe != null && this.zzoe.length > 0) {
            for (int i = 0; i < this.zzoe.length; i++) {
                zzjl.zze(1, this.zzoe[i]);
            }
        }
        super.zza(zzjl);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final int zzt() {
        int zzt = super.zzt();
        if (this.zzoe == null || this.zzoe.length <= 0) {
            return zzt;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.zzoe.length; i2++) {
            i += zzjl.zzaw(this.zzoe[i2]);
        }
        return zzt + i + (this.zzoe.length * 1);
    }

    /* access modifiers changed from: private */
    /* renamed from: zzb */
    public final zzdi zza(zzjk zzjk) throws IOException {
        while (true) {
            int zzdq = zzjk.zzdq();
            if (zzdq == 0) {
                return this;
            }
            if (zzdq == 8) {
                int zzb = zzjw.zzb(zzjk, 8);
                int[] iArr = new int[zzb];
                int i = 0;
                for (int i2 = 0; i2 < zzb; i2++) {
                    if (i2 != 0) {
                        zzjk.zzdq();
                    }
                    int position = zzjk.getPosition();
                    try {
                        iArr[i] = zzeb.zzx(zzjk.zzdt());
                        i++;
                    } catch (IllegalArgumentException unused) {
                        zzjk.zzbt(position);
                        zza(zzjk, zzdq);
                    }
                }
                if (i != 0) {
                    int length = this.zzoe == null ? 0 : this.zzoe.length;
                    if (length == 0 && i == iArr.length) {
                        this.zzoe = iArr;
                    } else {
                        int[] iArr2 = new int[(length + i)];
                        if (length != 0) {
                            System.arraycopy(this.zzoe, 0, iArr2, 0, length);
                        }
                        System.arraycopy(iArr, 0, iArr2, length, i);
                        this.zzoe = iArr2;
                    }
                }
            } else if (zzdq == 10) {
                int zzan = zzjk.zzan(zzjk.zzdt());
                int position2 = zzjk.getPosition();
                int i3 = 0;
                while (zzjk.zzhq() > 0) {
                    try {
                        zzeb.zzx(zzjk.zzdt());
                        i3++;
                    } catch (IllegalArgumentException unused2) {
                    }
                }
                if (i3 != 0) {
                    zzjk.zzbt(position2);
                    int length2 = this.zzoe == null ? 0 : this.zzoe.length;
                    int[] iArr3 = new int[(i3 + length2)];
                    if (length2 != 0) {
                        System.arraycopy(this.zzoe, 0, iArr3, 0, length2);
                    }
                    while (zzjk.zzhq() > 0) {
                        int position3 = zzjk.getPosition();
                        try {
                            iArr3[length2] = zzeb.zzx(zzjk.zzdt());
                            length2++;
                        } catch (IllegalArgumentException unused3) {
                            zzjk.zzbt(position3);
                            zza(zzjk, 8);
                        }
                    }
                    this.zzoe = iArr3;
                }
                zzjk.zzao(zzan);
            } else if (!super.zza(zzjk, zzdq)) {
                return this;
            }
        }
    }
}
