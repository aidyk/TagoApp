package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzvu extends zzuj<Float> implements zzwd<Float>, zzxp, RandomAccess {
    private static final zzvu zzbzd;
    private int size;
    private float[] zzbze;

    zzvu() {
        this(new float[10], 0);
    }

    private zzvu(float[] fArr, int i) {
        this.zzbze = fArr;
        this.size = i;
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzuh();
        if (i2 >= i) {
            System.arraycopy(this.zzbze, i2, this.zzbze, i, this.size - i2);
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
        if (!(obj instanceof zzvu)) {
            return super.equals(obj);
        }
        zzvu zzvu = (zzvu) obj;
        if (this.size != zzvu.size) {
            return false;
        }
        float[] fArr = zzvu.zzbze;
        for (int i = 0; i < this.size; i++) {
            if (Float.floatToIntBits(this.zzbze[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.zzbze[i2]);
        }
        return i;
    }

    public final int size() {
        return this.size;
    }

    public final void zzc(float f) {
        zzc(this.size, f);
    }

    private final void zzc(int i, float f) {
        zzuh();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzbze.length) {
            System.arraycopy(this.zzbze, i, this.zzbze, i + 1, this.size - i);
        } else {
            float[] fArr = new float[(((this.size * 3) / 2) + 1)];
            System.arraycopy(this.zzbze, 0, fArr, 0, i);
            System.arraycopy(this.zzbze, i, fArr, i + 1, this.size - i);
            this.zzbze = fArr;
        }
        this.zzbze[i] = f;
        this.size++;
        this.modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzuj
    public final boolean addAll(Collection<? extends Float> collection) {
        zzuh();
        zzvz.checkNotNull(collection);
        if (!(collection instanceof zzvu)) {
            return super.addAll(collection);
        }
        zzvu zzvu = (zzvu) collection;
        if (zzvu.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size >= zzvu.size) {
            int i = this.size + zzvu.size;
            if (i > this.zzbze.length) {
                this.zzbze = Arrays.copyOf(this.zzbze, i);
            }
            System.arraycopy(zzvu.zzbze, 0, this.zzbze, this.size, zzvu.size);
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
            if (obj.equals(Float.valueOf(this.zzbze[i]))) {
                System.arraycopy(this.zzbze, i + 1, this.zzbze, i, this.size - i);
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
    public final /* synthetic */ Float set(int i, Float f) {
        float floatValue = f.floatValue();
        zzuh();
        zzai(i);
        float f2 = this.zzbze[i];
        this.zzbze[i] = floatValue;
        return Float.valueOf(f2);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ Float remove(int i) {
        zzuh();
        zzai(i);
        float f = this.zzbze[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzbze, i + 1, this.zzbze, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Float.valueOf(f);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ void add(int i, Float f) {
        zzc(i, f.floatValue());
    }

    /* Return type fixed from 'com.google.android.gms.internal.measurement.zzwd' to match base method */
    @Override // com.google.android.gms.internal.measurement.zzwd
    public final /* synthetic */ zzwd<Float> zzak(int i) {
        if (i >= this.size) {
            return new zzvu(Arrays.copyOf(this.zzbze, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        zzai(i);
        return Float.valueOf(this.zzbze[i]);
    }

    static {
        zzvu zzvu = new zzvu();
        zzbzd = zzvu;
        zzvu.zzsw();
    }
}
