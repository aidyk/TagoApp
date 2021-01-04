package com.google.android.gms.internal.vision;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public class zzii extends AbstractSet<Map.Entry<K, V>> {
    private final /* synthetic */ zzhz zzaal;

    private zzii(zzhz zzhz) {
        this.zzaal = zzhz;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new zzih(this.zzaal, null);
    }

    public int size() {
        return this.zzaal.size();
    }

    public boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.zzaal.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            return obj2 != null && obj2.equals(value);
        }
        return true;
    }

    public boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.zzaal.remove(entry.getKey());
        return true;
    }

    public void clear() {
        this.zzaal.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.zzaal.put((Comparable) entry.getKey(), entry.getValue());
        return true;
    }

    /* synthetic */ zzii(zzhz zzhz, zzia zzia) {
        this(zzhz);
    }
}
