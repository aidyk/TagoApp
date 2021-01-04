package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzfk extends zzbq {
    private static final String ID = zza.SDK_VERSION.toString();

    public zzfk() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return zzgj.zzj(Integer.valueOf(Build.VERSION.SDK_INT));
    }
}
