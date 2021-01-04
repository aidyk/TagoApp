package com.google.android.gms.internal.measurement;

import java.util.Map;

final class zzwj<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, zzwh> zzcaw;

    private zzwj(Map.Entry<K, zzwh> entry) {
        this.zzcaw = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.zzcaw.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.zzcaw.getValue() == null) {
            return null;
        }
        return zzwh.zzxg();
    }

    public final zzwh zzxh() {
        return this.zzcaw.getValue();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzxe) {
            return this.zzcaw.getValue().zzi((zzxe) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
