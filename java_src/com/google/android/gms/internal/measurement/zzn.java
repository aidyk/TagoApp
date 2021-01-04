package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zzn extends zzzl<zzn> {
    private static volatile zzn[] zzqc;
    public String name = "";
    private zzp zzqd = null;
    public zzj zzqe = null;

    public static zzn[] zzj() {
        if (zzqc == null) {
            synchronized (zzzp.zzcgg) {
                if (zzqc == null) {
                    zzqc = new zzn[0];
                }
            }
        }
        return zzqc;
    }

    public zzn() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzn)) {
            return false;
        }
        zzn zzn = (zzn) obj;
        if (this.name == null) {
            if (zzn.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzn.name)) {
            return false;
        }
        if (this.zzqd == null) {
            if (zzn.zzqd != null) {
                return false;
            }
        } else if (!this.zzqd.equals(zzn.zzqd)) {
            return false;
        }
        if (this.zzqe == null) {
            if (zzn.zzqe != null) {
                return false;
            }
        } else if (!this.zzqe.equals(zzn.zzqe)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzn.zzcfx == null || zzn.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzn.zzcfx);
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3 = 0;
        int hashCode = ((getClass().getName().hashCode() + 527) * 31) + (this.name == null ? 0 : this.name.hashCode());
        zzp zzp = this.zzqd;
        int i4 = hashCode * 31;
        if (zzp == null) {
            i = 0;
        } else {
            i = zzp.hashCode();
        }
        int i5 = i4 + i;
        zzj zzj = this.zzqe;
        int i6 = i5 * 31;
        if (zzj == null) {
            i2 = 0;
        } else {
            i2 = zzj.hashCode();
        }
        int i7 = (i6 + i2) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            i3 = this.zzcfx.hashCode();
        }
        return i7 + i3;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzj) throws IOException {
        if (this.name != null && !this.name.equals("")) {
            zzzj.zzb(1, this.name);
        }
        if (this.zzqd != null) {
            zzzj.zza(2, this.zzqd);
        }
        if (this.zzqe != null) {
            zzzj.zza(3, this.zzqe);
        }
        super.zza(zzzj);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final int zzf() {
        int zzf = super.zzf();
        if (this.name != null && !this.name.equals("")) {
            zzf += zzzj.zzc(1, this.name);
        }
        if (this.zzqd != null) {
            zzf += zzzj.zzb(2, this.zzqd);
        }
        return this.zzqe != null ? zzf + zzzj.zzb(3, this.zzqe) : zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzzi) throws IOException {
        while (true) {
            int zzuq = zzzi.zzuq();
            if (zzuq == 0) {
                return this;
            }
            if (zzuq == 10) {
                this.name = zzzi.readString();
            } else if (zzuq == 18) {
                if (this.zzqd == null) {
                    this.zzqd = new zzp();
                }
                zzzi.zza(this.zzqd);
            } else if (zzuq == 26) {
                if (this.zzqe == null) {
                    this.zzqe = new zzj();
                }
                zzzi.zza(this.zzqe);
            } else if (!super.zza(zzzi, zzuq)) {
                return this;
            }
        }
    }
}
