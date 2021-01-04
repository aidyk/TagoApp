package io.fabric.sdk.android.services.cache;

import android.content.Context;

public class MemoryValueCache<T> extends AbstractValueCache<T> {
    private T value;

    public MemoryValueCache() {
        this(null);
    }

    public MemoryValueCache(ValueCache<T> valueCache) {
        super(valueCache);
    }

    /* access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.services.cache.AbstractValueCache
    public void doInvalidate(Context context) {
        this.value = null;
    }

    /* access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.services.cache.AbstractValueCache
    public T getCached(Context context) {
        return this.value;
    }

    /* access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.services.cache.AbstractValueCache
    public void cacheValue(Context context, T t) {
        this.value = t;
    }
}
