package com.google.android.gms.tagmanager;

import android.annotation.TargetApi;
import android.util.LruCache;

/* access modifiers changed from: package-private */
@TargetApi(12)
public final class zzdb<K, V> implements zzp<K, V> {
    private LruCache<K, V> zzbdu;

    zzdb(int i, zzs<K, V> zzs) {
        this.zzbdu = new zzdc(this, 1048576, zzs);
    }

    @Override // com.google.android.gms.tagmanager.zzp
    public final void zza(K k, V v) {
        this.zzbdu.put(k, v);
    }

    @Override // com.google.android.gms.tagmanager.zzp
    public final V get(K k) {
        return this.zzbdu.get(k);
    }
}
