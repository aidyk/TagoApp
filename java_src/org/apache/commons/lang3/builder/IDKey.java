package org.apache.commons.lang3.builder;

/* access modifiers changed from: package-private */
public final class IDKey {
    private final int id;
    private final Object value;

    public IDKey(Object obj) {
        this.id = System.identityHashCode(obj);
        this.value = obj;
    }

    public int hashCode() {
        return this.id;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IDKey)) {
            return false;
        }
        IDKey iDKey = (IDKey) obj;
        if (this.id == iDKey.id && this.value == iDKey.value) {
            return true;
        }
        return false;
    }
}
