package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
final class zzec implements zzfw {
    private final /* synthetic */ zzeb zzbeg;

    zzec(zzeb zzeb) {
        this.zzbeg = zzeb;
    }

    @Override // com.google.android.gms.tagmanager.zzfw
    public final void zza(zzbw zzbw) {
        zzeb.zza(this.zzbeg, zzbw.zzov());
    }

    @Override // com.google.android.gms.tagmanager.zzfw
    public final void zzb(zzbw zzbw) {
        zzeb.zza(this.zzbeg, zzbw.zzov());
        long zzov = zzbw.zzov();
        StringBuilder sb = new StringBuilder(57);
        sb.append("Permanent failure dispatching hitId: ");
        sb.append(zzov);
        zzdi.v(sb.toString());
    }

    @Override // com.google.android.gms.tagmanager.zzfw
    public final void zzc(zzbw zzbw) {
        long zzow = zzbw.zzow();
        if (zzow == 0) {
            zzeb.zza(this.zzbeg, zzbw.zzov(), zzeb.zza(this.zzbeg).currentTimeMillis());
        } else if (zzow + 14400000 < zzeb.zza(this.zzbeg).currentTimeMillis()) {
            zzeb.zza(this.zzbeg, zzbw.zzov());
            long zzov = zzbw.zzov();
            StringBuilder sb = new StringBuilder(47);
            sb.append("Giving up on failed hitId: ");
            sb.append(zzov);
            zzdi.v(sb.toString());
        }
    }
}
