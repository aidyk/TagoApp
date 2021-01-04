package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;

@VisibleForTesting
public final class zzry {
    private zzp zzbgb;
    private final Map<String, zzp> zzbpi;

    private zzry() {
        this.zzbpi = new HashMap();
    }

    public final zzry zzb(String str, zzp zzp) {
        this.zzbpi.put(str, zzp);
        return this;
    }

    public final zzry zzm(zzp zzp) {
        this.zzbgb = zzp;
        return this;
    }

    public final zzrx zzta() {
        return new zzrx(this.zzbpi, this.zzbgb);
    }
}
