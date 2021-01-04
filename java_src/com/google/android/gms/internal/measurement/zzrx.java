package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Map;

public final class zzrx {
    private final zzp zzbgb;
    private final Map<String, zzp> zzbpi;

    private zzrx(Map<String, zzp> map, zzp zzp) {
        this.zzbpi = map;
        this.zzbgb = zzp;
    }

    public static zzry zzsz() {
        return new zzry();
    }

    public final void zza(String str, zzp zzp) {
        this.zzbpi.put(str, zzp);
    }

    public final Map<String, zzp> zzsi() {
        return Collections.unmodifiableMap(this.zzbpi);
    }

    public final zzp zzpw() {
        return this.zzbgb;
    }

    public final String toString() {
        String valueOf = String.valueOf(Collections.unmodifiableMap(this.zzbpi));
        String valueOf2 = String.valueOf(this.zzbgb);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32 + String.valueOf(valueOf2).length());
        sb.append("Properties: ");
        sb.append(valueOf);
        sb.append(" pushAfterEvaluate: ");
        sb.append(valueOf2);
        return sb.toString();
    }
}
