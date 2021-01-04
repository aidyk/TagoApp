package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzgl<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzyg;

    public zzgl(Iterator<Map.Entry<K, Object>> it2) {
        this.zzyg = it2;
    }

    public final boolean hasNext() {
        return this.zzyg.hasNext();
    }

    public final void remove() {
        this.zzyg.remove();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzyg.next();
        return next.getValue() instanceof zzgi ? new zzgk(next) : next;
    }
}
