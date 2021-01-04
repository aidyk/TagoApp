package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzwk<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzcax;

    public zzwk(Iterator<Map.Entry<K, Object>> it2) {
        this.zzcax = it2;
    }

    public final boolean hasNext() {
        return this.zzcax.hasNext();
    }

    public final void remove() {
        this.zzcax.remove();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzcax.next();
        return next.getValue() instanceof zzwh ? new zzwj(next) : next;
    }
}
