package com.google.android.gms.internal.vision;

import java.util.NoSuchElementException;

/* access modifiers changed from: package-private */
public final class zzep implements zzeu {
    private final int limit = this.zzsa.size();
    private int position = 0;
    private final /* synthetic */ zzeo zzsa;

    zzep(zzeo zzeo) {
        this.zzsa = zzeo;
    }

    public final boolean hasNext() {
        return this.position < this.limit;
    }

    @Override // com.google.android.gms.internal.vision.zzeu
    public final byte nextByte() {
        try {
            zzeo zzeo = this.zzsa;
            int i = this.position;
            this.position = i + 1;
            return zzeo.zzai(i);
        } catch (IndexOutOfBoundsException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator
    public final /* synthetic */ Byte next() {
        return Byte.valueOf(nextByte());
    }
}
