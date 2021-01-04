package com.google.android.gms.internal.measurement;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* access modifiers changed from: package-private */
public class zzxx<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private boolean zzbqj;
    private final int zzccv;
    private List<zzye> zzccw;
    private Map<K, V> zzccx;
    private volatile zzyg zzccy;
    private Map<K, V> zzccz;
    private volatile zzya zzcda;

    static <FieldDescriptorType extends zzvq<FieldDescriptorType>> zzxx<FieldDescriptorType, Object> zzbv(int i) {
        return new zzxy(i);
    }

    private zzxx(int i) {
        this.zzccv = i;
        this.zzccw = Collections.emptyList();
        this.zzccx = Collections.emptyMap();
        this.zzccz = Collections.emptyMap();
    }

    public void zzsw() {
        Map<K, V> map;
        Map<K, V> map2;
        if (!this.zzbqj) {
            if (this.zzccx.isEmpty()) {
                map = Collections.emptyMap();
            } else {
                map = Collections.unmodifiableMap(this.zzccx);
            }
            this.zzccx = map;
            if (this.zzccz.isEmpty()) {
                map2 = Collections.emptyMap();
            } else {
                map2 = Collections.unmodifiableMap(this.zzccz);
            }
            this.zzccz = map2;
            this.zzbqj = true;
        }
    }

    public final boolean isImmutable() {
        return this.zzbqj;
    }

    public final int zzyj() {
        return this.zzccw.size();
    }

    public final Map.Entry<K, V> zzbw(int i) {
        return this.zzccw.get(i);
    }

    public final Iterable<Map.Entry<K, V>> zzyk() {
        if (this.zzccx.isEmpty()) {
            return zzyb.zzyp();
        }
        return this.zzccx.entrySet();
    }

    public int size() {
        return this.zzccw.size() + this.zzccx.size();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.measurement.zzxx<K extends java.lang.Comparable<K>, V> */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza(comparable) >= 0 || this.zzccx.containsKey(comparable);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.measurement.zzxx<K extends java.lang.Comparable<K>, V> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zza = zza(comparable);
        return zza >= 0 ? (V) this.zzccw.get(zza).getValue() : this.zzccx.get(comparable);
    }

    /* renamed from: zza */
    public final V put(K k, V v) {
        zzym();
        int zza = zza(k);
        if (zza >= 0) {
            return (V) this.zzccw.get(zza).setValue(v);
        }
        zzym();
        if (this.zzccw.isEmpty() && !(this.zzccw instanceof ArrayList)) {
            this.zzccw = new ArrayList(this.zzccv);
        }
        int i = -(zza + 1);
        if (i >= this.zzccv) {
            return zzyn().put(k, v);
        }
        if (this.zzccw.size() == this.zzccv) {
            zzye remove = this.zzccw.remove(this.zzccv - 1);
            zzyn().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.zzccw.add(i, new zzye(this, k, v));
        return null;
    }

    public void clear() {
        zzym();
        if (!this.zzccw.isEmpty()) {
            this.zzccw.clear();
        }
        if (!this.zzccx.isEmpty()) {
            this.zzccx.clear();
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.measurement.zzxx<K extends java.lang.Comparable<K>, V> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzym();
        Comparable comparable = (Comparable) obj;
        int zza = zza(comparable);
        if (zza >= 0) {
            return (V) zzbx(zza);
        }
        if (this.zzccx.isEmpty()) {
            return null;
        }
        return this.zzccx.remove(comparable);
    }

    /* access modifiers changed from: private */
    public final V zzbx(int i) {
        zzym();
        V v = (V) this.zzccw.remove(i).getValue();
        if (!this.zzccx.isEmpty()) {
            Iterator<Map.Entry<K, V>> it2 = zzyn().entrySet().iterator();
            this.zzccw.add(new zzye(this, it2.next()));
            it2.remove();
        }
        return v;
    }

    private final int zza(K k) {
        int size = this.zzccw.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.zzccw.get(size).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = k.compareTo((Comparable) this.zzccw.get(i2).getKey());
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else if (compareTo2 <= 0) {
                return i2;
            } else {
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zzccy == null) {
            this.zzccy = new zzyg(this, null);
        }
        return this.zzccy;
    }

    /* access modifiers changed from: package-private */
    public final Set<Map.Entry<K, V>> zzyl() {
        if (this.zzcda == null) {
            this.zzcda = new zzya(this, null);
        }
        return this.zzcda;
    }

    /* access modifiers changed from: private */
    public final void zzym() {
        if (this.zzbqj) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> zzyn() {
        zzym();
        if (this.zzccx.isEmpty() && !(this.zzccx instanceof TreeMap)) {
            this.zzccx = new TreeMap();
            this.zzccz = ((TreeMap) this.zzccx).descendingMap();
        }
        return (SortedMap) this.zzccx;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzxx)) {
            return super.equals(obj);
        }
        zzxx zzxx = (zzxx) obj;
        int size = size();
        if (size != zzxx.size()) {
            return false;
        }
        int zzyj = zzyj();
        if (zzyj != zzxx.zzyj()) {
            return entrySet().equals(zzxx.entrySet());
        }
        for (int i = 0; i < zzyj; i++) {
            if (!zzbw(i).equals(zzxx.zzbw(i))) {
                return false;
            }
        }
        if (zzyj != size) {
            return this.zzccx.equals(zzxx.zzccx);
        }
        return true;
    }

    public int hashCode() {
        int zzyj = zzyj();
        int i = 0;
        for (int i2 = 0; i2 < zzyj; i2++) {
            i += this.zzccw.get(i2).hashCode();
        }
        return this.zzccx.size() > 0 ? i + this.zzccx.hashCode() : i;
    }

    /* synthetic */ zzxx(int i, zzxy zzxy) {
        this(i);
    }
}
