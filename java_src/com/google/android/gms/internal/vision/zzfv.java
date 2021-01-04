package com.google.android.gms.internal.vision;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzfv extends zzef<Float> implements zzge<Float>, zzhr, RandomAccess {
    private static final zzfv zzwf;
    private int size;
    private float[] zzwg;

    zzfv() {
        this(new float[10], 0);
    }

    private zzfv(float[] fArr, int i) {
        this.zzwg = fArr;
        this.size = i;
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzcj();
        if (i2 >= i) {
            System.arraycopy(this.zzwg, i2, this.zzwg, i, this.size - i2);
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
        if (!(obj instanceof zzfv)) {
            return super.equals(obj);
        }
        zzfv zzfv = (zzfv) obj;
        if (this.size != zzfv.size) {
            return false;
        }
        float[] fArr = zzfv.zzwg;
        for (int i = 0; i < this.size; i++) {
            if (Float.floatToIntBits(this.zzwg[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.zzef
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.zzwg[i2]);
        }
        return i;
    }

    public final int size() {
        return this.size;
    }

    public final void zzh(float f) {
        zzc(this.size, f);
    }

    private final void zzc(int i, float f) {
        zzcj();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzag(i));
        }
        if (this.size < this.zzwg.length) {
            System.arraycopy(this.zzwg, i, this.zzwg, i + 1, this.size - i);
        } else {
            float[] fArr = new float[(((this.size * 3) / 2) + 1)];
            System.arraycopy(this.zzwg, 0, fArr, 0, i);
            System.arraycopy(this.zzwg, i, fArr, i + 1, this.size - i);
            this.zzwg = fArr;
        }
        this.zzwg[i] = f;
        this.size++;
        this.modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, com.google.android.gms.internal.vision.zzef, java.util.Collection
    public final boolean addAll(Collection<? extends Float> collection) {
        zzcj();
        zzga.checkNotNull(collection);
        if (!(collection instanceof zzfv)) {
            return super.addAll(collection);
        }
        zzfv zzfv = (zzfv) collection;
        if (zzfv.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size >= zzfv.size) {
            int i = this.size + zzfv.size;
            if (i > this.zzwg.length) {
                this.zzwg = Arrays.copyOf(this.zzwg, i);
            }
            System.arraycopy(zzfv.zzwg, 0, this.zzwg, this.size, zzfv.size);
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
            if (obj.equals(Float.valueOf(this.zzwg[i]))) {
                System.arraycopy(this.zzwg, i + 1, this.zzwg, i, this.size - i);
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
    public final /* synthetic */ Float set(int i, Float f) {
        float floatValue = f.floatValue();
        zzcj();
        zzaf(i);
        float f2 = this.zzwg[i];
        this.zzwg[i] = floatValue;
        return Float.valueOf(f2);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final /* synthetic */ Float remove(int i) {
        zzcj();
        zzaf(i);
        float f = this.zzwg[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzwg, i + 1, this.zzwg, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Float.valueOf(f);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final /* synthetic */ void add(int i, Float f) {
        zzc(i, f.floatValue());
    }

    /* Return type fixed from 'com.google.android.gms.internal.vision.zzge' to match base method */
    @Override // com.google.android.gms.internal.vision.zzge
    public final /* synthetic */ zzge<Float> zzah(int i) {
        if (i >= this.size) {
            return new zzfv(Arrays.copyOf(this.zzwg, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        zzaf(i);
        return Float.valueOf(this.zzwg[i]);
    }

    static {
        zzfv zzfv = new zzfv();
        zzwf = zzfv;
        zzfv.zzci();
    }
}
