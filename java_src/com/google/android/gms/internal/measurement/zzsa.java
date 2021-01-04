package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tagmanager.zzgj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@VisibleForTesting
public final class zzsa {
    private String version;
    private final List<zzsb> zzbpg;
    private final Map<String, List<zzrx>> zzbph;
    private int zzph;

    private zzsa() {
        this.zzbpg = new ArrayList();
        this.zzbph = new HashMap();
        this.version = "";
        this.zzph = 0;
    }

    public final zzsa zzb(zzsb zzsb) {
        this.zzbpg.add(zzsb);
        return this;
    }

    public final zzsa zzc(zzrx zzrx) {
        String zzc = zzgj.zzc(zzrx.zzsi().get(zzb.INSTANCE_NAME.toString()));
        List<zzrx> list = this.zzbph.get(zzc);
        if (list == null) {
            list = new ArrayList<>();
            this.zzbph.put(zzc, list);
        }
        list.add(zzrx);
        return this;
    }

    public final zzsa zzfk(String str) {
        this.version = str;
        return this;
    }

    public final zzsa zzag(int i) {
        this.zzph = i;
        return this;
    }

    public final zzrz zztd() {
        return new zzrz(this.zzbpg, this.zzbph, this.version, this.zzph);
    }
}
