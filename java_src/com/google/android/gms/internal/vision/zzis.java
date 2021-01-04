package com.google.android.gms.internal.vision;

import java.util.ListIterator;

final class zzis implements ListIterator<String> {
    private ListIterator<String> zzaav = this.zzaax.zzaau.listIterator(this.zzaaw);
    private final /* synthetic */ int zzaaw;
    private final /* synthetic */ zzir zzaax;

    zzis(zzir zzir, int i) {
        this.zzaax = zzir;
        this.zzaaw = i;
    }

    public final boolean hasNext() {
        return this.zzaav.hasNext();
    }

    public final boolean hasPrevious() {
        return this.zzaav.hasPrevious();
    }

    public final int nextIndex() {
        return this.zzaav.nextIndex();
    }

    public final int previousIndex() {
        return this.zzaav.previousIndex();
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
        return this.zzaav.previous();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator, java.util.ListIterator
    public final /* synthetic */ String next() {
        return this.zzaav.next();
    }
}
