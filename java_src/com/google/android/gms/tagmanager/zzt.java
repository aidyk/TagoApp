package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzt extends zzbq {
    private static final String ID = zza.CONSTANT.toString();
    private static final String VALUE = zzb.VALUE.toString();

    public static String zznm() {
        return ID;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    public zzt() {
        super(ID, VALUE);
    }

    public static String zznn() {
        return VALUE;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return map.get(VALUE);
    }
}
