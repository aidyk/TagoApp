package android.arch.core.internal;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SafeIterableMap<K, V> implements Iterable<Map.Entry<K, V>> {
    private Entry<K, V> mEnd;
    private WeakHashMap<SupportRemove<K, V>, Boolean> mIterators = new WeakHashMap<>();
    private int mSize = 0;
    private Entry<K, V> mStart;

    /* access modifiers changed from: package-private */
    public interface SupportRemove<K, V> {
        void supportRemove(@NonNull Entry<K, V> entry);
    }

    /* access modifiers changed from: protected */
    public Entry<K, V> get(K k) {
        Entry<K, V> entry = this.mStart;
        while (entry != null && !entry.mKey.equals(k)) {
            entry = entry.mNext;
        }
        return entry;
    }

    public V putIfAbsent(@NonNull K k, @NonNull V v) {
        Entry<K, V> entry = get(k);
        if (entry != null) {
            return entry.mValue;
        }
        put(k, v);
        return null;
    }

    /* access modifiers changed from: protected */
    public Entry<K, V> put(@NonNull K k, @NonNull V v) {
        Entry<K, V> entry = new Entry<>(k, v);
        this.mSize++;
        if (this.mEnd == null) {
            this.mStart = entry;
            this.mEnd = this.mStart;
            return entry;
        }
        this.mEnd.mNext = entry;
        entry.mPrevious = this.mEnd;
        this.mEnd = entry;
        return entry;
    }

    public V remove(@NonNull K k) {
        Entry<K, V> entry = get(k);
        if (entry == null) {
            return null;
        }
        this.mSize--;
        if (!this.mIterators.isEmpty()) {
            for (SupportRemove<K, V> supportRemove : this.mIterators.keySet()) {
                supportRemove.supportRemove(entry);
            }
        }
        if (entry.mPrevious != null) {
            entry.mPrevious.mNext = entry.mNext;
        } else {
            this.mStart = entry.mNext;
        }
        if (entry.mNext != null) {
            entry.mNext.mPrevious = entry.mPrevious;
        } else {
            this.mEnd = entry.mPrevious;
        }
        entry.mNext = null;
        entry.mPrevious = null;
        return entry.mValue;
    }

    public int size() {
        return this.mSize;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Map.Entry<K, V>> iterator() {
        AscendingIterator ascendingIterator = new AscendingIterator(this.mStart, this.mEnd);
        this.mIterators.put(ascendingIterator, false);
        return ascendingIterator;
    }

    public Iterator<Map.Entry<K, V>> descendingIterator() {
        DescendingIterator descendingIterator = new DescendingIterator(this.mEnd, this.mStart);
        this.mIterators.put(descendingIterator, false);
        return descendingIterator;
    }

    public SafeIterableMap<K, V>.IteratorWithAdditions iteratorWithAdditions() {
        SafeIterableMap<K, V>.IteratorWithAdditions iteratorWithAdditions = new IteratorWithAdditions();
        this.mIterators.put(iteratorWithAdditions, false);
        return iteratorWithAdditions;
    }

    public Map.Entry<K, V> eldest() {
        return this.mStart;
    }

    public Map.Entry<K, V> newest() {
        return this.mEnd;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SafeIterableMap)) {
            return false;
        }
        SafeIterableMap safeIterableMap = (SafeIterableMap) obj;
        if (size() != safeIterableMap.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it2 = iterator();
        Iterator<Map.Entry<K, V>> it3 = safeIterableMap.iterator();
        while (it2.hasNext() && it3.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            Map.Entry<K, V> next2 = it3.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        if (it2.hasNext() || it3.hasNext()) {
            return false;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it2 = iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().toString());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    private static abstract class ListIterator<K, V> implements Iterator<Map.Entry<K, V>>, SupportRemove<K, V> {
        Entry<K, V> mExpectedEnd;
        Entry<K, V> mNext;

        /* access modifiers changed from: package-private */
        public abstract Entry<K, V> backward(Entry<K, V> entry);

        /* access modifiers changed from: package-private */
        public abstract Entry<K, V> forward(Entry<K, V> entry);

        ListIterator(Entry<K, V> entry, Entry<K, V> entry2) {
            this.mExpectedEnd = entry2;
            this.mNext = entry;
        }

        public boolean hasNext() {
            return this.mNext != null;
        }

        @Override // android.arch.core.internal.SafeIterableMap.SupportRemove
        public void supportRemove(@NonNull Entry<K, V> entry) {
            if (this.mExpectedEnd == entry && entry == this.mNext) {
                this.mNext = null;
                this.mExpectedEnd = null;
            }
            if (this.mExpectedEnd == entry) {
                this.mExpectedEnd = backward(this.mExpectedEnd);
            }
            if (this.mNext == entry) {
                this.mNext = nextNode();
            }
        }

        private Entry<K, V> nextNode() {
            if (this.mNext == this.mExpectedEnd || this.mExpectedEnd == null) {
                return null;
            }
            return forward(this.mNext);
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            Entry<K, V> entry = this.mNext;
            this.mNext = nextNode();
            return entry;
        }
    }

    /* access modifiers changed from: package-private */
    public static class AscendingIterator<K, V> extends ListIterator<K, V> {
        AscendingIterator(Entry<K, V> entry, Entry<K, V> entry2) {
            super(entry, entry2);
        }

        /* access modifiers changed from: package-private */
        @Override // android.arch.core.internal.SafeIterableMap.ListIterator
        public Entry<K, V> forward(Entry<K, V> entry) {
            return entry.mNext;
        }

        /* access modifiers changed from: package-private */
        @Override // android.arch.core.internal.SafeIterableMap.ListIterator
        public Entry<K, V> backward(Entry<K, V> entry) {
            return entry.mPrevious;
        }
    }

    private static class DescendingIterator<K, V> extends ListIterator<K, V> {
        DescendingIterator(Entry<K, V> entry, Entry<K, V> entry2) {
            super(entry, entry2);
        }

        /* access modifiers changed from: package-private */
        @Override // android.arch.core.internal.SafeIterableMap.ListIterator
        public Entry<K, V> forward(Entry<K, V> entry) {
            return entry.mPrevious;
        }

        /* access modifiers changed from: package-private */
        @Override // android.arch.core.internal.SafeIterableMap.ListIterator
        public Entry<K, V> backward(Entry<K, V> entry) {
            return entry.mNext;
        }
    }

    /* access modifiers changed from: private */
    public class IteratorWithAdditions implements Iterator<Map.Entry<K, V>>, SupportRemove<K, V> {
        private boolean mBeforeStart;
        private Entry<K, V> mCurrent;

        private IteratorWithAdditions() {
            this.mBeforeStart = true;
        }

        @Override // android.arch.core.internal.SafeIterableMap.SupportRemove
        public void supportRemove(@NonNull Entry<K, V> entry) {
            if (entry == this.mCurrent) {
                this.mCurrent = this.mCurrent.mPrevious;
                this.mBeforeStart = this.mCurrent == null;
            }
        }

        public boolean hasNext() {
            if (this.mBeforeStart) {
                if (SafeIterableMap.this.mStart != null) {
                    return true;
                }
                return false;
            } else if (this.mCurrent == null || this.mCurrent.mNext == null) {
                return false;
            } else {
                return true;
            }
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (this.mBeforeStart) {
                this.mBeforeStart = false;
                this.mCurrent = SafeIterableMap.this.mStart;
            } else {
                this.mCurrent = this.mCurrent != null ? this.mCurrent.mNext : null;
            }
            return this.mCurrent;
        }
    }

    /* access modifiers changed from: package-private */
    public static class Entry<K, V> implements Map.Entry<K, V> {
        @NonNull
        final K mKey;
        Entry<K, V> mNext;
        Entry<K, V> mPrevious;
        @NonNull
        final V mValue;

        Entry(@NonNull K k, @NonNull V v) {
            this.mKey = k;
            this.mValue = v;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public K getKey() {
            return this.mKey;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public V getValue() {
            return this.mValue;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return ((Object) this.mKey) + "=" + ((Object) this.mValue);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            if (!this.mKey.equals(entry.mKey) || !this.mValue.equals(entry.mValue)) {
                return false;
            }
            return true;
        }
    }
}
