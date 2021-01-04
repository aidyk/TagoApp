package io.realm;

import io.realm.internal.OsResults;
import io.realm.internal.UncheckedRow;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Locale;
import javax.annotation.Nullable;

public class OrderedRealmCollectionSnapshot<E> extends OrderedRealmCollectionImpl<E> {
    private int size = -1;

    @Override // io.realm.RealmCollection
    public boolean isLoaded() {
        return true;
    }

    @Override // io.realm.RealmCollection
    public boolean load() {
        return true;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.List, io.realm.OrderedRealmCollectionImpl, java.util.AbstractList
    @Deprecated
    public /* bridge */ /* synthetic */ void add(int i, Object obj) {
        super.add(i, obj);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.List, io.realm.OrderedRealmCollectionImpl, java.util.Collection, java.util.AbstractList
    @Deprecated
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // java.util.List, io.realm.OrderedRealmCollectionImpl, java.util.AbstractList
    @Deprecated
    public /* bridge */ /* synthetic */ boolean addAll(int i, Collection collection) {
        return super.addAll(i, collection);
    }

    @Override // java.util.AbstractCollection, java.util.List, io.realm.OrderedRealmCollectionImpl, java.util.Collection
    @Deprecated
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return super.addAll(collection);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ double average(String str) {
        return super.average(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl
    @Deprecated
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ boolean contains(@Nullable Object obj) {
        return super.contains(obj);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Object first() {
        return super.first();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Object first(@Nullable Object obj) {
        return super.first(obj);
    }

    @Override // java.util.List, io.realm.OrderedRealmCollectionImpl, java.util.AbstractList
    @Nullable
    public /* bridge */ /* synthetic */ Object get(int i) {
        return super.get(i);
    }

    @Override // io.realm.internal.ManagableObject, io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ boolean isManaged() {
        return super.isManaged();
    }

    @Override // io.realm.internal.ManagableObject, io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ boolean isValid() {
        return super.isValid();
    }

    @Override // java.util.AbstractCollection, java.util.List, io.realm.OrderedRealmCollectionImpl, java.util.Collection, java.util.AbstractList, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Object last() {
        return super.last();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Object last(@Nullable Object obj) {
        return super.last(obj);
    }

    @Override // java.util.List, io.realm.OrderedRealmCollectionImpl, java.util.AbstractList
    public /* bridge */ /* synthetic */ ListIterator listIterator() {
        return super.listIterator();
    }

    @Override // java.util.List, io.realm.OrderedRealmCollectionImpl, java.util.AbstractList
    public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
        return super.listIterator(i);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ Number max(String str) {
        return super.max(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Date maxDate(String str) {
        return super.maxDate(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ Number min(String str) {
        return super.min(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ Date minDate(String str) {
        return super.minDate(str);
    }

    @Override // java.util.List, io.realm.OrderedRealmCollectionImpl, java.util.AbstractList
    @Deprecated
    public /* bridge */ /* synthetic */ Object remove(int i) {
        return super.remove(i);
    }

    @Override // java.util.List, io.realm.OrderedRealmCollectionImpl
    @Deprecated
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.List, io.realm.OrderedRealmCollectionImpl, java.util.Collection
    @Deprecated
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.List, io.realm.OrderedRealmCollectionImpl, java.util.Collection
    @Deprecated
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.List, io.realm.OrderedRealmCollectionImpl, java.util.AbstractList
    @Deprecated
    public /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        return super.set(i, obj);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ Number sum(String str) {
        return super.sum(str);
    }

    OrderedRealmCollectionSnapshot(BaseRealm baseRealm, OsResults osResults, Class<E> cls) {
        super(baseRealm, osResults.createSnapshot(), cls);
    }

    OrderedRealmCollectionSnapshot(BaseRealm baseRealm, OsResults osResults, String str) {
        super(baseRealm, osResults.createSnapshot(), str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl
    public int size() {
        if (this.size == -1) {
            this.size = super.size();
        }
        return this.size;
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str) {
        throw getUnsupportedException("sort");
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str, Sort sort) {
        throw getUnsupportedException("sort");
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str, Sort sort, String str2, Sort sort2) {
        throw getUnsupportedException("sort");
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String[] strArr, Sort[] sortArr) {
        throw getUnsupportedException("sort");
    }

    @Override // io.realm.RealmCollection
    @Deprecated
    public RealmQuery<E> where() {
        throw getUnsupportedException("where");
    }

    private UnsupportedOperationException getUnsupportedException(String str) {
        return new UnsupportedOperationException(String.format(Locale.US, "'%s()' is not supported by OrderedRealmCollectionSnapshot. Call '%s()' on the original 'RealmCollection' instead.", str, str));
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public OrderedRealmCollectionSnapshot<E> createSnapshot() {
        this.realm.checkIfValid();
        return this;
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public void deleteFromRealm(int i) {
        this.realm.checkIfValidAndInTransaction();
        if (this.osResults.getUncheckedRow(i).isAttached()) {
            this.osResults.delete((long) i);
        }
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public boolean deleteFirstFromRealm() {
        this.realm.checkIfValidAndInTransaction();
        UncheckedRow firstUncheckedRow = this.osResults.firstUncheckedRow();
        return firstUncheckedRow != null && firstUncheckedRow.isAttached() && this.osResults.deleteFirst();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public boolean deleteLastFromRealm() {
        this.realm.checkIfValidAndInTransaction();
        UncheckedRow lastUncheckedRow = this.osResults.lastUncheckedRow();
        return lastUncheckedRow != null && lastUncheckedRow.isAttached() && this.osResults.deleteLast();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public boolean deleteAllFromRealm() {
        return super.deleteAllFromRealm();
    }
}
