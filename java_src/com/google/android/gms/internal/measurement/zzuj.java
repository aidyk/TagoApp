package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

abstract class zzuj<E> extends AbstractList<E> implements zzwd<E> {
    private boolean zzbup = true;

    zzuj() {
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!get(i).equals(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList
    public boolean add(E e) {
        zzuh();
        return super.add(e);
    }

    @Override // java.util.List, java.util.AbstractList
    public void add(int i, E e) {
        zzuh();
        super.add(i, e);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        zzuh();
        return super.addAll(collection);
    }

    @Override // java.util.List, java.util.AbstractList
    public boolean addAll(int i, Collection<? extends E> collection) {
        zzuh();
        return super.addAll(i, collection);
    }

    public void clear() {
        zzuh();
        super.clear();
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    public boolean zzug() {
        return this.zzbup;
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    public final void zzsw() {
        this.zzbup = false;
    }

    @Override // java.util.List, java.util.AbstractList
    public E remove(int i) {
        zzuh();
        return (E) super.remove(i);
    }

    @Override // java.util.List
    public boolean remove(Object obj) {
        zzuh();
        return super.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        zzuh();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        zzuh();
        return super.retainAll(collection);
    }

    @Override // java.util.List, java.util.AbstractList
    public E set(int i, E e) {
        zzuh();
        return (E) super.set(i, e);
    }

    /* access modifiers changed from: protected */
    public final void zzuh() {
        if (!this.zzbup) {
            throw new UnsupportedOperationException();
        }
    }
}
