package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzya extends zzyg {
    private final /* synthetic */ zzxx zzcdc;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    private zzya(zzxx zzxx) {
        super(zzxx, null);
        this.zzcdc = zzxx;
    }

    @Override // java.util.AbstractCollection, com.google.android.gms.internal.measurement.zzyg, java.util.Collection, java.util.Set, java.lang.Iterable
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzxz(this.zzcdc, null);
    }

    /* synthetic */ zzya(zzxx zzxx, zzxy zzxy) {
        this(zzxx);
    }
}
