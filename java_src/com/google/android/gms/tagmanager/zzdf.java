package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzdf extends zzdy {
    private static final String ID = zza.LESS_THAN.toString();

    public zzdf() {
        super(ID);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.tagmanager.zzdy
    public final boolean zza(zzgi zzgi, zzgi zzgi2, Map<String, zzp> map) {
        return zzgi.compareTo(zzgi2) < 0;
    }
}
