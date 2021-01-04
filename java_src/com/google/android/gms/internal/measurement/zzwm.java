package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class zzwm extends zzuj<String> implements zzwn, RandomAccess {
    private static final zzwm zzcbb;
    private static final zzwn zzcbc = zzcbb;
    private final List<Object> zzcbd;

    public zzwm() {
        this(10);
    }

    public zzwm(int i) {
        this(new ArrayList(i));
    }

    private zzwm(ArrayList<Object> arrayList) {
        this.zzcbd = arrayList;
    }

    public final int size() {
        return this.zzcbd.size();
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzuj
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zzuh();
        if (collection instanceof zzwn) {
            collection = ((zzwn) collection).zzxi();
        }
        boolean addAll = this.zzcbd.addAll(i, collection);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj
    public final void clear() {
        zzuh();
        this.zzcbd.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final void zzc(zzun zzun) {
        zzuh();
        this.zzcbd.add(zzun);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final Object zzbo(int i) {
        return this.zzcbd.get(i);
    }

    private static String zzaa(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzun) {
            return ((zzun) obj).zzuk();
        }
        return zzvz.zzm((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final List<?> zzxi() {
        return Collections.unmodifiableList(this.zzcbd);
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final zzwn zzxj() {
        return zzug() ? new zzyp(this) : this;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ String set(int i, String str) {
        zzuh();
        return zzaa(this.zzcbd.set(i, str));
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzuj
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzuj
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // java.util.List, com.google.android.gms.internal.measurement.zzuj
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ String remove(int i) {
        zzuh();
        Object remove = this.zzcbd.remove(i);
        this.modCount++;
        return zzaa(remove);
    }

    @Override // com.google.android.gms.internal.measurement.zzwd, com.google.android.gms.internal.measurement.zzuj
    public final /* bridge */ /* synthetic */ boolean zzug() {
        return super.zzug();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.measurement.zzuj
    public final /* synthetic */ void add(int i, String str) {
        zzuh();
        this.zzcbd.add(i, str);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.zzuj
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    public final /* synthetic */ zzwd zzak(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.zzcbd);
            return new zzwm(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        Object obj = this.zzcbd.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzun) {
            zzun zzun = (zzun) obj;
            String zzuk = zzun.zzuk();
            if (zzun.zzul()) {
                this.zzcbd.set(i, zzuk);
            }
            return zzuk;
        }
        byte[] bArr = (byte[]) obj;
        String zzm = zzvz.zzm(bArr);
        if (zzvz.zzl(bArr)) {
            this.zzcbd.set(i, zzm);
        }
        return zzm;
    }

    static {
        zzwm zzwm = new zzwm();
        zzcbb = zzwm;
        zzwm.zzsw();
    }
}
