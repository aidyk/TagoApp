package com.google.android.gms.internal.measurement;

import java.util.ListIterator;

final class zzyq implements ListIterator<String> {
    private ListIterator<String> zzcdm = this.zzcdo.zzcdl.listIterator(this.zzcdn);
    private final /* synthetic */ int zzcdn;
    private final /* synthetic */ zzyp zzcdo;

    zzyq(zzyp zzyp, int i) {
        this.zzcdo = zzyp;
        this.zzcdn = i;
    }

    public final boolean hasNext() {
        return this.zzcdm.hasNext();
    }

    public final boolean hasPrevious() {
        return this.zzcdm.hasPrevious();
    }

    public final int nextIndex() {
        return this.zzcdm.nextIndex();
    }

    public final int previousIndex() {
        return this.zzcdm.previousIndex();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.zzcdm.previous();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator, java.util.ListIterator
    public final /* synthetic */ String next() {
        return this.zzcdm.next();
    }
}
