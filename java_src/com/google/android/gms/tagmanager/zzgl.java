package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzgl extends zzbq {
    private static final String ID = zza.UPPERCASE_STRING.toString();
    private static final String zzbco = zzb.ARG0.toString();

    public zzgl() {
        super(ID, zzbco);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return zzgj.zzj(zzgj.zzc(map.get(zzbco)).toUpperCase());
    }
}
