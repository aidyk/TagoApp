package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class zzwy<K, V> extends LinkedHashMap<K, V> {
    private static final zzwy zzcbp;
    private boolean zzbup = true;

    private zzwy() {
    }

    private zzwy(Map<K, V> map) {
        super(map);
    }

    public static <K, V> zzwy<K, V> zzxn() {
        return zzcbp;
    }

    public final void zza(zzwy<K, V> zzwy) {
        zzxp();
        if (!zzwy.isEmpty()) {
            putAll(zzwy);
        }
    }

    @Override // java.util.LinkedHashMap, java.util.AbstractMap, java.util.Map, java.util.HashMap
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    public final void clear() {
        zzxp();
        super.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.HashMap
    public final V put(K k, V v) {
        zzxp();
        zzvz.checkNotNull(k);
        zzvz.checkNotNull(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.HashMap
    public final void putAll(Map<? extends K, ? extends V> map) {
        zzxp();
        for (Object obj : map.keySet()) {
            zzvz.checkNotNull(obj);
            zzvz.checkNotNull(map.get(obj));
        }
        super.putAll(map);
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.HashMap
    public final V remove(Object obj) {
        zzxp();
        return (V) super.remove(obj);
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x005c A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof java.util.Map
            r1 = 0
            if (r0 == 0) goto L_0x005d
            java.util.Map r7 = (java.util.Map) r7
            r0 = 1
            if (r6 == r7) goto L_0x0059
            int r2 = r6.size()
            int r3 = r7.size()
            if (r2 == r3) goto L_0x0016
        L_0x0014:
            r7 = 0
            goto L_0x005a
        L_0x0016:
            java.util.Set r2 = r6.entrySet()
            java.util.Iterator r2 = r2.iterator()
        L_0x001e:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L_0x0059
            java.lang.Object r3 = r2.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r3.getKey()
            boolean r4 = r7.containsKey(r4)
            if (r4 != 0) goto L_0x0035
            goto L_0x0014
        L_0x0035:
            java.lang.Object r4 = r3.getValue()
            java.lang.Object r3 = r3.getKey()
            java.lang.Object r3 = r7.get(r3)
            boolean r5 = r4 instanceof byte[]
            if (r5 == 0) goto L_0x0052
            boolean r5 = r3 instanceof byte[]
            if (r5 == 0) goto L_0x0052
            byte[] r4 = (byte[]) r4
            byte[] r3 = (byte[]) r3
            boolean r3 = java.util.Arrays.equals(r4, r3)
            goto L_0x0056
        L_0x0052:
            boolean r3 = r4.equals(r3)
        L_0x0056:
            if (r3 != 0) goto L_0x001e
            goto L_0x0014
        L_0x0059:
            r7 = 1
        L_0x005a:
            if (r7 == 0) goto L_0x005d
            return r0
        L_0x005d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzwy.equals(java.lang.Object):boolean");
    }

    private static int zzab(Object obj) {
        if (obj instanceof byte[]) {
            return zzvz.hashCode((byte[]) obj);
        }
        if (!(obj instanceof zzwa)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    public final int hashCode() {
        int i = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i += zzab(entry.getValue()) ^ zzab(entry.getKey());
        }
        return i;
    }

    public final zzwy<K, V> zzxo() {
        return isEmpty() ? new zzwy<>() : new zzwy<>(this);
    }

    public final void zzsw() {
        this.zzbup = false;
    }

    public final boolean isMutable() {
        return this.zzbup;
    }

    private final void zzxp() {
        if (!this.zzbup) {
            throw new UnsupportedOperationException();
        }
    }

    static {
        zzwy zzwy = new zzwy();
        zzcbp = zzwy;
        zzwy.zzbup = false;
    }
}
