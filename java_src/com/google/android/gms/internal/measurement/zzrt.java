package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zzrt extends zzzl<zzrt> {
    public long zzbqn = 0;
    public zzo zzbqo = null;
    public zzl zzqg = null;

    public zzrt() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzrt)) {
            return false;
        }
        zzrt zzrt = (zzrt) obj;
        if (this.zzbqn != zzrt.zzbqn) {
            return false;
        }
        if (this.zzqg == null) {
            if (zzrt.zzqg != null) {
                return false;
            }
        } else if (!this.zzqg.equals(zzrt.zzqg)) {
            return false;
        }
        if (this.zzbqo == null) {
            if (zzrt.zzbqo != null) {
                return false;
            }
        } else if (!this.zzbqo.equals(zzrt.zzbqo)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzrt.zzcfx == null || zzrt.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzrt.zzcfx);
    }

    public final int hashCode() {
        int i;
        int i2;
        int hashCode = ((getClass().getName().hashCode() + 527) * 31) + ((int) (this.zzbqn ^ (this.zzbqn >>> 32)));
        zzl zzl = this.zzqg;
        int i3 = hashCode * 31;
        int i4 = 0;
        if (zzl == null) {
            i = 0;
        } else {
            i = zzl.hashCode();
        }
        int i5 = i3 + i;
        zzo zzo = this.zzbqo;
        int i6 = i5 * 31;
        if (zzo == null) {
            i2 = 0;
        } else {
            i2 = zzo.hashCode();
        }
        int i7 = (i6 + i2) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            i4 = this.zzcfx.hashCode();
        }
        return i7 + i4;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzj) throws IOException {
        zzzj.zzi(1, this.zzbqn);
        if (this.zzqg != null) {
            zzzj.zza(2, this.zzqg);
        }
        if (this.zzbqo != null) {
            zzzj.zza(3, this.zzbqo);
        }
        super.zza(zzzj);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final int zzf() {
        int zzf = super.zzf() + zzzj.zzd(1, this.zzbqn);
        if (this.zzqg != null) {
            zzf += zzzj.zzb(2, this.zzqg);
        }
        return this.zzbqo != null ? zzf + zzzj.zzb(3, this.zzbqo) : zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzzi) throws IOException {
        while (true) {
            int zzuq = zzzi.zzuq();
            if (zzuq == 0) {
                return this;
            }
            if (zzuq == 8) {
                this.zzbqn = zzzi.zzvj();
            } else if (zzuq == 18) {
                if (this.zzqg == null) {
                    this.zzqg = new zzl();
                }
                zzzi.zza(this.zzqg);
            } else if (zzuq == 26) {
                if (this.zzbqo == null) {
                    this.zzbqo = new zzo();
                }
                zzzi.zza(this.zzbqo);
            } else if (!super.zza(zzzi, zzuq)) {
                return this;
            }
        }
    }
}
