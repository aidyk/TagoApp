package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
@VisibleForTesting
public final class zzbp extends zzbq {
    private static final String ID = zza.EVENT.toString();
    private final zzfb zzbac;

    public zzbp(zzfb zzfb) {
        super(ID, new String[0]);
        this.zzbac = zzfb;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String zzpt = this.zzbac.zzpt();
        if (zzpt == null) {
            return zzgj.zzqq();
        }
        return zzgj.zzj(zzpt);
    }
}
