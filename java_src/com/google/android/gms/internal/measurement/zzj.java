package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zzj extends zzzl<zzj> {
    public zzp[] zzoo = zzp.zzk();
    public zzp[] zzop = zzp.zzk();
    public zzi[] zzoq = zzi.zzg();

    public zzj() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzj)) {
            return false;
        }
        zzj zzj = (zzj) obj;
        if (!zzzp.equals(this.zzoo, zzj.zzoo) || !zzzp.equals(this.zzop, zzj.zzop) || !zzzp.equals(this.zzoq, zzj.zzoq)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzj.zzcfx == null || zzj.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzj.zzcfx);
    }

    public final int hashCode() {
        return ((((((((getClass().getName().hashCode() + 527) * 31) + zzzp.hashCode(this.zzoo)) * 31) + zzzp.hashCode(this.zzop)) * 31) + zzzp.hashCode(this.zzoq)) * 31) + ((this.zzcfx == null || this.zzcfx.isEmpty()) ? 0 : this.zzcfx.hashCode());
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzj) throws IOException {
        if (this.zzoo != null && this.zzoo.length > 0) {
            for (int i = 0; i < this.zzoo.length; i++) {
                zzp zzp = this.zzoo[i];
                if (zzp != null) {
                    zzzj.zza(1, zzp);
                }
            }
        }
        if (this.zzop != null && this.zzop.length > 0) {
            for (int i2 = 0; i2 < this.zzop.length; i2++) {
                zzp zzp2 = this.zzop[i2];
                if (zzp2 != null) {
                    zzzj.zza(2, zzp2);
                }
            }
        }
        if (this.zzoq != null && this.zzoq.length > 0) {
            for (int i3 = 0; i3 < this.zzoq.length; i3++) {
                zzi zzi = this.zzoq[i3];
                if (zzi != null) {
                    zzzj.zza(3, zzi);
                }
            }
        }
        super.zza(zzzj);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final int zzf() {
        int zzf = super.zzf();
        if (this.zzoo != null && this.zzoo.length > 0) {
            int i = zzf;
            for (int i2 = 0; i2 < this.zzoo.length; i2++) {
                zzp zzp = this.zzoo[i2];
                if (zzp != null) {
                    i += zzzj.zzb(1, zzp);
                }
            }
            zzf = i;
        }
        if (this.zzop != null && this.zzop.length > 0) {
            int i3 = zzf;
            for (int i4 = 0; i4 < this.zzop.length; i4++) {
                zzp zzp2 = this.zzop[i4];
                if (zzp2 != null) {
                    i3 += zzzj.zzb(2, zzp2);
                }
            }
            zzf = i3;
        }
        if (this.zzoq != null && this.zzoq.length > 0) {
            for (int i5 = 0; i5 < this.zzoq.length; i5++) {
                zzi zzi = this.zzoq[i5];
                if (zzi != null) {
                    zzf += zzzj.zzb(3, zzi);
                }
            }
        }
        return zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzzi) throws IOException {
        while (true) {
            int zzuq = zzzi.zzuq();
            if (zzuq == 0) {
                return this;
            }
            if (zzuq == 10) {
                int zzb = zzzu.zzb(zzzi, 10);
                int length = this.zzoo == null ? 0 : this.zzoo.length;
                zzp[] zzpArr = new zzp[(zzb + length)];
                if (length != 0) {
                    System.arraycopy(this.zzoo, 0, zzpArr, 0, length);
                }
                while (length < zzpArr.length - 1) {
                    zzpArr[length] = new zzp();
                    zzzi.zza(zzpArr[length]);
                    zzzi.zzuq();
                    length++;
                }
                zzpArr[length] = new zzp();
                zzzi.zza(zzpArr[length]);
                this.zzoo = zzpArr;
            } else if (zzuq == 18) {
                int zzb2 = zzzu.zzb(zzzi, 18);
                int length2 = this.zzop == null ? 0 : this.zzop.length;
                zzp[] zzpArr2 = new zzp[(zzb2 + length2)];
                if (length2 != 0) {
                    System.arraycopy(this.zzop, 0, zzpArr2, 0, length2);
                }
                while (length2 < zzpArr2.length - 1) {
                    zzpArr2[length2] = new zzp();
                    zzzi.zza(zzpArr2[length2]);
                    zzzi.zzuq();
                    length2++;
                }
                zzpArr2[length2] = new zzp();
                zzzi.zza(zzpArr2[length2]);
                this.zzop = zzpArr2;
            } else if (zzuq == 26) {
                int zzb3 = zzzu.zzb(zzzi, 26);
                int length3 = this.zzoq == null ? 0 : this.zzoq.length;
                zzi[] zziArr = new zzi[(zzb3 + length3)];
                if (length3 != 0) {
                    System.arraycopy(this.zzoq, 0, zziArr, 0, length3);
                }
                while (length3 < zziArr.length - 1) {
                    zziArr[length3] = new zzi();
                    zzzi.zza(zziArr[length3]);
                    zzzi.zzuq();
                    length3++;
                }
                zziArr[length3] = new zzi();
                zzzi.zza(zziArr[length3]);
                this.zzoq = zziArr;
            } else if (!super.zza(zzzi, zzuq)) {
                return this;
            }
        }
    }
}
