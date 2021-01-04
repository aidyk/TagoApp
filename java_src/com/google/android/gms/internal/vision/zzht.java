package com.google.android.gms.internal.vision;

import java.util.ArrayList;
import java.util.List;

/* access modifiers changed from: package-private */
public final class zzht<E> extends zzef<E> {
    private static final zzht<Object> zzzz;
    private final List<E> zzym;

    public static <E> zzht<E> zzgm() {
        return (zzht<E>) zzzz;
    }

    zzht() {
        this(new ArrayList(10));
    }

    private zzht(List<E> list) {
        this.zzym = list;
    }

    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final void add(int i, E e) {
        zzcj();
        this.zzym.add(i, e);
        this.modCount++;
    }

    @Override // java.util.List, java.util.AbstractList
    public final E get(int i) {
        return this.zzym.get(i);
    }

    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final E remove(int i) {
        zzcj();
        E remove = this.zzym.remove(i);
        this.modCount++;
        return remove;
    }

    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final E set(int i, E e) {
        zzcj();
        E e2 = this.zzym.set(i, e);
        this.modCount++;
        return e2;
    }

    public final int size() {
        return this.zzym.size();
    }

    @Override // com.google.android.gms.internal.vision.zzge
    public final /* synthetic */ zzge zzah(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.zzym);
            return new zzht(arrayList);
        }
        throw new IllegalArgumentException();
    }

    static {
        zzht<Object> zzht = new zzht<>();
        zzzz = zzht;
        zzht.zzci();
    }
}
