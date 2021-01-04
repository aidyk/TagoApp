package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public abstract class zzuq implements zzuu {
    zzuq() {
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator
    public /* synthetic */ Byte next() {
        return Byte.valueOf(nextByte());
    }
}
