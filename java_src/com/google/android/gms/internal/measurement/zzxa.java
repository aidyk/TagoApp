package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

final class zzxa implements zzwz {
    zzxa() {
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final Map<?, ?> zzac(Object obj) {
        return (zzwy) obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final zzwx<?, ?> zzah(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final Map<?, ?> zzad(Object obj) {
        return (zzwy) obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final boolean zzae(Object obj) {
        return !((zzwy) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final Object zzaf(Object obj) {
        ((zzwy) obj).zzsw();
        return obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final Object zzag(Object obj) {
        return zzwy.zzxn().zzxo();
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final Object zzc(Object obj, Object obj2) {
        zzwy zzwy = (zzwy) obj;
        zzwy zzwy2 = (zzwy) obj2;
        if (!zzwy2.isEmpty()) {
            if (!zzwy.isMutable()) {
                zzwy = zzwy.zzxo();
            }
            zzwy.zza(zzwy2);
        }
        return zzwy;
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final int zzb(int i, Object obj, Object obj2) {
        zzwy zzwy = (zzwy) obj;
        if (zzwy.isEmpty()) {
            return 0;
        }
        Iterator it2 = zzwy.entrySet().iterator();
        if (!it2.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it2.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
