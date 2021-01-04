package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zzk extends zzzl<zzk> {
    private static volatile zzk[] zzor;
    public int key = 0;
    public int value = 0;

    public static zzk[] zzh() {
        if (zzor == null) {
            synchronized (zzzp.zzcgg) {
                if (zzor == null) {
                    zzor = new zzk[0];
                }
            }
        }
        return zzor;
    }

    public zzk() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzk)) {
            return false;
        }
        zzk zzk = (zzk) obj;
        if (this.key != zzk.key || this.value != zzk.value) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzk.zzcfx == null || zzk.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzk.zzcfx);
    }

    public final int hashCode() {
        return ((((((getClass().getName().hashCode() + 527) * 31) + this.key) * 31) + this.value) * 31) + ((this.zzcfx == null || this.zzcfx.isEmpty()) ? 0 : this.zzcfx.hashCode());
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzj) throws IOException {
        zzzj.zzd(1, this.key);
        zzzj.zzd(2, this.value);
        super.zza(zzzj);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final int zzf() {
        return super.zzf() + zzzj.zzh(1, this.key) + zzzj.zzh(2, this.value);
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzzi) throws IOException {
        while (true) {
            int zzuq = zzzi.zzuq();
            if (zzuq == 0) {
                return this;
            }
            if (zzuq == 8) {
                this.key = zzzi.zzvi();
            } else if (zzuq == 16) {
                this.value = zzzi.zzvi();
            } else if (!super.zza(zzzi, zzuq)) {
                return this;
            }
        }
    }
}
