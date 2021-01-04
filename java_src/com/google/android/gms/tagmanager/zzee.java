package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzee extends zzbq {
    private static final String ID = zza.PLATFORM.toString();
    private static final zzp zzbej = zzgj.zzj("Android");

    public zzee() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return zzbej;
    }
}
