package io.realm;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.realm.internal.InvalidRow;
import io.realm.internal.OsResults;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.SortDescriptor;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Locale;
import javax.annotation.Nullable;

/* access modifiers changed from: package-private */
public abstract class OrderedRealmCollectionImpl<E> extends AbstractList<E> implements OrderedRealmCollection<E> {
    private static final String NOT_SUPPORTED_MESSAGE = "This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.";
    @Nullable
    final String className;
    @Nullable
    final Class<E> classSpec;
    @SuppressFBWarnings({"SS_SHOULD_BE_STATIC"})
    final boolean forValues;
    final OsResults osResults;
    final BaseRealm realm;

    @Override // io.realm.internal.ManagableObject, io.realm.RealmCollection
    public boolean isManaged() {
        return true;
    }

    OrderedRealmCollectionImpl(BaseRealm baseRealm, OsResults osResults2, Class<E> cls) {
        this(baseRealm, osResults2, cls, null);
    }

    OrderedRealmCollectionImpl(BaseRealm baseRealm, OsResults osResults2, String str) {
        this(baseRealm, osResults2, null, str);
    }

    private OrderedRealmCollectionImpl(BaseRealm baseRealm, OsResults osResults2, @Nullable Class<E> cls, @Nullable String str) {
        this.forValues = false;
        this.realm = baseRealm;
        this.osResults = osResults2;
        this.classSpec = cls;
        this.className = str;
    }

    /* access modifiers changed from: package-private */
    public Table getTable() {
        return this.osResults.getTable();
    }

    /* access modifiers changed from: package-private */
    public OsResults getOsResults() {
        return this.osResults;
    }

    @Override // io.realm.internal.ManagableObject, io.realm.RealmCollection
    public boolean isValid() {
        return this.osResults.isValid();
    }

