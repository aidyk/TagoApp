package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zzh extends zzzl<zzh> {
    private static volatile zzh[] zzod;
    private int name = 0;
    public int[] zzoe = zzzu.zzcbs;
    private int zzof = 0;
    private boolean zzog = false;
    private boolean zzoh = false;

    public static zzh[] zze() {
        if (zzod == null) {
            synchronized (zzzp.zzcgg) {
                if (zzod == null) {
                    zzod = new zzh[0];
                }
            }
        }
        return zzod;
    }

    public zzh() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzh)) {
            return false;
        }
        zzh zzh = (zzh) obj;
        if (!zzzp.equals(this.zzoe, zzh.zzoe) || this.zzof != zzh.zzof || this.name != zzh.name || this.zzog != zzh.zzog || this.zzoh != zzh.zzoh) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzh.zzcfx == null || zzh.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzh.zzcfx);
    }

    public final int hashCode() {
        int i = 1237;
        int hashCode = (((((((((getClass().getName().hashCode() + 527) * 31) + zzzp.hashCode(this.zzoe)) * 31) + this.zzof) * 31) + this.name) * 31) + (this.zzog ? 1231 : 1237)) * 31;
        if (this.zzoh) {
            i = 1231;
        }
        return ((hashCode + i) * 31) + ((this.zzcfx == null || this.zzcfx.isEmpty()) ? 0 : this.zzcfx.hashCode());
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzj) throws IOException {
        if (this.zzoh) {
            zzzj.zzb(1, this.zzoh);
        }
        zzzj.zzd(2, this.zzof);
        if (this.zzoe != null && this.zzoe.length > 0) {
            for (int i = 0; i < this.zzoe.length; i++) {
                zzzj.zzd(3, this.zzoe[i]);
            }
        }
        if (this.name != 0) {
            zzzj.zzd(4, this.name);
        }
        if (this.zzog) {
            zzzj.zzb(6, this.zzog);
        }
        super.zza(zzzj);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final int zzf() {
        int zzf = super.zzf();
        if (this.zzoh) {
            zzf += zzzj.zzbc(1) + 1;
        }
        int zzh = zzf + zzzj.zzh(2, this.zzof);
        if (this.zzoe != null && this.zzoe.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < this.zzoe.length; i2++) {
                i += zzzj.zzbd(this.zzoe[i2]);
            }
            zzh = zzh + i + (this.zzoe.length * 1);
        }
        if (this.name != 0) {
            zzh += zzzj.zzh(4, this.name);
        }
        return this.zzog ? zzh + zzzj.zzbc(6) + 1 : zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzzi) throws IOException {
        while (true) {
            int zzuq = zzzi.zzuq();
            if (zzuq == 0) {
                return this;
            }
            if (zzuq == 8) {
                this.zzoh = zzzi.zzuw();
            } else if (zzuq == 16) {
                this.zzof = zzzi.zzvi();
            } else if (zzuq == 24) {
                int zzb = zzzu.zzb(zzzi, 24);
                int length = this.zzoe == null ? 0 : this.zzoe.length;
                int[] iArr = new int[(zzb + length)];
                if (length != 0) {
                    System.arraycopy(this.zzoe, 0, iArr, 0, length);
                }
                while (length < iArr.length - 1) {
                    iArr[length] = zzzi.zzvi();
                    zzzi.zzuq();
                    length++;
                }
                iArr[length] = zzzi.zzvi();
                this.zzoe = iArr;
            } else if (zzuq == 26) {
                int zzar = zzzi.zzar(zzzi.zzvi());
                int position = zzzi.getPosition();
                int i = 0;
                while (zzzi.zzzf() > 0) {
                    zzzi.zzvi();
                    i++;
                }
                zzzi.zzca(position);
                int length2 = this.zzoe == null ? 0 : this.zzoe.length;
                int[] iArr2 = new int[(i + length2)];
                if (length2 != 0) {
                    System.arraycopy(this.zzoe, 0, iArr2, 0, length2);
                }
                while (length2 < iArr2.length) {
                    iArr2[length2] = zzzi.zzvi();
                    length2++;
                }
                this.zzoe = iArr2;
                zzzi.zzas(zzar);
            } else if (zzuq == 32) {
                this.name = zzzi.zzvi();
            } else if (zzuq == 48) {
                this.zzog = zzzi.zzuw();
            } else if (!super.zza(zzzi, zzuq)) {
                return this;
            }
        }
    }
}
