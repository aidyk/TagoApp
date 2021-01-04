package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zzg {

    public static final class zza extends zzzl<zza> {
        public static final zzzm<zzp, zza> zzpt = zzzm.zza(11, zza.class, 810);
        private static final zza[] zzpu = new zza[0];
        public int[] zzpv = zzzu.zzcbs;
        public int[] zzpw = zzzu.zzcbs;
        public int[] zzpx = zzzu.zzcbs;
        private int zzpy = 0;
        public int[] zzpz = zzzu.zzcbs;
        public int zzqa = 0;
        private int zzqb = 0;

        public zza() {
            this.zzcfx = null;
            this.zzcgh = -1;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zza = (zza) obj;
            if (!zzzp.equals(this.zzpv, zza.zzpv) || !zzzp.equals(this.zzpw, zza.zzpw) || !zzzp.equals(this.zzpx, zza.zzpx) || this.zzpy != zza.zzpy || !zzzp.equals(this.zzpz, zza.zzpz) || this.zzqa != zza.zzqa || this.zzqb != zza.zzqb) {
                return false;
            }
            if (this.zzcfx == null || this.zzcfx.isEmpty()) {
                return zza.zzcfx == null || zza.zzcfx.isEmpty();
            }
            return this.zzcfx.equals(zza.zzcfx);
        }

        public final int hashCode() {
            return ((((((((((((((((getClass().getName().hashCode() + 527) * 31) + zzzp.hashCode(this.zzpv)) * 31) + zzzp.hashCode(this.zzpw)) * 31) + zzzp.hashCode(this.zzpx)) * 31) + this.zzpy) * 31) + zzzp.hashCode(this.zzpz)) * 31) + this.zzqa) * 31) + this.zzqb) * 31) + ((this.zzcfx == null || this.zzcfx.isEmpty()) ? 0 : this.zzcfx.hashCode());
        }

        @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
        public final void zza(zzzj zzzj) throws IOException {
            if (this.zzpv != null && this.zzpv.length > 0) {
                for (int i = 0; i < this.zzpv.length; i++) {
                    zzzj.zzd(1, this.zzpv[i]);
                }
            }
            if (this.zzpw != null && this.zzpw.length > 0) {
                for (int i2 = 0; i2 < this.zzpw.length; i2++) {
                    zzzj.zzd(2, this.zzpw[i2]);
                }
            }
            if (this.zzpx != null && this.zzpx.length > 0) {
                for (int i3 = 0; i3 < this.zzpx.length; i3++) {
                    zzzj.zzd(3, this.zzpx[i3]);
                }
            }
            if (this.zzpy != 0) {
                zzzj.zzd(4, this.zzpy);
            }
            if (this.zzpz != null && this.zzpz.length > 0) {
                for (int i4 = 0; i4 < this.zzpz.length; i4++) {
                    zzzj.zzd(5, this.zzpz[i4]);
                }
            }
            if (this.zzqa != 0) {
                zzzj.zzd(6, this.zzqa);
            }
            if (this.zzqb != 0) {
                zzzj.zzd(7, this.zzqb);
            }
            super.zza(zzzj);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
        public final int zzf() {
            int zzf = super.zzf();
            if (this.zzpv != null && this.zzpv.length > 0) {
                int i = 0;
                for (int i2 = 0; i2 < this.zzpv.length; i2++) {
                    i += zzzj.zzbd(this.zzpv[i2]);
                }
                zzf = zzf + i + (this.zzpv.length * 1);
            }
            if (this.zzpw != null && this.zzpw.length > 0) {
                int i3 = 0;
                for (int i4 = 0; i4 < this.zzpw.length; i4++) {
                    i3 += zzzj.zzbd(this.zzpw[i4]);
                }
                zzf = zzf + i3 + (this.zzpw.length * 1);
            }
            if (this.zzpx != null && this.zzpx.length > 0) {
                int i5 = 0;
                for (int i6 = 0; i6 < this.zzpx.length; i6++) {
                    i5 += zzzj.zzbd(this.zzpx[i6]);
                }
                zzf = zzf + i5 + (this.zzpx.length * 1);
            }
            if (this.zzpy != 0) {
                zzf += zzzj.zzh(4, this.zzpy);
            }
            if (this.zzpz != null && this.zzpz.length > 0) {
                int i7 = 0;
                for (int i8 = 0; i8 < this.zzpz.length; i8++) {
                    i7 += zzzj.zzbd(this.zzpz[i8]);
                }
                zzf = zzf + i7 + (this.zzpz.length * 1);
            }
            if (this.zzqa != 0) {
                zzf += zzzj.zzh(6, this.zzqa);
            }
            return this.zzqb != 0 ? zzf + zzzj.zzh(7, this.zzqb) : zzf;
        }

        @Override // com.google.android.gms.internal.measurement.zzzr
        public final /* synthetic */ zzzr zza(zzzi zzzi) throws IOException {
            while (true) {
                int zzuq = zzzi.zzuq();
                switch (zzuq) {
                    case 0:
                        return this;
                    case 8:
                        int zzb = zzzu.zzb(zzzi, 8);
                        int length = this.zzpv == null ? 0 : this.zzpv.length;
                        int[] iArr = new int[(zzb + length)];
                        if (length != 0) {
                            System.arraycopy(this.zzpv, 0, iArr, 0, length);
                        }
                        while (length < iArr.length - 1) {
                            iArr[length] = zzzi.zzvi();
                            zzzi.zzuq();
                            length++;
                        }
                        iArr[length] = zzzi.zzvi();
                        this.zzpv = iArr;
                        break;
                    case 10:
                        int zzar = zzzi.zzar(zzzi.zzvi());
                        int position = zzzi.getPosition();
                        int i = 0;
                        while (zzzi.zzzf() > 0) {
                            zzzi.zzvi();
                            i++;
                        }
                        zzzi.zzca(position);
                        int length2 = this.zzpv == null ? 0 : this.zzpv.length;
                        int[] iArr2 = new int[(i + length2)];
                        if (length2 != 0) {
                            System.arraycopy(this.zzpv, 0, iArr2, 0, length2);
                        }
                        while (length2 < iArr2.length) {
                            iArr2[length2] = zzzi.zzvi();
                            length2++;
                        }
                        this.zzpv = iArr2;
                        zzzi.zzas(zzar);
                        break;
                    case 16:
                        int zzb2 = zzzu.zzb(zzzi, 16);
                        int length3 = this.zzpw == null ? 0 : this.zzpw.length;
                        int[] iArr3 = new int[(zzb2 + length3)];
                        if (length3 != 0) {
                            System.arraycopy(this.zzpw, 0, iArr3, 0, length3);
                        }
                        while (length3 < iArr3.length - 1) {
                            iArr3[length3] = zzzi.zzvi();
                            zzzi.zzuq();
                            length3++;
                        }
                        iArr3[length3] = zzzi.zzvi();
                        this.zzpw = iArr3;
                        break;
                    case 18:
                        int zzar2 = zzzi.zzar(zzzi.zzvi());
                        int position2 = zzzi.getPosition();
                        int i2 = 0;
                        while (zzzi.zzzf() > 0) {
                            zzzi.zzvi();
                            i2++;
                        }
                        zzzi.zzca(position2);
                        int length4 = this.zzpw == null ? 0 : this.zzpw.length;
                        int[] iArr4 = new int[(i2 + length4)];
                        if (length4 != 0) {
                            System.arraycopy(this.zzpw, 0, iArr4, 0, length4);
                        }
                        while (length4 < iArr4.length) {
                            iArr4[length4] = zzzi.zzvi();
                            length4++;
                        }
                        this.zzpw = iArr4;
                        zzzi.zzas(zzar2);
                        break;
                    case 24:
                        int zzb3 = zzzu.zzb(zzzi, 24);
                        int length5 = this.zzpx == null ? 0 : this.zzpx.length;
                        int[] iArr5 = new int[(zzb3 + length5)];
                        if (length5 != 0) {
                            System.arraycopy(this.zzpx, 0, iArr5, 0, length5);
                        }
                        while (length5 < iArr5.length - 1) {
                            iArr5[length5] = zzzi.zzvi();
                            zzzi.zzuq();
                            length5++;
                        }
                        iArr5[length5] = zzzi.zzvi();
                        this.zzpx = iArr5;
                        break;
                    case 26:
                        int zzar3 = zzzi.zzar(zzzi.zzvi());
                        int position3 = zzzi.getPosition();
                        int i3 = 0;
                        while (zzzi.zzzf() > 0) {
                            zzzi.zzvi();
                            i3++;
                        }
                        zzzi.zzca(position3);
                        int length6 = this.zzpx == null ? 0 : this.zzpx.length;
                        int[] iArr6 = new int[(i3 + length6)];
                        if (length6 != 0) {
                            System.arraycopy(this.zzpx, 0, iArr6, 0, length6);
                        }
                        while (length6 < iArr6.length) {
                            iArr6[length6] = zzzi.zzvi();
                            length6++;
                        }
                        this.zzpx = iArr6;
                        zzzi.zzas(zzar3);
                        break;
                    case 32:
                        this.zzpy = zzzi.zzvi();
                        break;
                    case 40:
                        int zzb4 = zzzu.zzb(zzzi, 40);
                        int length7 = this.zzpz == null ? 0 : this.zzpz.length;
                        int[] iArr7 = new int[(zzb4 + length7)];
                        if (length7 != 0) {
                            System.arraycopy(this.zzpz, 0, iArr7, 0, length7);
                        }
                        while (length7 < iArr7.length - 1) {
                            iArr7[length7] = zzzi.zzvi();
                            zzzi.zzuq();
                            length7++;
                        }
                        iArr7[length7] = zzzi.zzvi();
                        this.zzpz = iArr7;
                        break;
                    case 42:
                        int zzar4 = zzzi.zzar(zzzi.zzvi());
                        int position4 = zzzi.getPosition();
                        int i4 = 0;
                        while (zzzi.zzzf() > 0) {
                            zzzi.zzvi();
                            i4++;
                        }
                        zzzi.zzca(position4);
                        int length8 = this.zzpz == null ? 0 : this.zzpz.length;
                        int[] iArr8 = new int[(i4 + length8)];
                        if (length8 != 0) {
                            System.arraycopy(this.zzpz, 0, iArr8, 0, length8);
                        }
                        while (length8 < iArr8.length) {
                            iArr8[length8] = zzzi.zzvi();
                            length8++;
                        }
                        this.zzpz = iArr8;
                        zzzi.zzas(zzar4);
                        break;
                    case 48:
                        this.zzqa = zzzi.zzvi();
                        break;
                    case 56:
                        this.zzqb = zzzi.zzvi();
                        break;
                    default:
                        if (super.zza(zzzi, zzuq)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }
    }
}
