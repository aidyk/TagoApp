package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzvy extends zzuj<Integer> implements zzwd<Integer>, zzxp, RandomAccess {
    private static final zzvy zzcac;
    private int size;
    private int[] zzcad;

    zzvy() {
        this(new int[10], 0);
    }

    private zzvy(int[] iArr, int i) {
        this.zzcad = iArr;
        this.size = i;
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzuh();
        if (i2 >= i) {
            System.arraycopy(this.zzcad, i2, this.zzcad, i, this.size - i2);
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
        if (!(obj instanceof zzvy)) {
            return super.equals(obj);
        }
        zzvy zzvy = (zzvy) obj;
        if (this.size != zzvy.size) {
            return false;
        }
        int[] iArr = zzvy.zzcad;
        for (int i = 0; i < this.size; i++) {
            if (this.zzcad[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + this.zzcad[i2];
        }
        return i;
    }

    public final int getInt(int i) {
        zzai(i);
        return this.zzcad[i];
    }

    public final int size() {
        return this.size;
    }

    public final void zzbn(int i) {
        zzp(this.size, i);
    }

    private final void zzp(int i, int i2) {
        zzuh();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzcad.length) {
            System.arraycopy(this.zzcad, i, this.zzcad, i + 1, this.size - i);
        } else {
            int[] iArr = new int[(((this.size * 3) / 2) + 1)];
            System.arraycopy(this.zzcad, 0, iArr, 0, i);
            System.arraycopy(this.zzcad, i, iArr, i + 1, this.size - i);
            this.zzcad = iArr;
        }
        this.zzcad[i] = i2;
        this.size++;
        this.modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzuj
    public final boolean addAll(Collection<? extends Integer> collection) {
        zzuh();
        zzvz.checkNotNull(collection);
        if (!(collection instanceof zzvy)) {
            return super.addAll(collection);
        }
        zzvy zzvy = (zzvy) collection;
        if (zzvy.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size >= zzvy.size) {
            int i = this.size + zzvy.size;
            if (i > this.zzcad.length) {
                this.zzcad = Arrays.copyOf(this.zzcad, i);
            }
            System.arraycopy(zzvy.zzcad, 0, this.zzcad, this.size, zzvy.size);
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
            if (obj.equals(Integer.valueOf(this.zzcad[i]))) {
                System.arraycopy(this.zzcad, i + 1, this.zzcad, i, this.size - i);
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
    public final /* synthetic */ Integer set(int i, Integer num) {
        int intValue = num.intValue();
        zzuh();
        zzai(i);
        int i2 = this.zzcad[i];
        this.zzcad[i] = intValue;
        return Integer.valueOf(i2);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ Integer remove(int i) {
        zzuh();
        zzai(i);
        int i2 = this.zzcad[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzcad, i + 1, this.zzcad, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ void add(int i, Integer num) {
        zzp(i, num.intValue());
    }

    /* Return type fixed from 'com.google.android.gms.internal.measurement.zzwd' to match base method */
    @Override // com.google.android.gms.internal.measurement.zzwd
    public final /* synthetic */ zzwd<Integer> zzak(int i) {
        if (i >= this.size) {
            return new zzvy(Arrays.copyOf(this.zzcad, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    static {
        zzvy zzvy = new zzvy();
        zzcac = zzvy;
        zzvy.zzsw();
    }
}
