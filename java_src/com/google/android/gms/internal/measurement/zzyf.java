package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

final class zzyf implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzcdb;
    private final /* synthetic */ zzxx zzcdc;
    private boolean zzcdg;

    private zzyf(zzxx zzxx) {
        this.zzcdc = zzxx;
        this.pos = -1;
    }

    public final boolean hasNext() {
        if (this.pos + 1 < this.zzcdc.zzccw.size() || (!this.zzcdc.zzccx.isEmpty() && zzyo().hasNext())) {
            return true;
        }
        return false;
    }

    public final void remove() {
        if (this.zzcdg) {
            this.zzcdg = false;
            this.zzcdc.zzym();
            if (this.pos < this.zzcdc.zzccw.size()) {
                zzxx zzxx = this.zzcdc;
                int i = this.pos;
                this.pos = i - 1;
                Object unused = zzxx.zzbx(i);
                return;
            }
            zzyo().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }

    private final Iterator<Map.Entry<K, V>> zzyo() {
        if (this.zzcdb == null) {
            this.zzcdb = this.zzcdc.zzccx.entrySet().iterator();
        }
        return this.zzcdb;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.zzcdg = true;
        int i = this.pos + 1;
        this.pos = i;
        if (i < this.zzcdc.zzccw.size()) {
            return (Map.Entry) this.zzcdc.zzccw.get(this.pos);
        }
        return (Map.Entry) zzyo().next();
    }

    /* synthetic */ zzyf(zzxx zzxx, zzxy zzxy) {
        this(zzxx);
    }
}
