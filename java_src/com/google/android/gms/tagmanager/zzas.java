package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
@VisibleForTesting
public final class zzas extends zzbq {
    private static final String ID = zza.CUSTOM_VAR.toString();
    private static final String NAME = zzb.NAME.toString();
    private static final String zzbbt = zzb.DEFAULT_VALUE.toString();
    private final DataLayer zzbab;

    public zzas(DataLayer dataLayer) {
        super(ID, NAME);
        this.zzbab = dataLayer;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        Object obj = this.zzbab.get(zzgj.zzc(map.get(NAME)));
        if (obj != null) {
            return zzgj.zzj(obj);
        }
        zzp zzp = map.get(zzbbt);
        if (zzp != null) {
            return zzp;
        }
        return zzgj.zzqq();
    }
}
