package com.google.android.gms.internal.measurement;

import com.facebook.appevents.AppEventsConstants;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.gms.internal.measurement.zzc;
import java.io.IOException;

public final class zzl extends zzzl<zzl> {
    public String version = "";
    private String[] zzos = zzzu.zzcgq;
    public String[] zzot = zzzu.zzcgq;
    public zzp[] zzou = zzp.zzk();
    public zzk[] zzov = zzk.zzh();
    public zzh[] zzow = zzh.zze();
    public zzh[] zzox = zzh.zze();
    public zzh[] zzoy = zzh.zze();
    public zzm[] zzoz = zzm.zzi();
    private String zzpa = "";
    private String zzpb = "";
    private String zzpc = AppEventsConstants.EVENT_PARAM_VALUE_NO;
    private zzc.zza zzpd = null;
    private float zzpe = 0.0f;
    private boolean zzpf = false;
    private String[] zzpg = zzzu.zzcgq;
    public int zzph = 0;

    public zzl() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzl)) {
            return false;
        }
        zzl zzl = (zzl) obj;
        if (!zzzp.equals(this.zzos, zzl.zzos) || !zzzp.equals(this.zzot, zzl.zzot) || !zzzp.equals(this.zzou, zzl.zzou) || !zzzp.equals(this.zzov, zzl.zzov) || !zzzp.equals(this.zzow, zzl.zzow) || !zzzp.equals(this.zzox, zzl.zzox) || !zzzp.equals(this.zzoy, zzl.zzoy) || !zzzp.equals(this.zzoz, zzl.zzoz)) {
            return false;
        }
        if (this.zzpa == null) {
            if (zzl.zzpa != null) {
                return false;
            }
        } else if (!this.zzpa.equals(zzl.zzpa)) {
            return false;
        }
        if (this.zzpb == null) {
            if (zzl.zzpb != null) {
                return false;
            }
        } else if (!this.zzpb.equals(zzl.zzpb)) {
            return false;
        }
        if (this.zzpc == null) {
            if (zzl.zzpc != null) {
                return false;
            }
        } else if (!this.zzpc.equals(zzl.zzpc)) {
            return false;
        }
        if (this.version == null) {
            if (zzl.version != null) {
                return false;
            }
        } else if (!this.version.equals(zzl.version)) {
            return false;
        }
        if (this.zzpd == null) {
            if (zzl.zzpd != null) {
                return false;
            }
        } else if (!this.zzpd.equals(zzl.zzpd)) {
            return false;
        }
        if (Float.floatToIntBits(this.zzpe) != Float.floatToIntBits(zzl.zzpe) || this.zzpf != zzl.zzpf || !zzzp.equals(this.zzpg, zzl.zzpg) || this.zzph != zzl.zzph) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzl.zzcfx == null || zzl.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzl.zzcfx);
    }

    public final int hashCode() {
        int i;
        int i2 = 0;
        int hashCode = ((((((((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + zzzp.hashCode(this.zzos)) * 31) + zzzp.hashCode(this.zzot)) * 31) + zzzp.hashCode(this.zzou)) * 31) + zzzp.hashCode(this.zzov)) * 31) + zzzp.hashCode(this.zzow)) * 31) + zzzp.hashCode(this.zzox)) * 31) + zzzp.hashCode(this.zzoy)) * 31) + zzzp.hashCode(this.zzoz)) * 31) + (this.zzpa == null ? 0 : this.zzpa.hashCode())) * 31) + (this.zzpb == null ? 0 : this.zzpb.hashCode())) * 31) + (this.zzpc == null ? 0 : this.zzpc.hashCode())) * 31) + (this.version == null ? 0 : this.version.hashCode());
        zzc.zza zza = this.zzpd;
        int i3 = hashCode * 31;
        if (zza == null) {
            i = 0;
        } else {
            i = zza.hashCode();
        }
        int floatToIntBits = (((((((((i3 + i) * 31) + Float.floatToIntBits(this.zzpe)) * 31) + (this.zzpf ? 1231 : 1237)) * 31) + zzzp.hashCode(this.zzpg)) * 31) + this.zzph) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            i2 = this.zzcfx.hashCode();
        }
        return floatToIntBits + i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzj) throws IOException {
        if (this.zzot != null && this.zzot.length > 0) {
            for (int i = 0; i < this.zzot.length; i++) {
                String str = this.zzot[i];
                if (str != null) {
                    zzzj.zzb(1, str);
                }
            }
        }
        if (this.zzou != null && this.zzou.length > 0) {
            for (int i2 = 0; i2 < this.zzou.length; i2++) {
                zzp zzp = this.zzou[i2];
                if (zzp != null) {
                    zzzj.zza(2, zzp);
                }
            }
        }
        if (this.zzov != null && this.zzov.length > 0) {
            for (int i3 = 0; i3 < this.zzov.length; i3++) {
                zzk zzk = this.zzov[i3];
                if (zzk != null) {
                    zzzj.zza(3, zzk);
                }
            }
        }
        if (this.zzow != null && this.zzow.length > 0) {
            for (int i4 = 0; i4 < this.zzow.length; i4++) {
                zzh zzh = this.zzow[i4];
                if (zzh != null) {
                    zzzj.zza(4, zzh);
                }
            }
        }
        if (this.zzox != null && this.zzox.length > 0) {
            for (int i5 = 0; i5 < this.zzox.length; i5++) {
                zzh zzh2 = this.zzox[i5];
                if (zzh2 != null) {
                    zzzj.zza(5, zzh2);
                }
            }
        }
        if (this.zzoy != null && this.zzoy.length > 0) {
            for (int i6 = 0; i6 < this.zzoy.length; i6++) {
                zzh zzh3 = this.zzoy[i6];
                if (zzh3 != null) {
                    zzzj.zza(6, zzh3);
                }
            }
        }
        if (this.zzoz != null && this.zzoz.length > 0) {
            for (int i7 = 0; i7 < this.zzoz.length; i7++) {
                zzm zzm = this.zzoz[i7];
                if (zzm != null) {
                    zzzj.zza(7, zzm);
                }
            }
        }
        if (this.zzpa != null && !this.zzpa.equals("")) {
            zzzj.zzb(9, this.zzpa);
        }
        if (this.zzpb != null && !this.zzpb.equals("")) {
            zzzj.zzb(10, this.zzpb);
        }
        if (this.zzpc != null && !this.zzpc.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
            zzzj.zzb(12, this.zzpc);
        }
        if (this.version != null && !this.version.equals("")) {
            zzzj.zzb(13, this.version);
        }
        if (this.zzpd != null) {
            zzzj.zze(14, this.zzpd);
        }
        if (Float.floatToIntBits(this.zzpe) != Float.floatToIntBits(0.0f)) {
            zzzj.zza(15, this.zzpe);
        }
        if (this.zzpg != null && this.zzpg.length > 0) {
            for (int i8 = 0; i8 < this.zzpg.length; i8++) {
                String str2 = this.zzpg[i8];
                if (str2 != null) {
                    zzzj.zzb(16, str2);
                }
            }
        }
        if (this.zzph != 0) {
            zzzj.zzd(17, this.zzph);
        }
        if (this.zzpf) {
            zzzj.zzb(18, this.zzpf);
        }
        if (this.zzos != null && this.zzos.length > 0) {
            for (int i9 = 0; i9 < this.zzos.length; i9++) {
                String str3 = this.zzos[i9];
                if (str3 != null) {
                    zzzj.zzb(19, str3);
                }
            }
        }
        super.zza(zzzj);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final int zzf() {
        int zzf = super.zzf();
        if (this.zzot != null && this.zzot.length > 0) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzot.length; i3++) {
                String str = this.zzot[i3];
                if (str != null) {
                    i2++;
                    i += zzzj.zzge(str);
                }
            }
            zzf = zzf + i + (i2 * 1);
        }
        if (this.zzou != null && this.zzou.length > 0) {
            int i4 = zzf;
            for (int i5 = 0; i5 < this.zzou.length; i5++) {
                zzp zzp = this.zzou[i5];
                if (zzp != null) {
                    i4 += zzzj.zzb(2, zzp);
                }
            }
            zzf = i4;
        }
        if (this.zzov != null && this.zzov.length > 0) {
            int i6 = zzf;
            for (int i7 = 0; i7 < this.zzov.length; i7++) {
                zzk zzk = this.zzov[i7];
                if (zzk != null) {
                    i6 += zzzj.zzb(3, zzk);
                }
            }
            zzf = i6;
        }
        if (this.zzow != null && this.zzow.length > 0) {
            int i8 = zzf;
            for (int i9 = 0; i9 < this.zzow.length; i9++) {
                zzh zzh = this.zzow[i9];
                if (zzh != null) {
                    i8 += zzzj.zzb(4, zzh);
                }
            }
            zzf = i8;
        }
        if (this.zzox != null && this.zzox.length > 0) {
            int i10 = zzf;
            for (int i11 = 0; i11 < this.zzox.length; i11++) {
                zzh zzh2 = this.zzox[i11];
                if (zzh2 != null) {
                    i10 += zzzj.zzb(5, zzh2);
                }
            }
            zzf = i10;
        }
        if (this.zzoy != null && this.zzoy.length > 0) {
            int i12 = zzf;
            for (int i13 = 0; i13 < this.zzoy.length; i13++) {
                zzh zzh3 = this.zzoy[i13];
                if (zzh3 != null) {
                    i12 += zzzj.zzb(6, zzh3);
                }
            }
            zzf = i12;
        }
        if (this.zzoz != null && this.zzoz.length > 0) {
            int i14 = zzf;
            for (int i15 = 0; i15 < this.zzoz.length; i15++) {
                zzm zzm = this.zzoz[i15];
                if (zzm != null) {
                    i14 += zzzj.zzb(7, zzm);
                }
            }
            zzf = i14;
        }
        if (this.zzpa != null && !this.zzpa.equals("")) {
            zzf += zzzj.zzc(9, this.zzpa);
        }
        if (this.zzpb != null && !this.zzpb.equals("")) {
            zzf += zzzj.zzc(10, this.zzpb);
        }
        if (this.zzpc != null && !this.zzpc.equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
            zzf += zzzj.zzc(12, this.zzpc);
        }
        if (this.version != null && !this.version.equals("")) {
            zzf += zzzj.zzc(13, this.version);
        }
        if (this.zzpd != null) {
            zzf += zzve.zzc(14, this.zzpd);
        }
        if (Float.floatToIntBits(this.zzpe) != Float.floatToIntBits(0.0f)) {
            zzf += zzzj.zzbc(15) + 4;
        }
        if (this.zzpg != null && this.zzpg.length > 0) {
            int i16 = 0;
            int i17 = 0;
            for (int i18 = 0; i18 < this.zzpg.length; i18++) {
                String str2 = this.zzpg[i18];
                if (str2 != null) {
                    i17++;
                    i16 += zzzj.zzge(str2);
                }
            }
            zzf = zzf + i16 + (i17 * 2);
        }
        if (this.zzph != 0) {
            zzf += zzzj.zzh(17, this.zzph);
        }
        if (this.zzpf) {
            zzf += zzzj.zzbc(18) + 1;
        }
        if (this.zzos == null || this.zzos.length <= 0) {
            return zzf;
        }
        int i19 = 0;
        int i20 = 0;
        for (int i21 = 0; i21 < this.zzos.length; i21++) {
            String str3 = this.zzos[i21];
            if (str3 != null) {
                i20++;
                i19 += zzzj.zzge(str3);
            }
        }
        return zzf + i19 + (i20 * 2);
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzzi) throws IOException {
        while (true) {
            int zzuq = zzzi.zzuq();
            switch (zzuq) {
                case 0:
                    return this;
                case 10:
                    int zzb = zzzu.zzb(zzzi, 10);
                    int length = this.zzot == null ? 0 : this.zzot.length;
                    String[] strArr = new String[(zzb + length)];
                    if (length != 0) {
                        System.arraycopy(this.zzot, 0, strArr, 0, length);
                    }
                    while (length < strArr.length - 1) {
                        strArr[length] = zzzi.readString();
                        zzzi.zzuq();
                        length++;
                    }
                    strArr[length] = zzzi.readString();
                    this.zzot = strArr;
                    break;
                case 18:
                    int zzb2 = zzzu.zzb(zzzi, 18);
                    int length2 = this.zzou == null ? 0 : this.zzou.length;
                    zzp[] zzpArr = new zzp[(zzb2 + length2)];
                    if (length2 != 0) {
                        System.arraycopy(this.zzou, 0, zzpArr, 0, length2);
                    }
                    while (length2 < zzpArr.length - 1) {
                        zzpArr[length2] = new zzp();
                        zzzi.zza(zzpArr[length2]);
                        zzzi.zzuq();
                        length2++;
                    }
                    zzpArr[length2] = new zzp();
                    zzzi.zza(zzpArr[length2]);
                    this.zzou = zzpArr;
                    break;
                case 26:
                    int zzb3 = zzzu.zzb(zzzi, 26);
                    int length3 = this.zzov == null ? 0 : this.zzov.length;
                    zzk[] zzkArr = new zzk[(zzb3 + length3)];
                    if (length3 != 0) {
                        System.arraycopy(this.zzov, 0, zzkArr, 0, length3);
                    }
                    while (length3 < zzkArr.length - 1) {
                        zzkArr[length3] = new zzk();
                        zzzi.zza(zzkArr[length3]);
                        zzzi.zzuq();
                        length3++;
                    }
                    zzkArr[length3] = new zzk();
                    zzzi.zza(zzkArr[length3]);
                    this.zzov = zzkArr;
                    break;
                case 34:
                    int zzb4 = zzzu.zzb(zzzi, 34);
                    int length4 = this.zzow == null ? 0 : this.zzow.length;
                    zzh[] zzhArr = new zzh[(zzb4 + length4)];
                    if (length4 != 0) {
                        System.arraycopy(this.zzow, 0, zzhArr, 0, length4);
                    }
                    while (length4 < zzhArr.length - 1) {
                        zzhArr[length4] = new zzh();
                        zzzi.zza(zzhArr[length4]);
                        zzzi.zzuq();
                        length4++;
                    }
                    zzhArr[length4] = new zzh();
                    zzzi.zza(zzhArr[length4]);
                    this.zzow = zzhArr;
                    break;
                case 42:
                    int zzb5 = zzzu.zzb(zzzi, 42);
                    int length5 = this.zzox == null ? 0 : this.zzox.length;
                    zzh[] zzhArr2 = new zzh[(zzb5 + length5)];
                    if (length5 != 0) {
                        System.arraycopy(this.zzox, 0, zzhArr2, 0, length5);
                    }
                    while (length5 < zzhArr2.length - 1) {
                        zzhArr2[length5] = new zzh();
                        zzzi.zza(zzhArr2[length5]);
                        zzzi.zzuq();
                        length5++;
                    }
                    zzhArr2[length5] = new zzh();
                    zzzi.zza(zzhArr2[length5]);
                    this.zzox = zzhArr2;
                    break;
                case 50:
                    int zzb6 = zzzu.zzb(zzzi, 50);
                    int length6 = this.zzoy == null ? 0 : this.zzoy.length;
                    zzh[] zzhArr3 = new zzh[(zzb6 + length6)];
                    if (length6 != 0) {
                        System.arraycopy(this.zzoy, 0, zzhArr3, 0, length6);
                    }
                    while (length6 < zzhArr3.length - 1) {
                        zzhArr3[length6] = new zzh();
                        zzzi.zza(zzhArr3[length6]);
                        zzzi.zzuq();
                        length6++;
                    }
                    zzhArr3[length6] = new zzh();
                    zzzi.zza(zzhArr3[length6]);
                    this.zzoy = zzhArr3;
                    break;
                case 58:
                    int zzb7 = zzzu.zzb(zzzi, 58);
                    int length7 = this.zzoz == null ? 0 : this.zzoz.length;
                    zzm[] zzmArr = new zzm[(zzb7 + length7)];
                    if (length7 != 0) {
                        System.arraycopy(this.zzoz, 0, zzmArr, 0, length7);
                    }
                    while (length7 < zzmArr.length - 1) {
                        zzmArr[length7] = new zzm();
                        zzzi.zza(zzmArr[length7]);
                        zzzi.zzuq();
                        length7++;
                    }
                    zzmArr[length7] = new zzm();
                    zzzi.zza(zzmArr[length7]);
                    this.zzoz = zzmArr;
                    break;
                case 74:
                    this.zzpa = zzzi.readString();
                    break;
                case 82:
                    this.zzpb = zzzi.readString();
                    break;
                case 98:
                    this.zzpc = zzzi.readString();
                    break;
                case 106:
                    this.version = zzzi.readString();
                    break;
                case 114:
                    zzc.zza zza = (zzc.zza) zzzi.zza(zzc.zza.zza());
                    if (this.zzpd != null) {
                        zza = (zzc.zza) ((zzvx) ((zzc.zza.C0007zza) ((zzc.zza.C0007zza) this.zzpd.zzwm()).zza((zzvx) zza)).zzwv());
                    }
                    this.zzpd = zza;
                    break;
                case 125:
                    this.zzpe = Float.intBitsToFloat(zzzi.zzvk());
                    break;
                case TsExtractor.TS_STREAM_TYPE_HDMV_DTS:
                    int zzb8 = zzzu.zzb(zzzi, TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
                    int length8 = this.zzpg == null ? 0 : this.zzpg.length;
                    String[] strArr2 = new String[(zzb8 + length8)];
                    if (length8 != 0) {
                        System.arraycopy(this.zzpg, 0, strArr2, 0, length8);
                    }
                    while (length8 < strArr2.length - 1) {
                        strArr2[length8] = zzzi.readString();
                        zzzi.zzuq();
                        length8++;
                    }
                    strArr2[length8] = zzzi.readString();
                    this.zzpg = strArr2;
                    break;
                case 136:
                    this.zzph = zzzi.zzvi();
                    break;
                case 144:
                    this.zzpf = zzzi.zzuw();
                    break;
                case 154:
                    int zzb9 = zzzu.zzb(zzzi, 154);
                    int length9 = this.zzos == null ? 0 : this.zzos.length;
                    String[] strArr3 = new String[(zzb9 + length9)];
                    if (length9 != 0) {
                        System.arraycopy(this.zzos, 0, strArr3, 0, length9);
                    }
                    while (length9 < strArr3.length - 1) {
                        strArr3[length9] = zzzi.readString();
                        zzzi.zzuq();
                        length9++;
                    }
                    strArr3[length9] = zzzi.readString();
                    this.zzos = strArr3;
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
