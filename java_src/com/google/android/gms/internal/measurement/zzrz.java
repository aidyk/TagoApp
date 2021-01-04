package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@VisibleForTesting
public final class zzrz {
    private final String version;
    private final List<zzsb> zzbpg;
    private final Map<String, List<zzrx>> zzbph;
    private final int zzph;

    private zzrz(List<zzsb> list, Map<String, List<zzrx>> map, String str, int i) {
        this.zzbpg = Collections.unmodifiableList(list);
        this.zzbph = Collections.unmodifiableMap(map);
        this.version = str;
        this.zzph = i;
    }

    public static zzsa zztb() {
        return new zzsa();
    }

    public final List<zzsb> zzsg() {
        return this.zzbpg;
    }

    public final String getVersion() {
        return this.version;
    }

    public final Map<String, List<zzrx>> zztc() {
        return this.zzbph;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzbpg);
        String valueOf2 = String.valueOf(this.zzbph);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 17 + String.valueOf(valueOf2).length());
        sb.append("Rules: ");
        sb.append(valueOf);
        sb.append("  Macros: ");
        sb.append(valueOf2);
        return sb.toString();
    }
}
