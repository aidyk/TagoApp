package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zzp extends zzzl<zzp> {
    private static volatile zzp[] zzqi;
    public String string = "";
    public int type = 1;
    public zzp[] zzqj = zzk();
    public zzp[] zzqk = zzk();
    public zzp[] zzql = zzk();
    public String zzqm = "";
    public String zzqn = "";
    public long zzqo = 0;
    public boolean zzqp = false;
    public zzp[] zzqq = zzk();
    public int[] zzqr = zzzu.zzcbs;
    public boolean zzqs = false;

    private static int zzc(int i) {
        if (i > 0 && i <= 17) {
            return i;
        }
        StringBuilder sb = new StringBuilder(40);
        sb.append(i);
        sb.append(" is not a valid enum Escaping");
        throw new IllegalArgumentException(sb.toString());
    }

    public static zzp[] zzk() {
        if (zzqi == null) {
            synchronized (zzzp.zzcgg) {
                if (zzqi == null) {
                    zzqi = new zzp[0];
                }
            }
        }
        return zzqi;
    }

    public zzp() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzp)) {
            return false;
        }
        zzp zzp = (zzp) obj;
        if (this.type != zzp.type) {
            return false;
        }
        if (this.string == null) {
            if (zzp.string != null) {
                return false;
            }
        } else if (!this.string.equals(zzp.string)) {
            return false;
        }
        if (!zzzp.equals(this.zzqj, zzp.zzqj) || !zzzp.equals(this.zzqk, zzp.zzqk) || !zzzp.equals(this.zzql, zzp.zzql)) {
            return false;
        }
        if (this.zzqm == null) {
            if (zzp.zzqm != null) {
                return false;
            }
        } else if (!this.zzqm.equals(zzp.zzqm)) {
            return false;
        }
        if (this.zzqn == null) {
            if (zzp.zzqn != null) {
                return false;
            }
        } else if (!this.zzqn.equals(zzp.zzqn)) {
            return false;
        }
        if (this.zzqo != zzp.zzqo || this.zzqp != zzp.zzqp || !zzzp.equals(this.zzqq, zzp.zzqq) || !zzzp.equals(this.zzqr, zzp.zzqr) || this.zzqs != zzp.zzqs) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzp.zzcfx == null || zzp.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzp.zzcfx);
    }

    public final int hashCode() {
        int i = 0;
        int i2 = 1237;
        int hashCode = (((((((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31) + (this.string == null ? 0 : this.string.hashCode())) * 31) + zzzp.hashCode(this.zzqj)) * 31) + zzzp.hashCode(this.zzqk)) * 31) + zzzp.hashCode(this.zzql)) * 31) + (this.zzqm == null ? 0 : this.zzqm.hashCode())) * 31) + (this.zzqn == null ? 0 : this.zzqn.hashCode())) * 31) + ((int) (this.zzqo ^ (this.zzqo >>> 32)))) * 31) + (this.zzqp ? 1231 : 1237)) * 31) + zzzp.hashCode(this.zzqq)) * 31) + zzzp.hashCode(this.zzqr)) * 31;
        if (this.zzqs) {
            i2 = 1231;
        }
        int i3 = (hashCode + i2) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            i = this.zzcfx.hashCode();
        }
        return i3 + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzj) throws IOException {
        zzzj.zzd(1, this.type);
        if (this.string != null && !this.string.equals("")) {
            zzzj.zzb(2, this.string);
        }
        if (this.zzqj != null && this.zzqj.length > 0) {
            for (int i = 0; i < this.zzqj.length; i++) {
                zzp zzp = this.zzqj[i];
                if (zzp != null) {
                    zzzj.zza(3, zzp);
                }
            }
        }
        if (this.zzqk != null && this.zzqk.length > 0) {
            for (int i2 = 0; i2 < this.zzqk.length; i2++) {
                zzp zzp2 = this.zzqk[i2];
                if (zzp2 != null) {
                    zzzj.zza(4, zzp2);
                }
            }
        }
        if (this.zzql != null && this.zzql.length > 0) {
            for (int i3 = 0; i3 < this.zzql.length; i3++) {
                zzp zzp3 = this.zzql[i3];
                if (zzp3 != null) {
                    zzzj.zza(5, zzp3);
                }
            }
        }
        if (this.zzqm != null && !this.zzqm.equals("")) {
            zzzj.zzb(6, this.zzqm);
        }
        if (this.zzqn != null && !this.zzqn.equals("")) {
            zzzj.zzb(7, this.zzqn);
        }
        if (this.zzqo != 0) {
            zzzj.zzi(8, this.zzqo);
        }
        if (this.zzqs) {
            zzzj.zzb(9, this.zzqs);
        }
        if (this.zzqr != null && this.zzqr.length > 0) {
            for (int i4 = 0; i4 < this.zzqr.length; i4++) {
                zzzj.zzd(10, this.zzqr[i4]);
            }
        }
        if (this.zzqq != null && this.zzqq.length > 0) {
            for (int i5 = 0; i5 < this.zzqq.length; i5++) {
                zzp zzp4 = this.zzqq[i5];
                if (zzp4 != null) {
                    zzzj.zza(11, zzp4);
                }
            }
        }
        if (this.zzqp) {
            zzzj.zzb(12, this.zzqp);
        }
        super.zza(zzzj);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final int zzf() {
        int zzf = super.zzf() + zzzj.zzh(1, this.type);
        if (this.string != null && !this.string.equals("")) {
            zzf += zzzj.zzc(2, this.string);
        }
        if (this.zzqj != null && this.zzqj.length > 0) {
            int i = zzf;
            for (int i2 = 0; i2 < this.zzqj.length; i2++) {
                zzp zzp = this.zzqj[i2];
                if (zzp != null) {
                    i += zzzj.zzb(3, zzp);
                }
            }
            zzf = i;
        }
        if (this.zzqk != null && this.zzqk.length > 0) {
            int i3 = zzf;
            for (int i4 = 0; i4 < this.zzqk.length; i4++) {
                zzp zzp2 = this.zzqk[i4];
                if (zzp2 != null) {
                    i3 += zzzj.zzb(4, zzp2);
                }
            }
            zzf = i3;
        }
        if (this.zzql != null && this.zzql.length > 0) {
            int i5 = zzf;
            for (int i6 = 0; i6 < this.zzql.length; i6++) {
                zzp zzp3 = this.zzql[i6];
                if (zzp3 != null) {
                    i5 += zzzj.zzb(5, zzp3);
                }
            }
            zzf = i5;
        }
        if (this.zzqm != null && !this.zzqm.equals("")) {
            zzf += zzzj.zzc(6, this.zzqm);
        }
        if (this.zzqn != null && !this.zzqn.equals("")) {
            zzf += zzzj.zzc(7, this.zzqn);
        }
        if (this.zzqo != 0) {
            zzf += zzzj.zzd(8, this.zzqo);
        }
        if (this.zzqs) {
            zzf += zzzj.zzbc(9) + 1;
        }
        if (this.zzqr != null && this.zzqr.length > 0) {
            int i7 = 0;
            for (int i8 = 0; i8 < this.zzqr.length; i8++) {
                i7 += zzzj.zzbd(this.zzqr[i8]);
            }
            zzf = zzf + i7 + (this.zzqr.length * 1);
        }
        if (this.zzqq != null && this.zzqq.length > 0) {
            for (int i9 = 0; i9 < this.zzqq.length; i9++) {
                zzp zzp4 = this.zzqq[i9];
                if (zzp4 != null) {
                    zzf += zzzj.zzb(11, zzp4);
                }
            }
        }
        return this.zzqp ? zzf + zzzj.zzbc(12) + 1 : zzf;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzb */
    public final zzp zza(zzzi zzzi) throws IOException {
        int zzvi;
        while (true) {
            int zzuq = zzzi.zzuq();
            switch (zzuq) {
                case 0:
                    return this;
                case 8:
                    try {
                        zzvi = zzzi.zzvi();
                        if (zzvi <= 0 || zzvi > 8) {
                            StringBuilder sb = new StringBuilder(36);
                            sb.append(zzvi);
                            sb.append(" is not a valid enum Type");
                            break;
                        } else {
                            this.type = zzvi;
                            break;
                        }
                    } catch (IllegalArgumentException unused) {
                        zzzi.zzca(zzzi.getPosition());
                        zza(zzzi, zzuq);
                        break;
                    }
                    break;
                case 18:
                    this.string = zzzi.readString();
                    break;
                case 26:
                    int zzb = zzzu.zzb(zzzi, 26);
                    int length = this.zzqj == null ? 0 : this.zzqj.length;
                    zzp[] zzpArr = new zzp[(zzb + length)];
                    if (length != 0) {
                        System.arraycopy(this.zzqj, 0, zzpArr, 0, length);
                    }
                    while (length < zzpArr.length - 1) {
                        zzpArr[length] = new zzp();
                        zzzi.zza(zzpArr[length]);
                        zzzi.zzuq();
                        length++;
                    }
                    zzpArr[length] = new zzp();
                    zzzi.zza(zzpArr[length]);
                    this.zzqj = zzpArr;
                    break;
                case 34:
                    int zzb2 = zzzu.zzb(zzzi, 34);
                    int length2 = this.zzqk == null ? 0 : this.zzqk.length;
                    zzp[] zzpArr2 = new zzp[(zzb2 + length2)];
                    if (length2 != 0) {
                        System.arraycopy(this.zzqk, 0, zzpArr2, 0, length2);
                    }
                    while (length2 < zzpArr2.length - 1) {
                        zzpArr2[length2] = new zzp();
                        zzzi.zza(zzpArr2[length2]);
                        zzzi.zzuq();
                        length2++;
                    }
                    zzpArr2[length2] = new zzp();
                    zzzi.zza(zzpArr2[length2]);
                    this.zzqk = zzpArr2;
                    break;
                case 42:
                    int zzb3 = zzzu.zzb(zzzi, 42);
                    int length3 = this.zzql == null ? 0 : this.zzql.length;
                    zzp[] zzpArr3 = new zzp[(zzb3 + length3)];
                    if (length3 != 0) {
                        System.arraycopy(this.zzql, 0, zzpArr3, 0, length3);
                    }
                    while (length3 < zzpArr3.length - 1) {
                        zzpArr3[length3] = new zzp();
                        zzzi.zza(zzpArr3[length3]);
                        zzzi.zzuq();
                        length3++;
                    }
                    zzpArr3[length3] = new zzp();
                    zzzi.zza(zzpArr3[length3]);
                    this.zzql = zzpArr3;
                    break;
                case 50:
                    this.zzqm = zzzi.readString();
                    break;
                case 58:
                    this.zzqn = zzzi.readString();
                    break;
                case 64:
                    this.zzqo = zzzi.zzvj();
                    break;
                case 72:
                    this.zzqs = zzzi.zzuw();
                    break;
                case 80:
                    int zzb4 = zzzu.zzb(zzzi, 80);
                    int[] iArr = new int[zzb4];
                    int i = 0;
                    for (int i2 = 0; i2 < zzb4; i2++) {
                        if (i2 != 0) {
                            zzzi.zzuq();
                        }
                        int position = zzzi.getPosition();
                        try {
                            iArr[i] = zzc(zzzi.zzvi());
                            i++;
                        } catch (IllegalArgumentException unused2) {
                            zzzi.zzca(position);
                            zza(zzzi, zzuq);
                        }
                    }
                    if (i == 0) {
                        break;
                    } else {
                        int length4 = this.zzqr == null ? 0 : this.zzqr.length;
                        if (length4 != 0 || i != iArr.length) {
                            int[] iArr2 = new int[(length4 + i)];
                            if (length4 != 0) {
                                System.arraycopy(this.zzqr, 0, iArr2, 0, length4);
                            }
                            System.arraycopy(iArr, 0, iArr2, length4, i);
                            this.zzqr = iArr2;
                            break;
                        } else {
                            this.zzqr = iArr;
                            break;
                        }
                    }
                case 82:
                    int zzar = zzzi.zzar(zzzi.zzvi());
                    int position2 = zzzi.getPosition();
                    int i3 = 0;
                    while (zzzi.zzzf() > 0) {
                        try {
                            zzc(zzzi.zzvi());
                            i3++;
                        } catch (IllegalArgumentException unused3) {
                        }
                    }
                    if (i3 != 0) {
                        zzzi.zzca(position2);
                        int length5 = this.zzqr == null ? 0 : this.zzqr.length;
                        int[] iArr3 = new int[(i3 + length5)];
                        if (length5 != 0) {
                            System.arraycopy(this.zzqr, 0, iArr3, 0, length5);
                        }
                        while (zzzi.zzzf() > 0) {
                            int position3 = zzzi.getPosition();
                            try {
                                iArr3[length5] = zzc(zzzi.zzvi());
                                length5++;
                            } catch (IllegalArgumentException unused4) {
                                zzzi.zzca(position3);
                                zza(zzzi, 80);
                            }
                        }
                        this.zzqr = iArr3;
                    }
                    zzzi.zzas(zzar);
                    break;
                case 90:
                    int zzb5 = zzzu.zzb(zzzi, 90);
                    int length6 = this.zzqq == null ? 0 : this.zzqq.length;
                    zzp[] zzpArr4 = new zzp[(zzb5 + length6)];
                    if (length6 != 0) {
                        System.arraycopy(this.zzqq, 0, zzpArr4, 0, length6);
                    }
                    while (length6 < zzpArr4.length - 1) {
                        zzpArr4[length6] = new zzp();
                        zzzi.zza(zzpArr4[length6]);
                        zzzi.zzuq();
                        length6++;
                    }
                    zzpArr4[length6] = new zzp();
                    zzzi.zza(zzpArr4[length6]);
                    this.zzqq = zzpArr4;
                    break;
                case 96:
                    this.zzqp = zzzi.zzuw();
                    break;
                default:
                    if (super.zza(zzzi, zzuq)) {
                        break;
                    } else {
                        return this;
                    }
            }
        }
        StringBuilder sb2 = new StringBuilder(36);
        sb2.append(zzvi);
        sb2.append(" is not a valid enum Type");
        throw new IllegalArgumentException(sb2.toString());
    }
}
