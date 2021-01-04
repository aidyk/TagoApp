package com.google.android.gms.internal.measurement;

import java.util.Comparator;

final class zzup implements Comparator<zzun> {
    zzup() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzun zzun, zzun zzun2) {
        zzun zzun3 = zzun;
        zzun zzun4 = zzun2;
        zzuu zzuu = (zzuu) zzun3.iterator();
        zzuu zzuu2 = (zzuu) zzun4.iterator();
        while (zzuu.hasNext() && zzuu2.hasNext()) {
            int compare = Integer.compare(zzun.zza(zzuu.nextByte()), zzun.zza(zzuu2.nextByte()));
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzun3.size(), zzun4.size());
    }
}
