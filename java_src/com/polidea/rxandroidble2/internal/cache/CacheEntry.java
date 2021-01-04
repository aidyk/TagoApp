package com.polidea.rxandroidble2.internal.cache;

import com.polidea.rxandroidble2.internal.DeviceComponent;
import java.util.Map;

class CacheEntry implements Map.Entry<String, DeviceComponent> {
    private final DeviceComponentWeakReference deviceComponentWeakReference;
    private final String string;

    CacheEntry(String str, DeviceComponentWeakReference deviceComponentWeakReference2) {
        this.string = str;
        this.deviceComponentWeakReference = deviceComponentWeakReference2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CacheEntry)) {
            return false;
        }
        CacheEntry cacheEntry = (CacheEntry) obj;
        if (!this.string.equals(cacheEntry.getKey()) || !this.deviceComponentWeakReference.equals(cacheEntry.deviceComponentWeakReference)) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public String getKey() {
        return this.string;
    }

    @Override // java.util.Map.Entry
    public DeviceComponent getValue() {
        return (DeviceComponent) this.deviceComponentWeakReference.get();
    }

    public int hashCode() {
        return (this.string.hashCode() * 31) + this.deviceComponentWeakReference.hashCode();
    }

    public DeviceComponent setValue(DeviceComponent deviceComponent) {
        throw new UnsupportedOperationException("Not implemented");
    }
}
