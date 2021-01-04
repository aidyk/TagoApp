package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzcz;
import java.io.IOException;

public final class zzdm extends zzjn<zzdm> {
    private static volatile zzdm[] zzoo;
    public String name = null;
    private String zzop = null;
    private String[] zzoq = zzjw.zzady;
    private zzcz.zzd.zzb zzor;
    public String zzos = null;
    public Long zzot = null;
    public Long zzou = null;
    public zzdt[] zzov = zzdt.zzcd();

    public static zzdm[] zzcb() {
        if (zzoo == null) {
            synchronized (zzjr.zzado) {
                if (zzoo == null) {
                    zzoo = new zzdm[0];
                }
            }
        }
        return zzoo;
    }

    public zzdm() {
        this.zzadp = -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final void zza(zzjl zzjl) throws IOException {
        if (this.name != null) {
            zzjl.zza(1, this.name);
        }
        if (this.zzop != null) {
            zzjl.zza(2, this.zzop);
        }
        if (this.zzoq != null && this.zzoq.length > 0) {
            for (int i = 0; i < this.zzoq.length; i++) {
                String str = this.zzoq[i];
                if (str != null) {
                    zzjl.zza(3, str);
                }
            }
        }
        if (!(this.zzor == null || this.zzor == null)) {
            zzjl.zze(4, this.zzor.zzr());
        }
        if (this.zzos != null) {
            zzjl.zza(5, this.zzos);
        }
        if (this.zzot != null) {
            zzjl.zzi(6, this.zzot.longValue());
        }
        if (this.zzou != null) {
            zzjl.zzi(7, this.zzou.longValue());
        }
        if (this.zzov != null && this.zzov.length > 0) {
            for (int i2 = 0; i2 < this.zzov.length; i2++) {
                zzdt zzdt = this.zzov[i2];
                if (zzdt != null) {
                    zzjl.zza(8, zzdt);
                }
            }
        }
        super.zza(zzjl);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.vision.zzjt, com.google.android.gms.internal.vision.zzjn
    public final int zzt() {
        int zzt = super.zzt();
        if (this.name != null) {
            zzt += zzjl.zzb(1, this.name);
        }
        if (this.zzop != null) {
            zzt += zzjl.zzb(2, this.zzop);
        }
        if (this.zzoq != null && this.zzoq.length > 0) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzoq.length; i3++) {
                String str = this.zzoq[i3];
                if (str != null) {
                    i2++;
                    i += zzjl.zzn(str);
                }
            }
            zzt = zzt + i + (i2 * 1);
        }
        if (!(this.zzor == null || this.zzor == null)) {
            zzt += zzjl.zzi(4, this.zzor.zzr());
        }
        if (this.zzos != null) {
            zzt += zzjl.zzb(5, this.zzos);
        }
        if (this.zzot != null) {
            zzt += zzjl.zzd(6, this.zzot.longValue());
        }
        if (this.zzou != null) {
            zzt += zzjl.zzd(7, this.zzou.longValue());
        }
        if (this.zzov != null && this.zzov.length > 0) {
            for (int i4 = 0; i4 < this.zzov.length; i4++) {
                zzdt zzdt = this.zzov[i4];
                if (zzdt != null) {
                    zzt += zzjl.zzb(8, zzdt);
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
                this.name = zzjk.readString();
            } else if (zzdq == 18) {
                this.zzop = zzjk.readString();
            } else if (zzdq == 26) {
                int zzb = zzjw.zzb(zzjk, 26);
                int length = this.zzoq == null ? 0 : this.zzoq.length;
                String[] strArr = new String[(zzb + length)];
                if (length != 0) {
                    System.arraycopy(this.zzoq, 0, strArr, 0, length);
                }
                while (length < strArr.length - 1) {
                    strArr[length] = zzjk.readString();
                    zzjk.zzdq();
                    length++;
                }
                strArr[length] = zzjk.readString();
                this.zzoq = strArr;
            } else if (zzdq == 32) {
                int position = zzjk.getPosition();
                int zzdt = zzjk.zzdt();
                switch (zzdt) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                        this.zzor = zzcz.zzd.zzb.zzt(zzdt);
                        continue;
                    default:
                        zzjk.zzbt(position);
                        zza(zzjk, zzdq);
                        continue;
                }
            } else if (zzdq == 42) {
                this.zzos = zzjk.readString();
            } else if (zzdq == 48) {
                this.zzot = Long.valueOf(zzjk.zzdu());
            } else if (zzdq == 56) {
                this.zzou = Long.valueOf(zzjk.zzdu());
            } else if (zzdq == 66) {
                int zzb2 = zzjw.zzb(zzjk, 66);
                int length2 = this.zzov == null ? 0 : this.zzov.length;
                zzdt[] zzdtArr = new zzdt[(zzb2 + length2)];
                if (length2 != 0) {
                    System.arraycopy(this.zzov, 0, zzdtArr, 0, length2);
                }
                while (length2 < zzdtArr.length - 1) {
                    zzdtArr[length2] = new zzdt();
                    zzjk.zza(zzdtArr[length2]);
                    zzjk.zzdq();
                    length2++;
                }
                zzdtArr[length2] = new zzdt();
                zzjk.zza(zzdtArr[length2]);
                this.zzov = zzdtArr;
            } else if (!super.zza(zzjk, zzdq)) {
                return this;
            }
        }
    }
}
