package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.Arrays;

public final class zzgz extends zzfu<zzgz> implements Cloneable {
    private byte[] zzbjb = zzgb.zzse;
    private String zzbjc = "";
    private byte[][] zzbjd = zzgb.zzsd;
    private boolean zzbje = false;

    public zzgz() {
        this.zzrj = null;
        this.zzrs = -1;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzgc */
    public final zzgz clone() {
        try {
            zzgz zzgz = (zzgz) super.clone();
            if (this.zzbjd != null && this.zzbjd.length > 0) {
                zzgz.zzbjd = (byte[][]) this.zzbjd.clone();
            }
            return zzgz;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgz)) {
            return false;
        }
        zzgz zzgz = (zzgz) obj;
        if (!Arrays.equals(this.zzbjb, zzgz.zzbjb)) {
            return false;
        }
        if (this.zzbjc == null) {
            if (zzgz.zzbjc != null) {
                return false;
            }
        } else if (!this.zzbjc.equals(zzgz.zzbjc)) {
            return false;
        }
        if (!zzfy.zza(this.zzbjd, zzgz.zzbjd)) {
            return false;
        }
        return (this.zzrj == null || this.zzrj.isEmpty()) ? zzgz.zzrj == null || zzgz.zzrj.isEmpty() : this.zzrj.equals(zzgz.zzrj);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((getClass().getName().hashCode() + 527) * 31) + Arrays.hashCode(this.zzbjb)) * 31) + (this.zzbjc == null ? 0 : this.zzbjc.hashCode())) * 31) + zzfy.zza(this.zzbjd)) * 31) + 1237) * 31;
        if (this.zzrj != null && !this.zzrj.isEmpty()) {
            i = this.zzrj.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfz, com.google.android.gms.internal.clearcut.zzfu
    public final void zza(zzfs zzfs) throws IOException {
        if (!Arrays.equals(this.zzbjb, zzgb.zzse)) {
            zzfs.zza(1, this.zzbjb);
        }
        if (this.zzbjd != null && this.zzbjd.length > 0) {
            for (int i = 0; i < this.zzbjd.length; i++) {
                byte[] bArr = this.zzbjd[i];
                if (bArr != null) {
                    zzfs.zza(2, bArr);
                }
            }
        }
        if (this.zzbjc != null && !this.zzbjc.equals("")) {
            zzfs.zza(4, this.zzbjc);
        }
        super.zza(zzfs);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.clearcut.zzfz, com.google.android.gms.internal.clearcut.zzfu
    public final int zzen() {
        int zzen = super.zzen();
        if (!Arrays.equals(this.zzbjb, zzgb.zzse)) {
            zzen += zzfs.zzb(1, this.zzbjb);
        }
        if (this.zzbjd != null && this.zzbjd.length > 0) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzbjd.length; i3++) {
                byte[] bArr = this.zzbjd[i3];
                if (bArr != null) {
                    i2++;
                    i += zzfs.zzh(bArr);
                }
            }
            zzen = zzen + i + (i2 * 1);
        }
        return (this.zzbjc == null || this.zzbjc.equals("")) ? zzen : zzen + zzfs.zzb(4, this.zzbjc);
    }

    /* Return type fixed from 'com.google.android.gms.internal.clearcut.zzfu' to match base method */
    @Override // com.google.android.gms.internal.clearcut.zzfu
    public final /* synthetic */ zzgz zzeo() throws CloneNotSupportedException {
        return (zzgz) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfz, com.google.android.gms.internal.clearcut.zzfu
    public final /* synthetic */ zzfz zzep() throws CloneNotSupportedException {
        return (zzgz) clone();
    }
}
