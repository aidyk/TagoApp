package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zze extends zzbq {
    private static final String ID = zza.ADVERTISER_ID.toString();
    private final zza zzazr;

    public zze(Context context) {
        this(zza.zzo(context));
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return false;
    }

    @VisibleForTesting
    private zze(zza zza) {
        super(ID, new String[0]);
        this.zzazr = zza;
        this.zzazr.zzne();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String zzne = this.zzazr.zzne();
        return zzne == null ? zzgj.zzqq() : zzgj.zzj(zzne);
    }
}