    @Override // io.realm.RealmCollection
    public boolean contains(@Nullable Object obj) {
        if (!isLoaded() || ((obj instanceof RealmObjectProxy) && ((RealmObjectProxy) obj).realmGet$proxyState().getRow$realm() == InvalidRow.INSTANCE)) {
            return false;
        }
        Iterator<E> it2 = iterator();
        while (it2.hasNext()) {
            if (it2.next().equals(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.List, java.util.AbstractList
    @Nullable
    public E get(int i) {
        this.realm.checkIfValid();
        return (E) this.realm.get(this.classSpec, this.className, this.osResults.getUncheckedRow(i));
    }

    @Override // io.realm.OrderedRealmCollection
    @Nullable
    public E first() {
        return firstImpl(true, null);
    }

    @Override // io.realm.OrderedRealmCollection
    @Nullable
    public E first(@Nullable E e) {
        return firstImpl(false, e);
    }

    @Nullable
    private E firstImpl(boolean z, @Nullable E e) {
        UncheckedRow firstUncheckedRow = this.osResults.firstUncheckedRow();
        if (firstUncheckedRow != null) {
            return (E) this.realm.get(this.classSpec, this.className, firstUncheckedRow);
        }
        if (!z) {
            return e;
        }
        throw new IndexOutOfBoundsException("No results were found.");
    }

    @Override // io.realm.OrderedRealmCollection
    @Nullable
    public E last() {
        return lastImpl(true, null);
    }

    @Override // io.realm.OrderedRealmCollection
    @Nullable
    public E last(@Nullable E e) {
        return lastImpl(false, e);
    }

    @Nullable
    private E lastImpl(boolean z, @Nullable E e) {
        UncheckedRow lastUncheckedRow = this.osResults.lastUncheckedRow();
        if (lastUncheckedRow != null) {
            return (E) this.realm.get(this.classSpec, this.className, lastUncheckedRow);
        }
        if (!z) {
            return e;
        }
        throw new IndexOutOfBoundsException("No results were found.");
    }

    @Override // io.realm.OrderedRealmCollection
    public void deleteFromRealm(int i) {
        this.realm.checkIfValidAndInTransaction();
        this.osResults.delete((long) i);
    }

    @Override // io.realm.RealmCollection
    public boolean deleteAllFromRealm() {
        this.realm.checkIfValid();
        if (size() <= 0) {
            return false;
        }
        this.osResults.clear();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, java.lang.Iterable
    public Iterator<E> iterator() {
        return new RealmCollectionIterator();
    }

    @Override // java.util.List, java.util.AbstractList
    public ListIterator<E> listIterator() {
        return new RealmCollectionListIterator(0);
    }

    @Override // java.util.List, java.util.AbstractList
    public ListIterator<E> listIterator(int i) {
        return new RealmCollectionListIterator(i);
    }

    private long getColumnIndexForSort(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Non-empty field name required.");
        } else if (!str.contains(".")) {
            long columnIndex = this.osResults.getTable().getColumnIndex(str);
            if (columnIndex >= 0) {
                return columnIndex;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "Field '%s' does not exist.", str));
        } else {
            throw new IllegalArgumentException("Aggregates on child object fields are not supported: " + str);
        }
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str) {
        return createLoadedResults(this.osResults.sort(SortDescriptor.getInstanceForSort(getSchemaConnector(), this.osResults.getTable(), str, Sort.ASCENDING)));
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str, Sort sort) {
        return createLoadedResults(this.osResults.sort(SortDescriptor.getInstanceForSort(getSchemaConnector(), this.osResults.getTable(), str, sort)));
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String[] strArr, Sort[] sortArr) {
        return createLoadedResults(this.osResults.sort(SortDescriptor.getInstanceForSort(getSchemaConnector(), this.osResults.getTable(), strArr, sortArr)));
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str, Sort sort, String str2, Sort sort2) {
        return sort(new String[]{str, str2}, new Sort[]{sort, sort2});
    }

    public int size() {
        if (!isLoaded()) {
            return 0;
        }
        long size = this.osResults.size();
        if (size > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) size;
    }

    @Override // io.realm.RealmCollection
    public Number min(String str) {
        this.realm.checkIfValid();
        return this.osResults.aggregateNumber(OsResults.Aggregate.MINIMUM, getColumnIndexForSort(str));
    }

    @Override // io.realm.RealmCollection
    public Date minDate(String str) {
        this.realm.checkIfValid();
        return this.osResults.aggregateDate(OsResults.Aggregate.MINIMUM, getColumnIndexForSort(str));
    }

    @Override // io.realm.RealmCollection
    public Number max(String str) {
        this.realm.checkIfValid();
        return this.osResults.aggregateNumber(OsResults.Aggregate.MAXIMUM, getColumnIndexForSort(str));
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Date maxDate(String str) {
        this.realm.checkIfValid();
        return this.osResults.aggregateDate(OsResults.Aggregate.MAXIMUM, getColumnIndexForSort(str));
    }

    @Override // io.realm.RealmCollection
    public Number sum(String str) {
        this.realm.checkIfValid();
        return this.osResults.aggregateNumber(OsResults.Aggregate.SUM, getColumnIndexForSort(str));
    }

    @Override // io.realm.RealmCollection
    public double average(String str) {
        this.realm.checkIfValid();
        return this.osResults.aggregateNumber(OsResults.Aggregate.AVERAGE, getColumnIndexForSort(str)).doubleValue();
    }

    @Override // java.util.List, java.util.AbstractList
    @Deprecated
    public E remove(int i) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.List
    @Deprecated
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    @Deprecated
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.List, java.util.AbstractList
    @Deprecated
    public E set(int i, E e) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    @Deprecated
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // io.realm.OrderedRealmCollection
    public boolean deleteLastFromRealm() {
        this.realm.checkIfValidAndInTransaction();
        return this.osResults.deleteLast();
    }

    @Override // io.realm.OrderedRealmCollection
    public boolean deleteFirstFromRealm() {
        this.realm.checkIfValidAndInTransaction();
        return this.osResults.deleteFirst();
    }

    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList
    @Deprecated
    public boolean add(E e) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.List, java.util.AbstractList
    @Deprecated
    public void add(int i, E e) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.List, java.util.AbstractList
    @Deprecated
    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    @Deprecated
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    /* access modifiers changed from: private */
    public class RealmCollectionIterator extends OsResults.Iterator<E> {
        RealmCollectionIterator() {
            super(OrderedRealmCollectionImpl.this.osResults);
        }

        /* access modifiers changed from: protected */
        @Override // io.realm.internal.OsResults.Iterator
        public E convertRowToObject(UncheckedRow uncheckedRow) {
            return (E) OrderedRealmCollectionImpl.this.realm.get(OrderedRealmCollectionImpl.this.classSpec, OrderedRealmCollectionImpl.this.className, uncheckedRow);
        }
    }

    @Override // io.realm.OrderedRealmCollection
    public OrderedRealmCollectionSnapshot<E> createSnapshot() {
        if (this.className != null) {
            return new OrderedRealmCollectionSnapshot<>(this.realm, this.osResults, this.className);
        }
        return new OrderedRealmCollectionSnapshot<>(this.realm, this.osResults, this.classSpec);
    }

    /* access modifiers changed from: private */
    public class RealmCollectionListIterator extends OsResults.ListIterator<E> {
        RealmCollectionListIterator(int i) {
            super(OrderedRealmCollectionImpl.this.osResults, i);
        }

        /* access modifiers changed from: protected */
        @Override // io.realm.internal.OsResults.Iterator
        public E convertRowToObject(UncheckedRow uncheckedRow) {
            return (E) OrderedRealmCollectionImpl.this.realm.get(OrderedRealmCollectionImpl.this.classSpec, OrderedRealmCollectionImpl.this.className, uncheckedRow);
        }
    }

    /* access modifiers changed from: package-private */
    public RealmResults<E> createLoadedResults(OsResults osResults2) {
        RealmResults<E> realmResults;
        if (this.className != null) {
            realmResults = new RealmResults<>(this.realm, osResults2, this.className);
        } else {
            realmResults = new RealmResults<>(this.realm, osResults2, this.classSpec);
        }
        realmResults.load();
        return realmResults;
    }

    private SchemaConnector getSchemaConnector() {
        return new SchemaConnector(this.realm.getSchema());
    }
}
