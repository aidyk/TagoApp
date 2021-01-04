package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class zzxz implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzcdb;
    private final /* synthetic */ zzxx zzcdc;

    private zzxz(zzxx zzxx) {
        this.zzcdc = zzxx;
        this.pos = this.zzcdc.zzccw.size();
    }

    public final boolean hasNext() {
        return (this.pos > 0 && this.pos <= this.zzcdc.zzccw.size()) || zzyo().hasNext();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    private final Iterator<Map.Entry<K, V>> zzyo() {
        if (this.zzcdb == null) {
            this.zzcdb = this.zzcdc.zzccz.entrySet().iterator();
        }
        return this.zzcdb;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (zzyo().hasNext()) {
            return (Map.Entry) zzyo().next();
        }
        List list = this.zzcdc.zzccw;
        int i = this.pos - 1;
        this.pos = i;
        return (Map.Entry) list.get(i);
    }

    /* synthetic */ zzxz(zzxx zzxx, zzxy zzxy) {
        this(zzxx);
    }
}
