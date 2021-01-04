package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzvh extends zzuj<Double> implements zzwd<Double>, zzxp, RandomAccess {
    private static final zzvh zzbwb;
    private int size;
    private double[] zzbwc;

    zzvh() {
        this(new double[10], 0);
    }

    private zzvh(double[] dArr, int i) {
        this.zzbwc = dArr;
        this.size = i;
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzuh();
        if (i2 >= i) {
            System.arraycopy(this.zzbwc, i2, this.zzbwc, i, this.size - i2);
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
        if (!(obj instanceof zzvh)) {
            return super.equals(obj);
        }
        zzvh zzvh = (zzvh) obj;
        if (this.size != zzvh.size) {
            return false;
        }
        double[] dArr = zzvh.zzbwc;
        for (int i = 0; i < this.size; i++) {
            if (Double.doubleToLongBits(this.zzbwc[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzvz.zzbi(Double.doubleToLongBits(this.zzbwc[i2]));
        }
        return i;
    }

    public final int size() {
        return this.size;
    }

    public final void zzd(double d) {
        zzc(this.size, d);
    }

    private final void zzc(int i, double d) {
        zzuh();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzbwc.length) {
            System.arraycopy(this.zzbwc, i, this.zzbwc, i + 1, this.size - i);
        } else {
            double[] dArr = new double[(((this.size * 3) / 2) + 1)];
            System.arraycopy(this.zzbwc, 0, dArr, 0, i);
            System.arraycopy(this.zzbwc, i, dArr, i + 1, this.size - i);
            this.zzbwc = dArr;
        }
        this.zzbwc[i] = d;
        this.size++;
        this.modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzuj
    public final boolean addAll(Collection<? extends Double> collection) {
        zzuh();
        zzvz.checkNotNull(collection);
        if (!(collection instanceof zzvh)) {
            return super.addAll(collection);
        }
        zzvh zzvh = (zzvh) collection;
        if (zzvh.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size >= zzvh.size) {
            int i = this.size + zzvh.size;
            if (i > this.zzbwc.length) {
                this.zzbwc = Arrays.copyOf(this.zzbwc, i);
            }
            System.arraycopy(zzvh.zzbwc, 0, this.zzbwc, this.size, zzvh.size);
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
            if (obj.equals(Double.valueOf(this.zzbwc[i]))) {
                System.arraycopy(this.zzbwc, i + 1, this.zzbwc, i, this.size - i);
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
    public final /* synthetic */ Double set(int i, Double d) {
        double doubleValue = d.doubleValue();
        zzuh();
        zzai(i);
        double d2 = this.zzbwc[i];
        this.zzbwc[i] = doubleValue;
        return Double.valueOf(d2);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ Double remove(int i) {
        zzuh();
        zzai(i);
        double d = this.zzbwc[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzbwc, i + 1, this.zzbwc, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Double.valueOf(d);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ void add(int i, Double d) {
        zzc(i, d.doubleValue());
    }

    /* Return type fixed from 'com.google.android.gms.internal.measurement.zzwd' to match base method */
    @Override // com.google.android.gms.internal.measurement.zzwd
    public final /* synthetic */ zzwd<Double> zzak(int i) {
        if (i >= this.size) {
            return new zzvh(Arrays.copyOf(this.zzbwc, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        zzai(i);
        return Double.valueOf(this.zzbwc[i]);
    }

    static {
        zzvh zzvh = new zzvh();
        zzbwb = zzvh;
        zzvh.zzsw();
    }
}
