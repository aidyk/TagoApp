package com.google.android.gms.internal.vision;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzfh extends zzef<Double> implements zzge<Double>, zzhr, RandomAccess {
    private static final zzfh zztc;
    private int size;
    private double[] zztd;

    zzfh() {
        this(new double[10], 0);
    }

    private zzfh(double[] dArr, int i) {
        this.zztd = dArr;
        this.size = i;
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzcj();
        if (i2 >= i) {
            System.arraycopy(this.zztd, i2, this.zztd, i, this.size - i2);
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
        if (!(obj instanceof zzfh)) {
            return super.equals(obj);
        }
        zzfh zzfh = (zzfh) obj;
        if (this.size != zzfh.size) {
            return false;
        }
        double[] dArr = zzfh.zztd;
        for (int i = 0; i < this.size; i++) {
            if (Double.doubleToLongBits(this.zztd[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.zzef
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzga.zzo(Double.doubleToLongBits(this.zztd[i2]));
        }
        return i;
    }

    public final int size() {
        return this.size;
    }

    public final void zzc(double d) {
        zzc(this.size, d);
    }

    private final void zzc(int i, double d) {
        zzcj();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzag(i));
        }
        if (this.size < this.zztd.length) {
            System.arraycopy(this.zztd, i, this.zztd, i + 1, this.size - i);
        } else {
            double[] dArr = new double[(((this.size * 3) / 2) + 1)];
            System.arraycopy(this.zztd, 0, dArr, 0, i);
            System.arraycopy(this.zztd, i, dArr, i + 1, this.size - i);
            this.zztd = dArr;
        }
        this.zztd[i] = d;
        this.size++;
        this.modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, com.google.android.gms.internal.vision.zzef, java.util.Collection
    public final boolean addAll(Collection<? extends Double> collection) {
        zzcj();
        zzga.checkNotNull(collection);
        if (!(collection instanceof zzfh)) {
            return super.addAll(collection);
        }
        zzfh zzfh = (zzfh) collection;
        if (zzfh.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size >= zzfh.size) {
            int i = this.size + zzfh.size;
            if (i > this.zztd.length) {
                this.zztd = Arrays.copyOf(this.zztd, i);
            }
            System.arraycopy(zzfh.zztd, 0, this.zztd, this.size, zzfh.size);
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
            if (obj.equals(Double.valueOf(this.zztd[i]))) {
                System.arraycopy(this.zztd, i + 1, this.zztd, i, this.size - i);
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
    public final /* synthetic */ Double set(int i, Double d) {
        double doubleValue = d.doubleValue();
        zzcj();
        zzaf(i);
        double d2 = this.zztd[i];
        this.zztd[i] = doubleValue;
        return Double.valueOf(d2);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final /* synthetic */ Double remove(int i) {
        zzcj();
        zzaf(i);
        double d = this.zztd[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zztd, i + 1, this.zztd, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Double.valueOf(d);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final /* synthetic */ void add(int i, Double d) {
        zzc(i, d.doubleValue());
    }

    /* Return type fixed from 'com.google.android.gms.internal.vision.zzge' to match base method */
    @Override // com.google.android.gms.internal.vision.zzge
    public final /* synthetic */ zzge<Double> zzah(int i) {
        if (i >= this.size) {
            return new zzfh(Arrays.copyOf(this.zztd, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        zzaf(i);
        return Double.valueOf(this.zztd[i]);
    }

    static {
        zzfh zzfh = new zzfh();
        zztc = zzfh;
        zzfh.zzci();
    }
}
