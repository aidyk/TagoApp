package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzul extends zzuj<Boolean> implements zzwd<Boolean>, zzxp, RandomAccess {
    private static final zzul zzbus;
    private int size;
    private boolean[] zzbut;

    zzul() {
        this(new boolean[10], 0);
    }

    private zzul(boolean[] zArr, int i) {
        this.zzbut = zArr;
        this.size = i;
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzuh();
        if (i2 >= i) {
            System.arraycopy(this.zzbut, i2, this.zzbut, i, this.size - i2);
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
        if (!(obj instanceof zzul)) {
            return super.equals(obj);
        }
        zzul zzul = (zzul) obj;
        if (this.size != zzul.size) {
            return false;
        }
        boolean[] zArr = zzul.zzbut;
        for (int i = 0; i < this.size; i++) {
            if (this.zzbut[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzvz.zzu(this.zzbut[i2]);
        }
        return i;
    }

    public final int size() {
        return this.size;
    }

    public final void addBoolean(boolean z) {
        zza(this.size, z);
    }

    private final void zza(int i, boolean z) {
        zzuh();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzbut.length) {
            System.arraycopy(this.zzbut, i, this.zzbut, i + 1, this.size - i);
        } else {
            boolean[] zArr = new boolean[(((this.size * 3) / 2) + 1)];
            System.arraycopy(this.zzbut, 0, zArr, 0, i);
            System.arraycopy(this.zzbut, i, zArr, i + 1, this.size - i);
            this.zzbut = zArr;
        }
        this.zzbut[i] = z;
        this.size++;
        this.modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzuj
    public final boolean addAll(Collection<? extends Boolean> collection) {
        zzuh();
        zzvz.checkNotNull(collection);
        if (!(collection instanceof zzul)) {
            return super.addAll(collection);
        }
        zzul zzul = (zzul) collection;
        if (zzul.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size >= zzul.size) {
            int i = this.size + zzul.size;
            if (i > this.zzbut.length) {
                this.zzbut = Arrays.copyOf(this.zzbut, i);
            }
            System.arraycopy(zzul.zzbut, 0, this.zzbut, this.size, zzul.size);
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
            if (obj.equals(Boolean.valueOf(this.zzbut[i]))) {
                System.arraycopy(this.zzbut, i + 1, this.zzbut, i, this.size - i);
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
    public final /* synthetic */ Boolean set(int i, Boolean bool) {
        boolean booleanValue = bool.booleanValue();
        zzuh();
        zzai(i);
        boolean z = this.zzbut[i];
        this.zzbut[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ Boolean remove(int i) {
        zzuh();
        zzai(i);
        boolean z = this.zzbut[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzbut, i + 1, this.zzbut, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ void add(int i, Boolean bool) {
        zza(i, bool.booleanValue());
    }

    /* Return type fixed from 'com.google.android.gms.internal.measurement.zzwd' to match base method */
    @Override // com.google.android.gms.internal.measurement.zzwd
    public final /* synthetic */ zzwd<Boolean> zzak(int i) {
        if (i >= this.size) {
            return new zzul(Arrays.copyOf(this.zzbut, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        zzai(i);
        return Boolean.valueOf(this.zzbut[i]);
    }

    static {
        zzul zzul = new zzul();
        zzbus = zzul;
        zzul.zzsw();
    }
}
