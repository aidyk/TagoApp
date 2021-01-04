package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzzl;
import java.io.IOException;

public abstract class zzzl<M extends zzzl<M>> extends zzzr {
    protected zzzn zzcfx;

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzzr
    public int zzf() {
        if (this.zzcfx == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.zzcfx.size(); i2++) {
            i += this.zzcfx.zzce(i2).zzf();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public void zza(zzzj zzzj) throws IOException {
        if (this.zzcfx != null) {
            for (int i = 0; i < this.zzcfx.size(); i++) {
                this.zzcfx.zzce(i).zza(zzzj);
            }
        }
    }

    public final <T> T zza(zzzm<M, T> zzzm) {
        zzzo zzcd;
        if (this.zzcfx == null || (zzcd = this.zzcfx.zzcd(zzzm.tag >>> 3)) == null) {
            return null;
        }
        return (T) zzcd.zzb(zzzm);
    }

    /* access modifiers changed from: protected */
    public final boolean zza(zzzi zzzi, int i) throws IOException {
        int position = zzzi.getPosition();
        if (!zzzi.zzap(i)) {
            return false;
        }
        int i2 = i >>> 3;
        zzzt zzzt = new zzzt(i, zzzi.zzs(position, zzzi.getPosition() - position));
        zzzo zzzo = null;
        if (this.zzcfx == null) {
            this.zzcfx = new zzzn();
        } else {
            zzzo = this.zzcfx.zzcd(i2);
        }
        if (zzzo == null) {
            zzzo = new zzzo();
            this.zzcfx.zza(i2, zzzo);
        }
        zzzo.zza(zzzt);
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zzzi() throws CloneNotSupportedException {
        return (zzzl) clone();
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzzl zzzl = (zzzl) super.clone();
        zzzp.zza(this, zzzl);
        return zzzl;
    }
}
