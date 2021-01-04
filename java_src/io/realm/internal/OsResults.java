package io.realm.internal;

import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.RealmChangeListener;
import io.realm.internal.ObservableCollection;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

public class OsResults implements NativeObject, ObservableCollection {
    public static final byte AGGREGATE_FUNCTION_AVERAGE = 3;
    public static final byte AGGREGATE_FUNCTION_MAXIMUM = 2;
    public static final byte AGGREGATE_FUNCTION_MINIMUM = 1;
    public static final byte AGGREGATE_FUNCTION_SUM = 4;
    private static final String CLOSED_REALM_MESSAGE = "This Realm instance has already been closed, making it unusable.";
    public static final byte MODE_EMPTY = 0;
    public static final byte MODE_LINKVIEW = 3;
    public static final byte MODE_QUERY = 2;
    public static final byte MODE_TABLE = 1;
    public static final byte MODE_TABLEVIEW = 4;
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final NativeContext context;
    private boolean isSnapshot = false;
    protected boolean loaded;
    private final long nativePtr;
    protected final ObserverPairList<ObservableCollection.CollectionObserverPair> observerPairs = new ObserverPairList<>();
    private final OsSharedRealm sharedRealm;
    private final Table table;

    private static native Object nativeAggregate(long j, long j2, byte b);

    private static native void nativeClear(long j);

    private static native boolean nativeContains(long j, long j2);

    protected static native long nativeCreateResults(long j, long j2, @Nullable SortDescriptor sortDescriptor, @Nullable SortDescriptor sortDescriptor2);

    private static native long nativeCreateResultsFromBacklinks(long j, long j2, long j3, long j4);

    private static native long nativeCreateSnapshot(long j);

    private static native void nativeDelete(long j, long j2);

    private static native boolean nativeDeleteFirst(long j);

    private static native boolean nativeDeleteLast(long j);

    private static native long nativeDistinct(long j, SortDescriptor sortDescriptor);

    private static native void nativeEvaluateQueryIfNeeded(long j, boolean z);

    private static native long nativeFirstRow(long j);

    private static native long nativeGetFinalizerPtr();

    private static native byte nativeGetMode(long j);

    private static native long nativeGetRow(long j, int i);

    private static native long nativeIndexOf(long j, long j2);

    private static native boolean nativeIsValid(long j);

    private static native long nativeLastRow(long j);

    private static native long nativeSize(long j);

    private static native long nativeSort(long j, SortDescriptor sortDescriptor);

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    private static native long nativeWhere(long j);

    public static abstract class Iterator<T> implements java.util.Iterator<T> {
        OsResults iteratorOsResults;
        protected int pos = -1;

        /* access modifiers changed from: protected */
        public abstract T convertRowToObject(UncheckedRow uncheckedRow);

        public Iterator(OsResults osResults) {
            if (!osResults.sharedRealm.isClosed()) {
                this.iteratorOsResults = osResults;
                if (!osResults.isSnapshot) {
                    if (osResults.sharedRealm.isInTransaction()) {
                        detach();
                    } else {
                        this.iteratorOsResults.sharedRealm.addIterator(this);
                    }
                }
            } else {
                throw new IllegalStateException(OsResults.CLOSED_REALM_MESSAGE);
            }
        }

        public boolean hasNext() {
            checkValid();
            return ((long) (this.pos + 1)) < this.iteratorOsResults.size();
        }

        @Override // java.util.Iterator
        @Nullable
        public T next() {
            checkValid();
            this.pos++;
            if (((long) this.pos) < this.iteratorOsResults.size()) {
                return get(this.pos);
            }
            throw new NoSuchElementException("Cannot access index " + this.pos + " when size is " + this.iteratorOsResults.size() + ". Remember to check hasNext() before using next().");
        }

        @Deprecated
        public void remove() {
            throw new UnsupportedOperationException("remove() is not supported by RealmResults iterators.");
        }

        /* access modifiers changed from: package-private */
        public void detach() {
            this.iteratorOsResults = this.iteratorOsResults.createSnapshot();
        }

        /* access modifiers changed from: package-private */
        public void invalidate() {
            this.iteratorOsResults = null;
        }

        /* access modifiers changed from: package-private */
        public void checkValid() {
            if (this.iteratorOsResults == null) {
                throw new ConcurrentModificationException("No outside changes to a Realm is allowed while iterating a living Realm collection.");
            }
        }

