package com.google.android.gms.tagmanager;

import android.util.LruCache;

final class zzdc extends LruCache<K, V> {
    private final /* synthetic */ zzs zzbdv;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzdc(zzdb zzdb, int i, zzs zzs) {
        super(i);
        this.zzbdv = zzs;
    }

    /* access modifiers changed from: protected */
    @Override // android.util.LruCache
    public final int sizeOf(K k, V v) {
        return this.zzbdv.sizeOf(k, v);
    }
}
