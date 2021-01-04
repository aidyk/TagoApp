package com.google.android.gms.internal.measurement;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public class zzyg extends AbstractSet<Map.Entry<K, V>> {
    private final /* synthetic */ zzxx zzcdc;

    private zzyg(zzxx zzxx) {
        this.zzcdc = zzxx;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new zzyf(this.zzcdc, null);
    }

    public int size() {
        return this.zzcdc.size();
    }

    public boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.zzcdc.get(entry.getKey());
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
        this.zzcdc.remove(entry.getKey());
        return true;
    }

    public void clear() {
        this.zzcdc.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.zzcdc.put((Comparable) entry.getKey(), entry.getValue());
        return true;
    }

    /* synthetic */ zzyg(zzxx zzxx, zzxy zzxy) {
        this(zzxx);
    }
}