        /* access modifiers changed from: package-private */
        @Nullable
        public T get(int i) {
            return convertRowToObject(this.iteratorOsResults.getUncheckedRow(i));
        }
    }

    public static abstract class ListIterator<T> extends Iterator<T> implements java.util.ListIterator<T> {
        public ListIterator(OsResults osResults, int i) {
            super(osResults);
            if (i < 0 || ((long) i) > this.iteratorOsResults.size()) {
                throw new IndexOutOfBoundsException("Starting location must be a valid index: [0, " + (this.iteratorOsResults.size() - 1) + "]. Yours was " + i);
            }
            this.pos = i - 1;
        }

        @Override // java.util.ListIterator
        @Deprecated
        public void add(@Nullable T t) {
            throw new UnsupportedOperationException("Adding an element is not supported. Use Realm.createObject() instead.");
        }

        public boolean hasPrevious() {
            checkValid();
            return this.pos >= 0;
        }

        public int nextIndex() {
            checkValid();
            return this.pos + 1;
        }

        @Override // java.util.ListIterator
        @Nullable
        public T previous() {
            checkValid();
            try {
                this.pos--;
                return get(this.pos);
            } catch (IndexOutOfBoundsException unused) {
                throw new NoSuchElementException("Cannot access index less than zero. This was " + this.pos + ". Remember to check hasPrevious() before using previous().");
            }
        }

        public int previousIndex() {
            checkValid();
            return this.pos;
        }

        @Override // java.util.ListIterator
        @Deprecated
        public void set(@Nullable T t) {
            throw new UnsupportedOperationException("Replacing an element is not supported.");
        }
    }

    public enum Aggregate {
        MINIMUM((byte) 1),
        MAXIMUM((byte) 2),
        AVERAGE((byte) 3),
        SUM((byte) 4);
        
        private final byte value;

        private Aggregate(byte b) {
            this.value = b;
        }

        public byte getValue() {
            return this.value;
        }
    }

    public enum Mode {
        EMPTY,
        TABLE,
        QUERY,
        LINKVIEW,
        TABLEVIEW;

        static Mode getByValue(byte b) {
            switch (b) {
                case 0:
                    return EMPTY;
                case 1:
                    return TABLE;
                case 2:
                    return QUERY;
                case 3:
                    return LINKVIEW;
                case 4:
                    return TABLEVIEW;
                default:
                    throw new IllegalArgumentException("Invalid value: " + ((int) b));
            }
        }
    }

    public static OsResults createForBacklinks(OsSharedRealm osSharedRealm, UncheckedRow uncheckedRow, Table table2, String str) {
        return new OsResults(osSharedRealm, table2, nativeCreateResultsFromBacklinks(osSharedRealm.getNativePtr(), uncheckedRow.getNativePtr(), table2.getNativePtr(), table2.getColumnIndex(str)));
    }

    public static OsResults createFromQuery(OsSharedRealm osSharedRealm, TableQuery tableQuery, @Nullable SortDescriptor sortDescriptor, @Nullable SortDescriptor sortDescriptor2) {
        tableQuery.validateQuery();
        return new OsResults(osSharedRealm, tableQuery.getTable(), nativeCreateResults(osSharedRealm.getNativePtr(), tableQuery.getNativePtr(), sortDescriptor, sortDescriptor2));
    }

    public static OsResults createFromQuery(OsSharedRealm osSharedRealm, TableQuery tableQuery) {
        return createFromQuery(osSharedRealm, tableQuery, null, null);
    }

    OsResults(OsSharedRealm osSharedRealm, Table table2, long j) {
        boolean z = false;
        this.sharedRealm = osSharedRealm;
        this.context = osSharedRealm.context;
        this.table = table2;
        this.nativePtr = j;
        this.context.addReference(this);
        this.loaded = getMode() != Mode.QUERY ? true : z;
    }

