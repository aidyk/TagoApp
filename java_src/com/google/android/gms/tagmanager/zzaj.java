package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
@VisibleForTesting
public final class zzaj extends zzbq {
    private static final String ID = zza.CONTAINER_VERSION.toString();
    private final String version;

    public zzaj(String str) {
        super(ID, new String[0]);
        this.version = str;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return this.version == null ? zzgj.zzqq() : zzgj.zzj(this.version);
    }
}
