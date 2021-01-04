package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzrx;
import com.google.android.gms.internal.measurement.zzsb;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* access modifiers changed from: package-private */
public final class zzfe implements zzfg {
    private final /* synthetic */ Map zzbfw;
    private final /* synthetic */ Map zzbfx;
    private final /* synthetic */ Map zzbfy;
    private final /* synthetic */ Map zzbfz;

    zzfe(zzfb zzfb, Map map, Map map2, Map map3, Map map4) {
        this.zzbfw = map;
        this.zzbfx = map2;
        this.zzbfy = map3;
        this.zzbfz = map4;
    }

    @Override // com.google.android.gms.tagmanager.zzfg
    public final void zza(zzsb zzsb, Set<zzrx> set, Set<zzrx> set2, zzeq zzeq) {
        List list = (List) this.zzbfw.get(zzsb);
        this.zzbfx.get(zzsb);
        if (list != null) {
            set.addAll(list);
            zzeq.zzpc();
        }
        List list2 = (List) this.zzbfy.get(zzsb);
        this.zzbfz.get(zzsb);
        if (list2 != null) {
            set2.addAll(list2);
            zzeq.zzpd();
        }
    }
}
