package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class zzwq extends zzwo {
    private static final Class<?> zzcbg = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzwq() {
        super();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzwo
    public final <L> List<L> zza(Object obj, long j) {
        return zza(obj, j, 10);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzwo
    public final void zzb(Object obj, long j) {
        Object obj2;
        List list = (List) zzys.zzp(obj, j);
        if (list instanceof zzwn) {
            obj2 = ((zzwn) list).zzxj();
        } else if (!zzcbg.isAssignableFrom(list.getClass())) {
            if (!(list instanceof zzxp) || !(list instanceof zzwd)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                zzwd zzwd = (zzwd) list;
                if (zzwd.zzug()) {
                    zzwd.zzsw();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        zzys.zza(obj, j, obj2);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v10, resolved type: java.util.ArrayList */
    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> zza(Object obj, long j, int i) {
        zzwm zzwm;
        List<L> list;
        List<L> zzc = zzc(obj, j);
        if (zzc.isEmpty()) {
            if (zzc instanceof zzwn) {
                list = new zzwm(i);
            } else if (!(zzc instanceof zzxp) || !(zzc instanceof zzwd)) {
                list = new ArrayList<>(i);
            } else {
                list = ((zzwd) zzc).zzak(i);
            }
            zzys.zza(obj, j, list);
            return list;
        }
        if (zzcbg.isAssignableFrom(zzc.getClass())) {
            ArrayList arrayList = new ArrayList(zzc.size() + i);
            arrayList.addAll(zzc);
            zzys.zza(obj, j, arrayList);
            zzwm = arrayList;
        } else if (zzc instanceof zzyp) {
            zzwm zzwm2 = new zzwm(zzc.size() + i);
            zzwm2.addAll((zzyp) zzc);
            zzys.zza(obj, j, zzwm2);
            zzwm = zzwm2;
        } else if (!(zzc instanceof zzxp) || !(zzc instanceof zzwd)) {
            return zzc;
        } else {
            zzwd zzwd = (zzwd) zzc;
            if (zzwd.zzug()) {
                return zzc;
            }
            zzwd zzak = zzwd.zzak(zzc.size() + i);
            zzys.zza(obj, j, zzak);
            return zzak;
        }
        return zzwm;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzwo
    public final <E> void zza(Object obj, Object obj2, long j) {
        List zzc = zzc(obj2, j);
        List zza = zza(obj, j, zzc.size());
        int size = zza.size();
        int size2 = zzc.size();
        if (size > 0 && size2 > 0) {
            zza.addAll(zzc);
        }
        if (size > 0) {
            zzc = zza;
        }
        zzys.zza(obj, j, zzc);
    }

    private static <E> List<E> zzc(Object obj, long j) {
        return (List) zzys.zzp(obj, j);
    }
}
