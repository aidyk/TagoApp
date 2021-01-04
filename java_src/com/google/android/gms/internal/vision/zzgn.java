package com.google.android.gms.internal.vision;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class zzgn extends zzef<String> implements zzgo, RandomAccess {
    private static final zzgn zzyk;
    private static final zzgo zzyl = zzyk;
    private final List<Object> zzym;

    public zzgn() {
        this(10);
    }

    public zzgn(int i) {
        this(new ArrayList(i));
    }

    private zzgn(ArrayList<Object> arrayList) {
        this.zzym = arrayList;
    }

    public final int size() {
        return this.zzym.size();
    }

    @Override // java.util.AbstractCollection, java.util.List, com.google.android.gms.internal.vision.zzef, java.util.Collection
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zzcj();
        if (collection instanceof zzgo) {
            collection = ((zzgo) collection).zzft();
        }
        boolean addAll = this.zzym.addAll(i, collection);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.vision.zzef
    public final void clear() {
        zzcj();
        this.zzym.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.vision.zzgo
    public final void zzc(zzeo zzeo) {
        zzcj();
        this.zzym.add(zzeo);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.vision.zzgo
    public final Object getRaw(int i) {
        return this.zzym.get(i);
    }

    private static String zzh(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzeo) {
            return ((zzeo) obj).zzdk();
        }
        return zzga.zzj((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.vision.zzgo
    public final List<?> zzft() {
        return Collections.unmodifiableList(this.zzym);
    }

    @Override // com.google.android.gms.internal.vision.zzgo
    public final zzgo zzfu() {
        return zzch() ? new zzir(this) : this;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final /* synthetic */ String set(int i, String str) {
        zzcj();
        return zzh(this.zzym.set(i, str));
    }

    @Override // java.util.AbstractCollection, java.util.List, com.google.android.gms.internal.vision.zzef, java.util.Collection
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.List, com.google.android.gms.internal.vision.zzef, java.util.Collection
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // java.util.List, com.google.android.gms.internal.vision.zzef
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final /* synthetic */ String remove(int i) {
        zzcj();
        Object remove = this.zzym.remove(i);
        this.modCount++;
        return zzh(remove);
    }

    @Override // com.google.android.gms.internal.vision.zzef, com.google.android.gms.internal.vision.zzge
    public final /* bridge */ /* synthetic */ boolean zzch() {
        return super.zzch();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.vision.zzef, java.util.AbstractList
    public final /* synthetic */ void add(int i, String str) {
        zzcj();
        this.zzym.add(i, str);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.vision.zzef
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.vision.zzef
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.android.gms.internal.vision.zzge
    public final /* synthetic */ zzge zzah(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.zzym);
            return new zzgn(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        Object obj = this.zzym.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzeo) {
            zzeo zzeo = (zzeo) obj;
            String zzdk = zzeo.zzdk();
            if (zzeo.zzdl()) {
                this.zzym.set(i, zzdk);
            }
            return zzdk;
        }
        byte[] bArr = (byte[]) obj;
        String zzj = zzga.zzj(bArr);
        if (zzga.zzi(bArr)) {
            this.zzym.set(i, zzj);
        }
        return zzj;
    }

    static {
        zzgn zzgn = new zzgn();
        zzyk = zzgn;
        zzgn.zzci();
    }
}
