package com.google.android.gms.internal.clearcut;

import java.io.IOException;

public final class zzgy extends zzfu<zzgy> implements Cloneable {
    private String[] zzbiw = zzgb.zzsc;
    private String[] zzbix = zzgb.zzsc;
    private int[] zzbiy = zzgb.zzrx;
    private long[] zzbiz = zzgb.zzry;
    private long[] zzbja = zzgb.zzry;

    public zzgy() {
        this.zzrj = null;
        this.zzrs = -1;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzgb */
    public final zzgy clone() {
        try {
            zzgy zzgy = (zzgy) super.clone();
            if (this.zzbiw != null && this.zzbiw.length > 0) {
                zzgy.zzbiw = (String[]) this.zzbiw.clone();
            }
            if (this.zzbix != null && this.zzbix.length > 0) {
                zzgy.zzbix = (String[]) this.zzbix.clone();
            }
            if (this.zzbiy != null && this.zzbiy.length > 0) {
                zzgy.zzbiy = (int[]) this.zzbiy.clone();
            }
            if (this.zzbiz != null && this.zzbiz.length > 0) {
                zzgy.zzbiz = (long[]) this.zzbiz.clone();
            }
            if (this.zzbja != null && this.zzbja.length > 0) {
                zzgy.zzbja = (long[]) this.zzbja.clone();
            }
            return zzgy;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgy)) {
            return false;
        }
        zzgy zzgy = (zzgy) obj;
        if (zzfy.equals(this.zzbiw, zzgy.zzbiw) && zzfy.equals(this.zzbix, zzgy.zzbix) && zzfy.equals(this.zzbiy, zzgy.zzbiy) && zzfy.equals(this.zzbiz, zzgy.zzbiz) && zzfy.equals(this.zzbja, zzgy.zzbja)) {
            return (this.zzrj == null || this.zzrj.isEmpty()) ? zzgy.zzrj == null || zzgy.zzrj.isEmpty() : this.zzrj.equals(zzgy.zzrj);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((getClass().getName().hashCode() + 527) * 31) + zzfy.hashCode(this.zzbiw)) * 31) + zzfy.hashCode(this.zzbix)) * 31) + zzfy.hashCode(this.zzbiy)) * 31) + zzfy.hashCode(this.zzbiz)) * 31) + zzfy.hashCode(this.zzbja)) * 31) + ((this.zzrj == null || this.zzrj.isEmpty()) ? 0 : this.zzrj.hashCode());
    }

    @Override // com.google.android.gms.internal.clearcut.zzfz, com.google.android.gms.internal.clearcut.zzfu
    public final void zza(zzfs zzfs) throws IOException {
        if (this.zzbiw != null && this.zzbiw.length > 0) {
            for (int i = 0; i < this.zzbiw.length; i++) {
                String str = this.zzbiw[i];
                if (str != null) {
                    zzfs.zza(1, str);
                }
            }
        }
        if (this.zzbix != null && this.zzbix.length > 0) {
            for (int i2 = 0; i2 < this.zzbix.length; i2++) {
                String str2 = this.zzbix[i2];
                if (str2 != null) {
                    zzfs.zza(2, str2);
                }
            }
        }
        if (this.zzbiy != null && this.zzbiy.length > 0) {
            for (int i3 = 0; i3 < this.zzbiy.length; i3++) {
                zzfs.zzc(3, this.zzbiy[i3]);
            }
        }
        if (this.zzbiz != null && this.zzbiz.length > 0) {
            for (int i4 = 0; i4 < this.zzbiz.length; i4++) {
                zzfs.zzi(4, this.zzbiz[i4]);
            }
        }
        if (this.zzbja != null && this.zzbja.length > 0) {
            for (int i5 = 0; i5 < this.zzbja.length; i5++) {
                zzfs.zzi(5, this.zzbja[i5]);
            }
        }
        super.zza(zzfs);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.clearcut.zzfz, com.google.android.gms.internal.clearcut.zzfu
    public final int zzen() {
        int zzen = super.zzen();
        if (this.zzbiw != null && this.zzbiw.length > 0) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzbiw.length; i3++) {
                String str = this.zzbiw[i3];
                if (str != null) {
                    i2++;
                    i += zzfs.zzh(str);
                }
            }
            zzen = zzen + i + (i2 * 1);
        }
        if (this.zzbix != null && this.zzbix.length > 0) {
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < this.zzbix.length; i6++) {
                String str2 = this.zzbix[i6];
                if (str2 != null) {
                    i5++;
                    i4 += zzfs.zzh(str2);
                }
            }
            zzen = zzen + i4 + (i5 * 1);
        }
        if (this.zzbiy != null && this.zzbiy.length > 0) {
            int i7 = 0;
            for (int i8 = 0; i8 < this.zzbiy.length; i8++) {
                i7 += zzfs.zzs(this.zzbiy[i8]);
            }
            zzen = zzen + i7 + (this.zzbiy.length * 1);
        }
        if (this.zzbiz != null && this.zzbiz.length > 0) {
            int i9 = 0;
            for (int i10 = 0; i10 < this.zzbiz.length; i10++) {
                i9 += zzfs.zzo(this.zzbiz[i10]);
            }
            zzen = zzen + i9 + (this.zzbiz.length * 1);
        }
        if (this.zzbja == null || this.zzbja.length <= 0) {
            return zzen;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.zzbja.length; i12++) {
            i11 += zzfs.zzo(this.zzbja[i12]);
        }
        return zzen + i11 + (this.zzbja.length * 1);
    }

    /* Return type fixed from 'com.google.android.gms.internal.clearcut.zzfu' to match base method */
    @Override // com.google.android.gms.internal.clearcut.zzfu
    public final /* synthetic */ zzgy zzeo() throws CloneNotSupportedException {
        return (zzgy) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfz, com.google.android.gms.internal.clearcut.zzfu
    public final /* synthetic */ zzfz zzep() throws CloneNotSupportedException {
        return (zzgy) clone();
    }
}
