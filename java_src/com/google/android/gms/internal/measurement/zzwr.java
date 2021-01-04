package com.google.android.gms.internal.measurement;

import java.util.List;

final class zzwr extends zzwo {
    private zzwr() {
        super();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzwo
    public final <L> List<L> zza(Object obj, long j) {
        zzwd zzd = zzd(obj, j);
        if (zzd.zzug()) {
            return zzd;
        }
        int size = zzd.size();
        zzwd zzak = zzd.zzak(size == 0 ? 10 : size << 1);
        zzys.zza(obj, j, zzak);
        return zzak;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzwo
    public final void zzb(Object obj, long j) {
        zzd(obj, j).zzsw();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.measurement.zzwd] */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzwo
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzwd<E> zzd = zzd(obj, j);
        zzwd<E> zzd2 = zzd(obj2, j);
        int size = zzd.size();
        int size2 = zzd2.size();
        zzwd<E> zzwd = zzd;
        zzwd = zzd;
        if (size > 0 && size2 > 0) {
            boolean zzug = zzd.zzug();
            zzwd<E> zzwd2 = zzd;
            if (!zzug) {
                zzwd2 = zzd.zzak(size2 + size);
            }
            zzwd2.addAll(zzd2);
            zzwd = zzwd2;
        }
        if (size > 0) {
            zzd2 = zzwd;
        }
        zzys.zza(obj, j, zzd2);
    }

    private static <E> zzwd<E> zzd(Object obj, long j) {
        return (zzwd) zzys.zzp(obj, j);
    }
}
