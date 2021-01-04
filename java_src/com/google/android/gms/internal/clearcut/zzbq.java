package com.google.android.gms.internal.clearcut;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzbq extends zzav<Double> implements zzcn<Double>, RandomAccess {
    private static final zzbq zzgj;
    private int size;
    private double[] zzgk;

    static {
        zzbq zzbq = new zzbq();
        zzgj = zzbq;
        zzbq.zzv();
    }

    zzbq() {
        this(new double[10], 0);
    }

    private zzbq(double[] dArr, int i) {
        this.zzgk = dArr;
        this.size = i;
    }

    private final void zzc(int i, double d) {
        zzw();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzh(i));
        }
        if (this.size < this.zzgk.length) {
            System.arraycopy(this.zzgk, i, this.zzgk, i + 1, this.size - i);
        } else {
            double[] dArr = new double[(((this.size * 3) / 2) + 1)];
            System.arraycopy(this.zzgk, 0, dArr, 0, i);
            System.arraycopy(this.zzgk, i, dArr, i + 1, this.size - i);
            this.zzgk = dArr;
        }
        this.zzgk[i] = d;
        this.size++;
        this.modCount++;
    }

    private final void zzg(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzh(i));
        }
    }

    private final String zzh(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.clearcut.zzav, java.util.AbstractList
    public final /* synthetic */ void add(int i, Double d) {
        zzc(i, d.doubleValue());
    }

    @Override // java.util.AbstractCollection, java.util.List, com.google.android.gms.internal.clearcut.zzav, java.util.Collection
    public final boolean addAll(Collection<? extends Double> collection) {
        zzw();
        zzci.checkNotNull(collection);
        if (!(collection instanceof zzbq)) {
            return super.addAll(collection);
        }
        zzbq zzbq = (zzbq) collection;
        if (zzbq.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size >= zzbq.size) {
            int i = this.size + zzbq.size;
            if (i > this.zzgk.length) {
                this.zzgk = Arrays.copyOf(this.zzgk, i);
            }
            System.arraycopy(zzbq.zzgk, 0, this.zzgk, this.size, zzbq.size);
            this.size = i;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.clearcut.zzav
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbq)) {
            return super.equals(obj);
        }
        zzbq zzbq = (zzbq) obj;
        if (this.size != zzbq.size) {
            return false;
        }
        double[] dArr = zzbq.zzgk;
        for (int i = 0; i < this.size; i++) {
            if (this.zzgk[i] != dArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        zzg(i);
        return Double.valueOf(this.zzgk[i]);
    }

    @Override // com.google.android.gms.internal.clearcut.zzav
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzci.zzl(Double.doubleToLongBits(this.zzgk[i2]));
        }
        return i;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, com.google.android.gms.internal.clearcut.zzav, java.util.AbstractList
    public final /* synthetic */ Double remove(int i) {
        zzw();
        zzg(i);
        double d = this.zzgk[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzgk, i + 1, this.zzgk, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.List, com.google.android.gms.internal.clearcut.zzav
    public final boolean remove(Object obj) {
        zzw();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Double.valueOf(this.zzgk[i]))) {
                System.arraycopy(this.zzgk, i + 1, this.zzgk, i, this.size - i);
                this.size--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzw();
        if (i2 >= i) {
            System.arraycopy(this.zzgk, i2, this.zzgk, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.clearcut.zzav, java.util.AbstractList
    public final /* synthetic */ Double set(int i, Double d) {
        double doubleValue = d.doubleValue();
        zzw();
        zzg(i);
        double d2 = this.zzgk[i];
        this.zzgk[i] = doubleValue;
        return Double.valueOf(d2);
    }

    public final int size() {
        return this.size;
    }

    public final void zzc(double d) {
        zzc(this.size, d);
    }

    /* Return type fixed from 'com.google.android.gms.internal.clearcut.zzcn' to match base method */
    @Override // com.google.android.gms.internal.clearcut.zzcn
    public final /* synthetic */ zzcn<Double> zzi(int i) {
        if (i >= this.size) {
            return new zzbq(Arrays.copyOf(this.zzgk, i), this.size);
        }
        throw new IllegalArgumentException();
    }
}
