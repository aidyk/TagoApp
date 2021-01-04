package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zzo extends zzzl<zzo> {
    public zzn[] zzqf = zzn.zzj();
    public zzl zzqg = null;
    public String zzqh = "";

    public zzo() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzo = (zzo) obj;
        if (!zzzp.equals(this.zzqf, zzo.zzqf)) {
            return false;
        }
        if (this.zzqg == null) {
            if (zzo.zzqg != null) {
                return false;
            }
        } else if (!this.zzqg.equals(zzo.zzqg)) {
            return false;
        }
        if (this.zzqh == null) {
            if (zzo.zzqh != null) {
                return false;
            }
        } else if (!this.zzqh.equals(zzo.zzqh)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzo.zzcfx == null || zzo.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzo.zzcfx);
    }

    public final int hashCode() {
        int i;
        int hashCode = ((getClass().getName().hashCode() + 527) * 31) + zzzp.hashCode(this.zzqf);
        zzl zzl = this.zzqg;
        int i2 = hashCode * 31;
        int i3 = 0;
        if (zzl == null) {
            i = 0;
        } else {
            i = zzl.hashCode();
        }
        int hashCode2 = (((i2 + i) * 31) + (this.zzqh == null ? 0 : this.zzqh.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            i3 = this.zzcfx.hashCode();
        }
        return hashCode2 + i3;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzj) throws IOException {
        if (this.zzqf != null && this.zzqf.length > 0) {
            for (int i = 0; i < this.zzqf.length; i++) {
                zzn zzn = this.zzqf[i];
                if (zzn != null) {
                    zzzj.zza(1, zzn);
                }
            }
        }
        if (this.zzqg != null) {
            zzzj.zza(2, this.zzqg);
        }
        if (this.zzqh != null && !this.zzqh.equals("")) {
            zzzj.zzb(3, this.zzqh);
        }
        super.zza(zzzj);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final int zzf() {
        int zzf = super.zzf();
        if (this.zzqf != null && this.zzqf.length > 0) {
            for (int i = 0; i < this.zzqf.length; i++) {
                zzn zzn = this.zzqf[i];
                if (zzn != null) {
                    zzf += zzzj.zzb(1, zzn);
                }
            }
        }
        if (this.zzqg != null) {
            zzf += zzzj.zzb(2, this.zzqg);
        }
        return (this.zzqh == null || this.zzqh.equals("")) ? zzf : zzf + zzzj.zzc(3, this.zzqh);
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzzi) throws IOException {
        while (true) {
            int zzuq = zzzi.zzuq();
            if (zzuq == 0) {
                return this;
            }
            if (zzuq == 10) {
                int zzb = zzzu.zzb(zzzi, 10);
                int length = this.zzqf == null ? 0 : this.zzqf.length;
                zzn[] zznArr = new zzn[(zzb + length)];
                if (length != 0) {
                    System.arraycopy(this.zzqf, 0, zznArr, 0, length);
                }
                while (length < zznArr.length - 1) {
                    zznArr[length] = new zzn();
                    zzzi.zza(zznArr[length]);
                    zzzi.zzuq();
                    length++;
                }
                zznArr[length] = new zzn();
                zzzi.zza(zznArr[length]);
                this.zzqf = zznArr;
            } else if (zzuq == 18) {
                if (this.zzqg == null) {
                    this.zzqg = new zzl();
                }
                zzzi.zza(this.zzqg);
            } else if (zzuq == 26) {
                this.zzqh = zzzi.readString();
            } else if (!super.zza(zzzi, zzuq)) {
                return this;
            }
        }
    }
}
