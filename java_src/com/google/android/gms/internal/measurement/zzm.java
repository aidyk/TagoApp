package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zzm extends zzzl<zzm> {
    private static volatile zzm[] zzpi;
    public int[] zzpj = zzzu.zzcbs;
    public int[] zzpk = zzzu.zzcbs;
    public int[] zzpl = zzzu.zzcbs;
    public int[] zzpm = zzzu.zzcbs;
    public int[] zzpn = zzzu.zzcbs;
    public int[] zzpo = zzzu.zzcbs;
    public int[] zzpp = zzzu.zzcbs;
    public int[] zzpq = zzzu.zzcbs;
    public int[] zzpr = zzzu.zzcbs;
    public int[] zzps = zzzu.zzcbs;

    public static zzm[] zzi() {
        if (zzpi == null) {
            synchronized (zzzp.zzcgg) {
                if (zzpi == null) {
                    zzpi = new zzm[0];
                }
            }
        }
        return zzpi;
    }

    public zzm() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzm)) {
            return false;
        }
        zzm zzm = (zzm) obj;
        if (!zzzp.equals(this.zzpj, zzm.zzpj) || !zzzp.equals(this.zzpk, zzm.zzpk) || !zzzp.equals(this.zzpl, zzm.zzpl) || !zzzp.equals(this.zzpm, zzm.zzpm) || !zzzp.equals(this.zzpn, zzm.zzpn) || !zzzp.equals(this.zzpo, zzm.zzpo) || !zzzp.equals(this.zzpp, zzm.zzpp) || !zzzp.equals(this.zzpq, zzm.zzpq) || !zzzp.equals(this.zzpr, zzm.zzpr) || !zzzp.equals(this.zzps, zzm.zzps)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzm.zzcfx == null || zzm.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzm.zzcfx);
    }

    public final int hashCode() {
        return ((((((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + zzzp.hashCode(this.zzpj)) * 31) + zzzp.hashCode(this.zzpk)) * 31) + zzzp.hashCode(this.zzpl)) * 31) + zzzp.hashCode(this.zzpm)) * 31) + zzzp.hashCode(this.zzpn)) * 31) + zzzp.hashCode(this.zzpo)) * 31) + zzzp.hashCode(this.zzpp)) * 31) + zzzp.hashCode(this.zzpq)) * 31) + zzzp.hashCode(this.zzpr)) * 31) + zzzp.hashCode(this.zzps)) * 31) + ((this.zzcfx == null || this.zzcfx.isEmpty()) ? 0 : this.zzcfx.hashCode());
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzj) throws IOException {
        if (this.zzpj != null && this.zzpj.length > 0) {
            for (int i = 0; i < this.zzpj.length; i++) {
                zzzj.zzd(1, this.zzpj[i]);
            }
        }
        if (this.zzpk != null && this.zzpk.length > 0) {
            for (int i2 = 0; i2 < this.zzpk.length; i2++) {
                zzzj.zzd(2, this.zzpk[i2]);
            }
        }
        if (this.zzpl != null && this.zzpl.length > 0) {
            for (int i3 = 0; i3 < this.zzpl.length; i3++) {
                zzzj.zzd(3, this.zzpl[i3]);
            }
        }
        if (this.zzpm != null && this.zzpm.length > 0) {
            for (int i4 = 0; i4 < this.zzpm.length; i4++) {
                zzzj.zzd(4, this.zzpm[i4]);
            }
        }
        if (this.zzpn != null && this.zzpn.length > 0) {
            for (int i5 = 0; i5 < this.zzpn.length; i5++) {
                zzzj.zzd(5, this.zzpn[i5]);
            }
        }
        if (this.zzpo != null && this.zzpo.length > 0) {
            for (int i6 = 0; i6 < this.zzpo.length; i6++) {
                zzzj.zzd(6, this.zzpo[i6]);
            }
        }
        if (this.zzpp != null && this.zzpp.length > 0) {
            for (int i7 = 0; i7 < this.zzpp.length; i7++) {
                zzzj.zzd(7, this.zzpp[i7]);
            }
        }
        if (this.zzpq != null && this.zzpq.length > 0) {
            for (int i8 = 0; i8 < this.zzpq.length; i8++) {
                zzzj.zzd(8, this.zzpq[i8]);
            }
        }
        if (this.zzpr != null && this.zzpr.length > 0) {
            for (int i9 = 0; i9 < this.zzpr.length; i9++) {
                zzzj.zzd(9, this.zzpr[i9]);
            }
        }
        if (this.zzps != null && this.zzps.length > 0) {
            for (int i10 = 0; i10 < this.zzps.length; i10++) {
                zzzj.zzd(10, this.zzps[i10]);
            }
        }
        super.zza(zzzj);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final int zzf() {
        int zzf = super.zzf();
        if (this.zzpj != null && this.zzpj.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < this.zzpj.length; i2++) {
                i += zzzj.zzbd(this.zzpj[i2]);
            }
            zzf = zzf + i + (this.zzpj.length * 1);
        }
        if (this.zzpk != null && this.zzpk.length > 0) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.zzpk.length; i4++) {
                i3 += zzzj.zzbd(this.zzpk[i4]);
            }
            zzf = zzf + i3 + (this.zzpk.length * 1);
        }
        if (this.zzpl != null && this.zzpl.length > 0) {
            int i5 = 0;
            for (int i6 = 0; i6 < this.zzpl.length; i6++) {
                i5 += zzzj.zzbd(this.zzpl[i6]);
            }
            zzf = zzf + i5 + (this.zzpl.length * 1);
        }
        if (this.zzpm != null && this.zzpm.length > 0) {
            int i7 = 0;
            for (int i8 = 0; i8 < this.zzpm.length; i8++) {
                i7 += zzzj.zzbd(this.zzpm[i8]);
            }
            zzf = zzf + i7 + (this.zzpm.length * 1);
        }
        if (this.zzpn != null && this.zzpn.length > 0) {
            int i9 = 0;
            for (int i10 = 0; i10 < this.zzpn.length; i10++) {
                i9 += zzzj.zzbd(this.zzpn[i10]);
            }
            zzf = zzf + i9 + (this.zzpn.length * 1);
        }
        if (this.zzpo != null && this.zzpo.length > 0) {
            int i11 = 0;
            for (int i12 = 0; i12 < this.zzpo.length; i12++) {
                i11 += zzzj.zzbd(this.zzpo[i12]);
            }
            zzf = zzf + i11 + (this.zzpo.length * 1);
        }
        if (this.zzpp != null && this.zzpp.length > 0) {
            int i13 = 0;
            for (int i14 = 0; i14 < this.zzpp.length; i14++) {
                i13 += zzzj.zzbd(this.zzpp[i14]);
            }
            zzf = zzf + i13 + (this.zzpp.length * 1);
        }
        if (this.zzpq != null && this.zzpq.length > 0) {
            int i15 = 0;
            for (int i16 = 0; i16 < this.zzpq.length; i16++) {
                i15 += zzzj.zzbd(this.zzpq[i16]);
            }
            zzf = zzf + i15 + (this.zzpq.length * 1);
        }
        if (this.zzpr != null && this.zzpr.length > 0) {
            int i17 = 0;
            for (int i18 = 0; i18 < this.zzpr.length; i18++) {
                i17 += zzzj.zzbd(this.zzpr[i18]);
            }
            zzf = zzf + i17 + (this.zzpr.length * 1);
        }
        if (this.zzps == null || this.zzps.length <= 0) {
            return zzf;
        }
        int i19 = 0;
        for (int i20 = 0; i20 < this.zzps.length; i20++) {
            i19 += zzzj.zzbd(this.zzps[i20]);
        }
        return zzf + i19 + (this.zzps.length * 1);
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
                    int length = this.zzpj == null ? 0 : this.zzpj.length;
                    int[] iArr = new int[(zzb + length)];
                    if (length != 0) {
                        System.arraycopy(this.zzpj, 0, iArr, 0, length);
                    }
                    while (length < iArr.length - 1) {
                        iArr[length] = zzzi.zzvi();
                        zzzi.zzuq();
                        length++;
                    }
                    iArr[length] = zzzi.zzvi();
                    this.zzpj = iArr;
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
                    int length2 = this.zzpj == null ? 0 : this.zzpj.length;
                    int[] iArr2 = new int[(i + length2)];
                    if (length2 != 0) {
                        System.arraycopy(this.zzpj, 0, iArr2, 0, length2);
                    }
                    while (length2 < iArr2.length) {
                        iArr2[length2] = zzzi.zzvi();
                        length2++;
                    }
                    this.zzpj = iArr2;
                    zzzi.zzas(zzar);
                    break;
                case 16:
                    int zzb2 = zzzu.zzb(zzzi, 16);
                    int length3 = this.zzpk == null ? 0 : this.zzpk.length;
                    int[] iArr3 = new int[(zzb2 + length3)];
                    if (length3 != 0) {
                        System.arraycopy(this.zzpk, 0, iArr3, 0, length3);
                    }
                    while (length3 < iArr3.length - 1) {
                        iArr3[length3] = zzzi.zzvi();
                        zzzi.zzuq();
                        length3++;
                    }
                    iArr3[length3] = zzzi.zzvi();
                    this.zzpk = iArr3;
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
                    int length4 = this.zzpk == null ? 0 : this.zzpk.length;
                    int[] iArr4 = new int[(i2 + length4)];
                    if (length4 != 0) {
                        System.arraycopy(this.zzpk, 0, iArr4, 0, length4);
                    }
                    while (length4 < iArr4.length) {
                        iArr4[length4] = zzzi.zzvi();
                        length4++;
                    }
                    this.zzpk = iArr4;
                    zzzi.zzas(zzar2);
                    break;
                case 24:
                    int zzb3 = zzzu.zzb(zzzi, 24);
                    int length5 = this.zzpl == null ? 0 : this.zzpl.length;
                    int[] iArr5 = new int[(zzb3 + length5)];
                    if (length5 != 0) {
                        System.arraycopy(this.zzpl, 0, iArr5, 0, length5);
                    }
                    while (length5 < iArr5.length - 1) {
                        iArr5[length5] = zzzi.zzvi();
                        zzzi.zzuq();
                        length5++;
                    }
                    iArr5[length5] = zzzi.zzvi();
                    this.zzpl = iArr5;
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
                    int length6 = this.zzpl == null ? 0 : this.zzpl.length;
                    int[] iArr6 = new int[(i3 + length6)];
                    if (length6 != 0) {
                        System.arraycopy(this.zzpl, 0, iArr6, 0, length6);
                    }
                    while (length6 < iArr6.length) {
                        iArr6[length6] = zzzi.zzvi();
                        length6++;
                    }
                    this.zzpl = iArr6;
                    zzzi.zzas(zzar3);
                    break;
                case 32:
                    int zzb4 = zzzu.zzb(zzzi, 32);
                    int length7 = this.zzpm == null ? 0 : this.zzpm.length;
                    int[] iArr7 = new int[(zzb4 + length7)];
                    if (length7 != 0) {
                        System.arraycopy(this.zzpm, 0, iArr7, 0, length7);
                    }
                    while (length7 < iArr7.length - 1) {
                        iArr7[length7] = zzzi.zzvi();
                        zzzi.zzuq();
                        length7++;
                    }
                    iArr7[length7] = zzzi.zzvi();
                    this.zzpm = iArr7;
                    break;
                case 34:
                    int zzar4 = zzzi.zzar(zzzi.zzvi());
                    int position4 = zzzi.getPosition();
                    int i4 = 0;
                    while (zzzi.zzzf() > 0) {
                        zzzi.zzvi();
                        i4++;
                    }
                    zzzi.zzca(position4);
                    int length8 = this.zzpm == null ? 0 : this.zzpm.length;
                    int[] iArr8 = new int[(i4 + length8)];
                    if (length8 != 0) {
                        System.arraycopy(this.zzpm, 0, iArr8, 0, length8);
                    }
                    while (length8 < iArr8.length) {
                        iArr8[length8] = zzzi.zzvi();
                        length8++;
                    }
                    this.zzpm = iArr8;
                    zzzi.zzas(zzar4);
                    break;
                case 40:
                    int zzb5 = zzzu.zzb(zzzi, 40);
                    int length9 = this.zzpn == null ? 0 : this.zzpn.length;
                    int[] iArr9 = new int[(zzb5 + length9)];
                    if (length9 != 0) {
                        System.arraycopy(this.zzpn, 0, iArr9, 0, length9);
                    }
                    while (length9 < iArr9.length - 1) {
                        iArr9[length9] = zzzi.zzvi();
                        zzzi.zzuq();
                        length9++;
                    }
                    iArr9[length9] = zzzi.zzvi();
                    this.zzpn = iArr9;
                    break;
                case 42:
                    int zzar5 = zzzi.zzar(zzzi.zzvi());
                    int position5 = zzzi.getPosition();
                    int i5 = 0;
                    while (zzzi.zzzf() > 0) {
                        zzzi.zzvi();
                        i5++;
                    }
                    zzzi.zzca(position5);
                    int length10 = this.zzpn == null ? 0 : this.zzpn.length;
                    int[] iArr10 = new int[(i5 + length10)];
                    if (length10 != 0) {
                        System.arraycopy(this.zzpn, 0, iArr10, 0, length10);
                    }
                    while (length10 < iArr10.length) {
                        iArr10[length10] = zzzi.zzvi();
                        length10++;
                    }
                    this.zzpn = iArr10;
                    zzzi.zzas(zzar5);
                    break;
                case 48:
                    int zzb6 = zzzu.zzb(zzzi, 48);
                    int length11 = this.zzpo == null ? 0 : this.zzpo.length;
                    int[] iArr11 = new int[(zzb6 + length11)];
                    if (length11 != 0) {
                        System.arraycopy(this.zzpo, 0, iArr11, 0, length11);
                    }
                    while (length11 < iArr11.length - 1) {
                        iArr11[length11] = zzzi.zzvi();
                        zzzi.zzuq();
                        length11++;
                    }
                    iArr11[length11] = zzzi.zzvi();
                    this.zzpo = iArr11;
                    break;
                case 50:
                    int zzar6 = zzzi.zzar(zzzi.zzvi());
                    int position6 = zzzi.getPosition();
                    int i6 = 0;
                    while (zzzi.zzzf() > 0) {
                        zzzi.zzvi();
                        i6++;
                    }
                    zzzi.zzca(position6);
                    int length12 = this.zzpo == null ? 0 : this.zzpo.length;
                    int[] iArr12 = new int[(i6 + length12)];
                    if (length12 != 0) {
                        System.arraycopy(this.zzpo, 0, iArr12, 0, length12);
                    }
                    while (length12 < iArr12.length) {
                        iArr12[length12] = zzzi.zzvi();
                        length12++;
                    }
                    this.zzpo = iArr12;
                    zzzi.zzas(zzar6);
                    break;
                case 56:
                    int zzb7 = zzzu.zzb(zzzi, 56);
                    int length13 = this.zzpp == null ? 0 : this.zzpp.length;
                    int[] iArr13 = new int[(zzb7 + length13)];
                    if (length13 != 0) {
                        System.arraycopy(this.zzpp, 0, iArr13, 0, length13);
                    }
                    while (length13 < iArr13.length - 1) {
                        iArr13[length13] = zzzi.zzvi();
                        zzzi.zzuq();
                        length13++;
                    }
                    iArr13[length13] = zzzi.zzvi();
                    this.zzpp = iArr13;
                    break;
                case 58:
                    int zzar7 = zzzi.zzar(zzzi.zzvi());
                    int position7 = zzzi.getPosition();
                    int i7 = 0;
                    while (zzzi.zzzf() > 0) {
                        zzzi.zzvi();
                        i7++;
                    }
                    zzzi.zzca(position7);
                    int length14 = this.zzpp == null ? 0 : this.zzpp.length;
                    int[] iArr14 = new int[(i7 + length14)];
                    if (length14 != 0) {
                        System.arraycopy(this.zzpp, 0, iArr14, 0, length14);
                    }
                    while (length14 < iArr14.length) {
                        iArr14[length14] = zzzi.zzvi();
                        length14++;
                    }
                    this.zzpp = iArr14;
                    zzzi.zzas(zzar7);
                    break;
                case 64:
                    int zzb8 = zzzu.zzb(zzzi, 64);
                    int length15 = this.zzpq == null ? 0 : this.zzpq.length;
                    int[] iArr15 = new int[(zzb8 + length15)];
                    if (length15 != 0) {
                        System.arraycopy(this.zzpq, 0, iArr15, 0, length15);
                    }
                    while (length15 < iArr15.length - 1) {
                        iArr15[length15] = zzzi.zzvi();
                        zzzi.zzuq();
                        length15++;
                    }
                    iArr15[length15] = zzzi.zzvi();
                    this.zzpq = iArr15;
                    break;
                case 66:
                    int zzar8 = zzzi.zzar(zzzi.zzvi());
                    int position8 = zzzi.getPosition();
                    int i8 = 0;
                    while (zzzi.zzzf() > 0) {
                        zzzi.zzvi();
                        i8++;
                    }
                    zzzi.zzca(position8);
                    int length16 = this.zzpq == null ? 0 : this.zzpq.length;
                    int[] iArr16 = new int[(i8 + length16)];
                    if (length16 != 0) {
                        System.arraycopy(this.zzpq, 0, iArr16, 0, length16);
                    }
                    while (length16 < iArr16.length) {
                        iArr16[length16] = zzzi.zzvi();
                        length16++;
                    }
                    this.zzpq = iArr16;
                    zzzi.zzas(zzar8);
                    break;
                case 72:
                    int zzb9 = zzzu.zzb(zzzi, 72);
                    int length17 = this.zzpr == null ? 0 : this.zzpr.length;
                    int[] iArr17 = new int[(zzb9 + length17)];
                    if (length17 != 0) {
                        System.arraycopy(this.zzpr, 0, iArr17, 0, length17);
                    }
                    while (length17 < iArr17.length - 1) {
                        iArr17[length17] = zzzi.zzvi();
                        zzzi.zzuq();
                        length17++;
                    }
                    iArr17[length17] = zzzi.zzvi();
                    this.zzpr = iArr17;
                    break;
                case 74:
                    int zzar9 = zzzi.zzar(zzzi.zzvi());
                    int position9 = zzzi.getPosition();
                    int i9 = 0;
                    while (zzzi.zzzf() > 0) {
                        zzzi.zzvi();
                        i9++;
                    }
                    zzzi.zzca(position9);
                    int length18 = this.zzpr == null ? 0 : this.zzpr.length;
                    int[] iArr18 = new int[(i9 + length18)];
                    if (length18 != 0) {
                        System.arraycopy(this.zzpr, 0, iArr18, 0, length18);
                    }
                    while (length18 < iArr18.length) {
                        iArr18[length18] = zzzi.zzvi();
                        length18++;
                    }
                    this.zzpr = iArr18;
                    zzzi.zzas(zzar9);
                    break;
                case 80:
                    int zzb10 = zzzu.zzb(zzzi, 80);
                    int length19 = this.zzps == null ? 0 : this.zzps.length;
                    int[] iArr19 = new int[(zzb10 + length19)];
                    if (length19 != 0) {
                        System.arraycopy(this.zzps, 0, iArr19, 0, length19);
                    }
                    while (length19 < iArr19.length - 1) {
                        iArr19[length19] = zzzi.zzvi();
                        zzzi.zzuq();
                        length19++;
                    }
                    iArr19[length19] = zzzi.zzvi();
                    this.zzps = iArr19;
                    break;
                case 82:
                    int zzar10 = zzzi.zzar(zzzi.zzvi());
                    int position10 = zzzi.getPosition();
                    int i10 = 0;
                    while (zzzi.zzzf() > 0) {
                        zzzi.zzvi();
                        i10++;
                    }
                    zzzi.zzca(position10);
                    int length20 = this.zzps == null ? 0 : this.zzps.length;
                    int[] iArr20 = new int[(i10 + length20)];
                    if (length20 != 0) {
                        System.arraycopy(this.zzps, 0, iArr20, 0, length20);
                    }
                    while (length20 < iArr20.length) {
                        iArr20[length20] = zzzi.zzvi();
                        length20++;
                    }
                    this.zzps = iArr20;
                    zzzi.zzas(zzar10);
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