    public OsResults createSnapshot() {
        if (this.isSnapshot) {
            return this;
        }
        OsResults osResults = new OsResults(this.sharedRealm, this.table, nativeCreateSnapshot(this.nativePtr));
        osResults.isSnapshot = true;
        return osResults;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public UncheckedRow getUncheckedRow(int i) {
        return this.table.getUncheckedRowByPointer(nativeGetRow(this.nativePtr, i));
    }

    public UncheckedRow firstUncheckedRow() {
        long nativeFirstRow = nativeFirstRow(this.nativePtr);
        if (nativeFirstRow != 0) {
            return this.table.getUncheckedRowByPointer(nativeFirstRow);
        }
        return null;
    }

    public UncheckedRow lastUncheckedRow() {
        long nativeLastRow = nativeLastRow(this.nativePtr);
        if (nativeLastRow != 0) {
            return this.table.getUncheckedRowByPointer(nativeLastRow);
        }
        return null;
    }

    public Table getTable() {
        return this.table;
    }

    public TableQuery where() {
        return new TableQuery(this.context, this.table, nativeWhere(this.nativePtr));
    }

    public Number aggregateNumber(Aggregate aggregate, long j) {
        return (Number) nativeAggregate(this.nativePtr, j, aggregate.getValue());
    }

    public Date aggregateDate(Aggregate aggregate, long j) {
        return (Date) nativeAggregate(this.nativePtr, j, aggregate.getValue());
    }

    public long size() {
        return nativeSize(this.nativePtr);
    }

    public void clear() {
        nativeClear(this.nativePtr);
    }

    public OsResults sort(SortDescriptor sortDescriptor) {
        return new OsResults(this.sharedRealm, this.table, nativeSort(this.nativePtr, sortDescriptor));
    }

    public OsResults distinct(SortDescriptor sortDescriptor) {
        return new OsResults(this.sharedRealm, this.table, nativeDistinct(this.nativePtr, sortDescriptor));
    }

    public boolean contains(UncheckedRow uncheckedRow) {
        return nativeContains(this.nativePtr, uncheckedRow.getNativePtr());
    }

    public int indexOf(UncheckedRow uncheckedRow) {
        long nativeIndexOf = nativeIndexOf(this.nativePtr, uncheckedRow.getNativePtr());
        if (nativeIndexOf > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) nativeIndexOf;
    }

    public void delete(long j) {
        nativeDelete(this.nativePtr, j);
    }

    public boolean deleteFirst() {
        return nativeDeleteFirst(this.nativePtr);
    }

    public boolean deleteLast() {
        return nativeDeleteLast(this.nativePtr);
    }

    public <T> void addListener(T t, OrderedRealmCollectionChangeListener<T> orderedRealmCollectionChangeListener) {
        if (this.observerPairs.isEmpty()) {
            nativeStartListening(this.nativePtr);
        }
        this.observerPairs.add(new ObservableCollection.CollectionObserverPair(t, orderedRealmCollectionChangeListener));
    }

    public <T> void addListener(T t, RealmChangeListener<T> realmChangeListener) {
        addListener(t, new ObservableCollection.RealmChangeListenerWrapper(realmChangeListener));
    }

    public <T> void removeListener(T t, OrderedRealmCollectionChangeListener<T> orderedRealmCollectionChangeListener) {
        this.observerPairs.remove(t, orderedRealmCollectionChangeListener);
        if (this.observerPairs.isEmpty()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public <T> void removeListener(T t, RealmChangeListener<T> realmChangeListener) {
        removeListener(t, new ObservableCollection.RealmChangeListenerWrapper(realmChangeListener));
    }

    public void removeAllListeners() {
        this.observerPairs.clear();
        nativeStopListening(this.nativePtr);
    }

    public boolean isValid() {
        return nativeIsValid(this.nativePtr);
    }

    @Override // io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long j) {
        OsCollectionChangeSet osCollectionChangeSet;
        if (j == 0) {
            osCollectionChangeSet = new EmptyLoadChangeSet(null, this.sharedRealm.isPartial());
        } else {
            osCollectionChangeSet = new OsCollectionChangeSet(j, !isLoaded(), null, this.sharedRealm.isPartial());
        }
        if (!osCollectionChangeSet.isEmpty() || !isLoaded()) {
            this.loaded = true;
            this.observerPairs.foreach(new ObservableCollection.Callback(osCollectionChangeSet));
        }
    }

    public Mode getMode() {
        return Mode.getByValue(nativeGetMode(this.nativePtr));
    }

    public boolean isLoaded() {
        return this.loaded;
    }

    public void load() {
        if (!this.loaded) {
            nativeEvaluateQueryIfNeeded(this.nativePtr, false);
            notifyChangeListeners(0);
        }
    }
}
