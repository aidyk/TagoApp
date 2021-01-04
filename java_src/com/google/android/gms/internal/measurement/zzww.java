package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zzww<K, V> {
    static <K, V> void zza(zzve zzve, zzwx<K, V> zzwx, K k, V v) throws IOException {
        zzvo.zza(zzve, zzwx.zzcbm, 1, k);
        zzvo.zza(zzve, zzwx.zzcbo, 2, v);
    }

    static <K, V> int zza(zzwx<K, V> zzwx, K k, V v) {
        return zzvo.zza(zzwx.zzcbm, 1, k) + zzvo.zza(zzwx.zzcbo, 2, v);
    }
}
