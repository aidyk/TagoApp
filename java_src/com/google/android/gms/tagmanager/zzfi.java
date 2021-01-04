package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzrx;
import com.google.android.gms.internal.measurement.zzsb;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* access modifiers changed from: package-private */
public final class zzfi {
    private final Set<zzsb> zzbfs = new HashSet();
    private final Map<zzsb, List<zzrx>> zzbgc = new HashMap();
    private final Map<zzsb, List<zzrx>> zzbgd = new HashMap();
    private final Map<zzsb, List<String>> zzbge = new HashMap();
    private final Map<zzsb, List<String>> zzbgf = new HashMap();
    private zzrx zzbgg;

    public final Set<zzsb> zzpx() {
        return this.zzbfs;
    }

    public final void zza(zzsb zzsb) {
        this.zzbfs.add(zzsb);
    }

    public final Map<zzsb, List<zzrx>> zzpy() {
        return this.zzbgc;
    }

    public final Map<zzsb, List<String>> zzpz() {
        return this.zzbge;
    }

    public final Map<zzsb, List<String>> zzqa() {
        return this.zzbgf;
    }

    public final void zza(zzsb zzsb, zzrx zzrx) {
        List<zzrx> list = this.zzbgc.get(zzsb);
        if (list == null) {
            list = new ArrayList<>();
            this.zzbgc.put(zzsb, list);
        }
        list.add(zzrx);
    }

    public final void zza(zzsb zzsb, String str) {
        List<String> list = this.zzbge.get(zzsb);
        if (list == null) {
            list = new ArrayList<>();
            this.zzbge.put(zzsb, list);
        }
        list.add(str);
    }

    public final Map<zzsb, List<zzrx>> zzqb() {
        return this.zzbgd;
    }

    public final void zzb(zzsb zzsb, zzrx zzrx) {
        List<zzrx> list = this.zzbgd.get(zzsb);
        if (list == null) {
            list = new ArrayList<>();
            this.zzbgd.put(zzsb, list);
        }
        list.add(zzrx);
    }

    public final void zzb(zzsb zzsb, String str) {
        List<String> list = this.zzbgf.get(zzsb);
        if (list == null) {
            list = new ArrayList<>();
            this.zzbgf.put(zzsb, list);
        }
        list.add(str);
    }

    public final zzrx zzqc() {
        return this.zzbgg;
    }

    public final void zzb(zzrx zzrx) {
        this.zzbgg = zzrx;
    }
}
