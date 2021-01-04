package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class zzyp extends AbstractList<String> implements zzwn, RandomAccess {
    private final zzwn zzcdl;

    public zzyp(zzwn zzwn) {
        this.zzcdl = zzwn;
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final zzwn zzxj() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final Object zzbo(int i) {
        return this.zzcdl.zzbo(i);
    }

    public final int size() {
        return this.zzcdl.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final void zzc(zzun zzun) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.AbstractList
    public final ListIterator<String> listIterator(int i) {
        return new zzyq(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, java.lang.Iterable
    public final Iterator<String> iterator() {
        return new zzyr(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final List<?> zzxi() {
        return this.zzcdl.zzxi();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ String get(int i) {
        return (String) this.zzcdl.get(i);
    }
}
