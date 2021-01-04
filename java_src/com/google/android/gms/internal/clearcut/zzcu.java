package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzcu<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzlm;

    public zzcu(Iterator<Map.Entry<K, Object>> it2) {
        this.zzlm = it2;
    }

    public final boolean hasNext() {
        return this.zzlm.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzlm.next();
        return next.getValue() instanceof zzcr ? new zzct(next) : next;
    }

    public final void remove() {
        this.zzlm.remove();
    }
}
