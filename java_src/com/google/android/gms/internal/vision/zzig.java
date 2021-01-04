package com.google.android.gms.internal.vision;

import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzig implements Comparable<zzig>, Map.Entry<K, V> {
    private V value;
    private final /* synthetic */ zzhz zzaal;
    private final K zzaao;

    zzig(zzhz zzhz, Map.Entry<K, V> entry) {
        this(zzhz, entry.getKey(), entry.getValue());
    }

    zzig(zzhz zzhz, K k, V v) {
        this.zzaal = zzhz;
        this.zzaao = k;
        this.value = v;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.zzaal.zzgx();
        V v2 = this.value;
        this.value = v;
        return v2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return equals(this.zzaao, entry.getKey()) && equals(this.value, entry.getValue());
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = this.zzaao == null ? 0 : this.zzaao.hashCode();
        if (this.value != null) {
            i = this.value.hashCode();
        }
        return hashCode ^ i;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzaao);
        String valueOf2 = String.valueOf(this.value);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }

    private static boolean equals(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zzaao;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzig zzig) {
        return ((Comparable) getKey()).compareTo((Comparable) zzig.getKey());
    }
}
