package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzf extends zzbq {
    private static final String ID = zza.ADVERTISING_TRACKING_ENABLED.toString();
    private final zza zzazr;

    public zzf(Context context) {
        this(zza.zzo(context));
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return false;
    }

    @VisibleForTesting
    private zzf(zza zza) {
        super(ID, new String[0]);
        this.zzazr = zza;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return zzgj.zzj(Boolean.valueOf(!this.zzazr.isLimitAdTrackingEnabled()));
    }
}
