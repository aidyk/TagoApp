package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzws extends zzuj<Long> implements zzwd<Long>, zzxp, RandomAccess {
    private static final zzws zzcbh;
    private int size;
    private long[] zzcbi;

    zzws() {
        this(new long[10], 0);
    }

    private zzws(long[] jArr, int i) {
        this.zzcbi = jArr;
        this.size = i;
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzuh();
        if (i2 >= i) {
            System.arraycopy(this.zzcbi, i2, this.zzcbi, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.measurement.zzuj
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzws)) {
            return super.equals(obj);
        }
        zzws zzws = (zzws) obj;
        if (this.size != zzws.size) {
            return false;
        }
        long[] jArr = zzws.zzcbi;
        for (int i = 0; i < this.size; i++) {
            if (this.zzcbi[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzvz.zzbi(this.zzcbi[i2]);
        }
        return i;
    }

    public final long getLong(int i) {
        zzai(i);
        return this.zzcbi[i];
    }

    public final int size() {
        return this.size;
    }

    public final void zzbj(long j) {
        zzk(this.size, j);
    }

    private final void zzk(int i, long j) {
        zzuh();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzcbi.length) {
            System.arraycopy(this.zzcbi, i, this.zzcbi, i + 1, this.size - i);
        } else {
            long[] jArr = new long[(((this.size * 3) / 2) + 1)];
            System.arraycopy(this.zzcbi, 0, jArr, 0, i);
            System.arraycopy(this.zzcbi, i, jArr, i + 1, this.size - i);
            this.zzcbi = jArr;
        }
        this.zzcbi[i] = j;
        this.size++;
        this.modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzuj
    public final boolean addAll(Collection<? extends Long> collection) {
        zzuh();
        zzvz.checkNotNull(collection);
        if (!(collection instanceof zzws)) {
            return super.addAll(collection);
        }
        zzws zzws = (zzws) collection;
        if (zzws.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size >= zzws.size) {
            int i = this.size + zzws.size;
            if (i > this.zzcbi.length) {
                this.zzcbi = Arrays.copyOf(this.zzcbi, i);
            }
            System.arraycopy(zzws.zzcbi, 0, this.zzcbi, this.size, zzws.size);
            this.size = i;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.List, com.google.android.gms.internal.measurement.zzuj
    public final boolean remove(Object obj) {
        zzuh();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Long.valueOf(this.zzcbi[i]))) {
                System.arraycopy(this.zzcbi, i + 1, this.zzcbi, i, this.size - i);
                this.size--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    private final void zzai(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
    }

    private final String zzaj(int i) {
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
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ Long set(int i, Long l) {
        long longValue = l.longValue();
        zzuh();
        zzai(i);
        long j = this.zzcbi[i];
        this.zzcbi[i] = longValue;
        return Long.valueOf(j);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ Long remove(int i) {
        zzuh();
        zzai(i);
        long j = this.zzcbi[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzcbi, i + 1, this.zzcbi, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Long.valueOf(j);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ void add(int i, Long l) {
        zzk(i, l.longValue());
    }

    /* Return type fixed from 'com.google.android.gms.internal.measurement.zzwd' to match base method */
    @Override // com.google.android.gms.internal.measurement.zzwd
    public final /* synthetic */ zzwd<Long> zzak(int i) {
        if (i >= this.size) {
            return new zzws(Arrays.copyOf(this.zzcbi, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(getLong(i));
    }

    static {
        zzws zzws = new zzws();
        zzcbh = zzws;
        zzws.zzsw();
    }
}
