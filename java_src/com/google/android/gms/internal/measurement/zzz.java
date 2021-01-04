package com.google.android.gms.internal.measurement;

import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@ShowFirstParty
public final class zzz extends zzi<zzz> {
    private Map<Integer, String> zzud = new HashMap(4);

    public final String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Integer, String> entry : this.zzud.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
            sb.append("dimension");
            sb.append(valueOf);
            hashMap.put(sb.toString(), entry.getValue());
        }
        return zza((Object) hashMap);
    }

    public final Map<Integer, String> zzau() {
        return Collections.unmodifiableMap(this.zzud);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.zzi] */
    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzz zzz) {
        zzz.zzud.putAll(this.zzud);
    }
}
