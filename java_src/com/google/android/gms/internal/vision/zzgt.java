package com.google.android.gms.internal.vision;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzgt extends zzef<Long> implements zzge<Long>, zzhr, RandomAccess {
    private static final zzgt zzyq;
    private int size;
    private long[] zzyr;

    zzgt() {
        this(new long[10], 0);
    }

    private zzgt(long[] jArr, int i) {
        this.zzyr = jArr;
        this.size = i;
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzcj();
        if (i2 >= i) {
            System.arraycopy(this.zzyr, i2, this.zzyr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.vision.zzef
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgt)) {
            return super.equals(obj);
        }
        zzgt zzgt = (zzgt) obj;
        if (this.size != zzgt.size) {
            return false;
        }
        long[] jArr = zzgt.zzyr;
        for (int i = 0; i < this.size; i++) {
            if (this.zzyr[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.zzef
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzga.zzo(this.zzyr[i2]);
        }
        return i;
    }

    public final long getLong(int i) {
        zzaf(i);
        return this.zzyr[i];
    }

    public final int size() {
        return this.size;
    }

    public final void zzp(long j) {
        zzk(this.size, j);
    }

    private final void zzk(int i, long j) {
        zzcj();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzag(i));
        }
        if (this.size < this.zzyr.length) {
            System.arraycopy(this.zzyr, i, this.zzyr, i + 1, this.size - i);
        } else {
            long[] jArr = new long[(((this.size * 3) / 2) + 1)];
            System.arraycopy(this.zzyr, 0, jArr, 0, i);
            System.arraycopy(this.zzyr, i, jArr, i + 1, this.size - i);
            this.zzyr = jArr;
        }
        this.zzyr[i] = j;
        this.size++;
        this.modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, com.google.android.gms.internal.vision.zzef, java.util.Collection
    public final boolean addAll(Collection<? extends Long> collection) {
        zzcj();
        zzga.checkNotNull(collection);
        if (!(collection instanceof zzgt)) {
            return super.addAll(collection);
        }
        zzgt zzgt = (zzgt) collection;
        if (zzgt.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size >= zzgt.size) {
            int i = this.size + zzgt.size;
            if (i > this.zzyr.length) {
                this.zzyr = Arrays.copyOf(this.zzyr, i);
            }
            System.arraycopy(zzgt.zzyr, 0, this.zzyr, this.size, zzgt.size);
            this.size = i;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.List, com.google.android.gms.internal.vision.zzef
    public final boolean remove(Object obj) {
        zzcj();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Long.valueOf(this.zzyr[i]))) {
                System.arraycopy(this.zzyr, i + 1, this.zzyr, i, this.size - i);
                this.size--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    private final void zzaf(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzag(i));
        }
    }

    private final String zzag(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final /* synthetic */ Long set(int i, Long l) {
        long longValue = l.longValue();
        zzcj();
        zzaf(i);
        long j = this.zzyr[i];
        this.zzyr[i] = longValue;
        return Long.valueOf(j);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final /* synthetic */ Long remove(int i) {
        zzcj();
        zzaf(i);
        long j = this.zzyr[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzyr, i + 1, this.zzyr, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Long.valueOf(j);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final /* synthetic */ void add(int i, Long l) {
        zzk(i, l.longValue());
    }

    /* Return type fixed from 'com.google.android.gms.internal.vision.zzge' to match base method */
    @Override // com.google.android.gms.internal.vision.zzge
    public final /* synthetic */ zzge<Long> zzah(int i) {
        if (i >= this.size) {
            return new zzgt(Arrays.copyOf(this.zzyr, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(getLong(i));
    }

    static {
        zzgt zzgt = new zzgt();
        zzyq = zzgt;
        zzgt.zzci();
    }
}
