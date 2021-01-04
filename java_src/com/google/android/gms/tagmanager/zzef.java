package com.google.android.gms.tagmanager;

import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@ShowFirstParty
@VisibleForTesting
public abstract class zzef extends zzbq {
    private static final String zzbco = zzb.ARG0.toString();
    private static final String zzbek = zzb.ARG1.toString();

    public zzef(String str) {
        super(str, zzbco, zzbek);
    }

    /* access modifiers changed from: protected */
    public abstract boolean zza(zzp zzp, zzp zzp2, Map<String, zzp> map);

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        Iterator<zzp> it2 = map.values().iterator();
        do {
            boolean z = false;
            if (!it2.hasNext()) {
                zzp zzp = map.get(zzbco);
                zzp zzp2 = map.get(zzbek);
                if (!(zzp == null || zzp2 == null)) {
                    z = zza(zzp, zzp2, map);
                }
                return zzgj.zzj(Boolean.valueOf(z));
            }
        } while (it2.next() != zzgj.zzqq());
        return zzgj.zzj(false);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ Set zzou() {
        return super.zzou();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ String zzot() {
        return super.zzot();
    }
}
