package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zzi extends zzzl<zzi> {
    private static volatile zzi[] zzoi;
    public String zzoj = "";
    public long zzok = 0;
    public long zzol = 2147483647L;
    public boolean zzom = false;
    public long zzon = 0;

    public static zzi[] zzg() {
        if (zzoi == null) {
            synchronized (zzzp.zzcgg) {
                if (zzoi == null) {
                    zzoi = new zzi[0];
                }
            }
        }
        return zzoi;
    }

    public zzi() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzi)) {
            return false;
        }
        zzi zzi = (zzi) obj;
        if (this.zzoj == null) {
            if (zzi.zzoj != null) {
                return false;
            }
        } else if (!this.zzoj.equals(zzi.zzoj)) {
            return false;
        }
        if (this.zzok != zzi.zzok || this.zzol != zzi.zzol || this.zzom != zzi.zzom || this.zzon != zzi.zzon) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzi.zzcfx == null || zzi.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzi.zzcfx);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzoj == null ? 0 : this.zzoj.hashCode())) * 31) + ((int) (this.zzok ^ (this.zzok >>> 32)))) * 31) + ((int) (this.zzol ^ (this.zzol >>> 32)))) * 31) + (this.zzom ? 1231 : 1237)) * 31) + ((int) (this.zzon ^ (this.zzon >>> 32)))) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            i = this.zzcfx.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzj) throws IOException {
        if (this.zzoj != null && !this.zzoj.equals("")) {
            zzzj.zzb(1, this.zzoj);
        }
        if (this.zzok != 0) {
            zzzj.zzi(2, this.zzok);
        }
        if (this.zzol != 2147483647L) {
            zzzj.zzi(3, this.zzol);
        }
        if (this.zzom) {
            zzzj.zzb(4, this.zzom);
        }
        if (this.zzon != 0) {
            zzzj.zzi(5, this.zzon);
        }
        super.zza(zzzj);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final int zzf() {
        int zzf = super.zzf();
        if (this.zzoj != null && !this.zzoj.equals("")) {
            zzf += zzzj.zzc(1, this.zzoj);
        }
        if (this.zzok != 0) {
            zzf += zzzj.zzd(2, this.zzok);
        }
        if (this.zzol != 2147483647L) {
            zzf += zzzj.zzd(3, this.zzol);
        }
        if (this.zzom) {
            zzf += zzzj.zzbc(4) + 1;
        }
        return this.zzon != 0 ? zzf + zzzj.zzd(5, this.zzon) : zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzzi) throws IOException {
        while (true) {
            int zzuq = zzzi.zzuq();
            if (zzuq == 0) {
                return this;
            }
            if (zzuq == 10) {
                this.zzoj = zzzi.readString();
            } else if (zzuq == 16) {
                this.zzok = zzzi.zzvj();
            } else if (zzuq == 24) {
                this.zzol = zzzi.zzvj();
            } else if (zzuq == 32) {
                this.zzom = zzzi.zzuw();
            } else if (zzuq == 40) {
                this.zzon = zzzi.zzvj();
            } else if (!super.zza(zzzi, zzuq)) {
                return this;
            }
        }
    }
}
