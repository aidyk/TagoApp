package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzrx;
import com.google.android.gms.internal.measurement.zzsb;
import java.util.Set;

/* access modifiers changed from: package-private */
public final class zzff implements zzfg {
    zzff(zzfb zzfb) {
    }

    @Override // com.google.android.gms.tagmanager.zzfg
    public final void zza(zzsb zzsb, Set<zzrx> set, Set<zzrx> set2, zzeq zzeq) {
        set.addAll(zzsb.zzsm());
        set2.addAll(zzsb.zzsn());
        zzeq.zzpe();
        zzeq.zzpf();
    }
}
