package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzaz extends zzgh {
    private static final String ID = zza.DATA_LAYER_WRITE.toString();
    private static final String VALUE = zzb.VALUE.toString();
    private static final String zzbce = zzb.CLEAR_PERSISTENT_DATA_LAYER_PREFIX.toString();
    private final DataLayer zzbab;

    public zzaz(DataLayer dataLayer) {
        super(ID, VALUE);
        this.zzbab = dataLayer;
    }

    @Override // com.google.android.gms.tagmanager.zzgh
    public final void zzg(Map<String, zzp> map) {
        String zzc;
        zzp zzp = map.get(VALUE);
        if (!(zzp == null || zzp == zzgj.zzqk())) {
            Object zzh = zzgj.zzh(zzp);
            if (zzh instanceof List) {
                for (Object obj : (List) zzh) {
                    if (obj instanceof Map) {
                        this.zzbab.push((Map) obj);
                    }
                }
            }
        }
        zzp zzp2 = map.get(zzbce);
        if (!(zzp2 == null || zzp2 == zzgj.zzqk() || (zzc = zzgj.zzc(zzp2)) == zzgj.zzqp())) {
            this.zzbab.zzdj(zzc);
        }
    }
}
