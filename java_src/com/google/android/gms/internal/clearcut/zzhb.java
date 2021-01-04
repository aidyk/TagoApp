package com.google.android.gms.internal.clearcut;

import java.io.IOException;

public final class zzhb extends zzfu<zzhb> implements Cloneable {
    private static volatile zzhb[] zzbkd;
    private String value = "";
    private String zzbke = "";

    public zzhb() {
        this.zzrj = null;
        this.zzrs = -1;
    }

    public static zzhb[] zzge() {
        if (zzbkd == null) {
            synchronized (zzfy.zzrr) {
                if (zzbkd == null) {
                    zzbkd = new zzhb[0];
                }
            }
        }
        return zzbkd;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzgf */
    public final zzhb clone() {
        try {
            return (zzhb) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzhb)) {
            return false;
        }
        zzhb zzhb = (zzhb) obj;
        if (this.zzbke == null) {
            if (zzhb.zzbke != null) {
                return false;
            }
        } else if (!this.zzbke.equals(zzhb.zzbke)) {
            return false;
        }
        if (this.value == null) {
            if (zzhb.value != null) {
                return false;
            }
        } else if (!this.value.equals(zzhb.value)) {
            return false;
        }
        return (this.zzrj == null || this.zzrj.isEmpty()) ? zzhb.zzrj == null || zzhb.zzrj.isEmpty() : this.zzrj.equals(zzhb.zzrj);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + (this.zzbke == null ? 0 : this.zzbke.hashCode())) * 31) + (this.value == null ? 0 : this.value.hashCode())) * 31;
        if (this.zzrj != null && !this.zzrj.isEmpty()) {
            i = this.zzrj.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfz, com.google.android.gms.internal.clearcut.zzfu
    public final void zza(zzfs zzfs) throws IOException {
        if (this.zzbke != null && !this.zzbke.equals("")) {
            zzfs.zza(1, this.zzbke);
        }
        if (this.value != null && !this.value.equals("")) {
            zzfs.zza(2, this.value);
        }
        super.zza(zzfs);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.clearcut.zzfz, com.google.android.gms.internal.clearcut.zzfu
    public final int zzen() {
        int zzen = super.zzen();
        if (this.zzbke != null && !this.zzbke.equals("")) {
            zzen += zzfs.zzb(1, this.zzbke);
        }
        return (this.value == null || this.value.equals("")) ? zzen : zzen + zzfs.zzb(2, this.value);
    }

    /* Return type fixed from 'com.google.android.gms.internal.clearcut.zzfu' to match base method */
    @Override // com.google.android.gms.internal.clearcut.zzfu
    public final /* synthetic */ zzhb zzeo() throws CloneNotSupportedException {
        return (zzhb) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfz, com.google.android.gms.internal.clearcut.zzfu
    public final /* synthetic */ zzfz zzep() throws CloneNotSupportedException {
        return (zzhb) clone();
    }
}
