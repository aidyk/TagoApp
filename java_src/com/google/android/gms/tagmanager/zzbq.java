package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzp;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* access modifiers changed from: package-private */
public abstract class zzbq {
    private final Set<String> zzbcs;
    private final String zzqn;

    public abstract zzp zze(Map<String, zzp> map);

    public abstract boolean zznk();

    public String zzot() {
        return this.zzqn;
    }

    public zzbq(String str, String... strArr) {
        this.zzqn = str;
        this.zzbcs = new HashSet(strArr.length);
        for (String str2 : strArr) {
            this.zzbcs.add(str2);
        }
    }

    public Set<String> zzou() {
        return this.zzbcs;
    }

    /* access modifiers changed from: package-private */
    public final boolean zza(Set<String> set) {
        return set.containsAll(this.zzbcs);
    }
}
