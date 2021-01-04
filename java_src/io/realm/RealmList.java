package io.realm;

import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.realm.internal.InvalidRow;
import io.realm.internal.OsList;
import io.realm.internal.OsResults;
import io.realm.internal.RealmObjectProxy;
import io.realm.rx.CollectionChange;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public class RealmList<E> extends AbstractList<E> implements OrderedRealmCollection<E> {
    static final String ALLOWED_ONLY_FOR_REALM_MODEL_ELEMENT_MESSAGE = "This feature is available only when the element type is implementing RealmModel.";
    private static final String ONLY_IN_MANAGED_MODE_MESSAGE = "This method is only available in managed mode.";
    private static final String REMOVE_OUTSIDE_TRANSACTION_ERROR = "Objects can only be removed from inside a write transaction.";
    @Nullable
    protected String className;
    @Nullable
    protected Class<E> clazz;
    private final ManagedListOperator<E> osListOperator;
    protected final BaseRealm realm;
    private List<E> unmanagedList;

    @Override // io.realm.RealmCollection
    public boolean isLoaded() {
        return true;
    }

    @Override // io.realm.RealmCollection
    public boolean load() {
        return true;
    }

    public RealmList() {
        this.realm = null;
        this.osListOperator = null;
        this.unmanagedList = new ArrayList();
    }

    public RealmList(E... eArr) {
        if (eArr != null) {
            this.realm = null;
            this.osListOperator = null;
            this.unmanagedList = new ArrayList(eArr.length);
            Collections.addAll(this.unmanagedList, eArr);
            return;
        }
        throw new IllegalArgumentException("The objects argument cannot be null");
    }

    RealmList(Class<E> cls, OsList osList, BaseRealm baseRealm) {
        this.clazz = cls;
        this.osListOperator = getOperator(baseRealm, osList, cls, null);
        this.realm = baseRealm;
    }

    RealmList(String str, OsList osList, BaseRealm baseRealm) {
        this.realm = baseRealm;
        this.className = str;
        this.osListOperator = getOperator(baseRealm, osList, null, str);
    }

    /* access modifiers changed from: package-private */
    public OsList getOsList() {
        return this.osListOperator.getOsList();
    }

    @Override // io.realm.internal.ManagableObject, io.realm.RealmCollection
    public boolean isValid() {
        if (this.realm == null) {
            return true;
        }
        if (this.realm.isClosed()) {
            return false;
        }
        return isAttached();
    }

    @Override // io.realm.internal.ManagableObject, io.realm.RealmCollection
    public boolean isManaged() {
        return this.realm != null;
    }

    private boolean isAttached() {
        return this.osListOperator != null && this.osListOperator.isValid();
    }

    @Override // java.util.List, java.util.AbstractList
    public void add(int i, @Nullable E e) {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.insert(i, e);
        } else {
            this.unmanagedList.add(i, e);
        }
        this.modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList
    public boolean add(@Nullable E e) {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.append(e);
        } else {
            this.unmanagedList.add(e);
        }
        this.modCount++;
        return true;
    }

    @Override // java.util.List, java.util.AbstractList
    public E set(int i, @Nullable E e) {
        if (!isManaged()) {
            return this.unmanagedList.set(i, e);
        }
        checkValidRealm();
        return this.osListOperator.set(i, e);
    }

    public void move(int i, int i2) {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.move(i, i2);
            return;
        }
        int size = this.unmanagedList.size();
        if (i < 0 || size <= i) {
            throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + size);
        } else if (i2 < 0 || size <= i2) {
            throw new IndexOutOfBoundsException("Invalid index " + i2 + ", size is " + size);
        } else {
            this.unmanagedList.add(i2, this.unmanagedList.remove(i));
        }
    }

    public void clear() {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.removeAll();
        } else {
            this.unmanagedList.clear();
        }
        this.modCount++;
    }

    @Override // java.util.List, java.util.AbstractList
    public E remove(int i) {
        E e;
        if (isManaged()) {
            checkValidRealm();
            e = get(i);
            this.osListOperator.remove(i);
        } else {
            e = this.unmanagedList.remove(i);
        }
        this.modCount++;
        return e;
    }

    @Override // java.util.List
    public boolean remove(@Nullable Object obj) {
        if (!isManaged() || this.realm.isInTransaction()) {
            return super.remove(obj);
        }
        throw new IllegalStateException(REMOVE_OUTSIDE_TRANSACTION_ERROR);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        if (!isManaged() || this.realm.isInTransaction()) {
            return super.removeAll(collection);
        }
        throw new IllegalStateException(REMOVE_OUTSIDE_TRANSACTION_ERROR);
    }

    @Override // io.realm.OrderedRealmCollection
    public boolean deleteFirstFromRealm() {
        if (!isManaged()) {
            throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
        } else if (this.osListOperator.isEmpty()) {
            return false;
        } else {
            deleteFromRealm(0);
            this.modCount++;
            return true;
        }
    }

    @Override // io.realm.OrderedRealmCollection
    public boolean deleteLastFromRealm() {
        if (!isManaged()) {
            throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
        } else if (this.osListOperator.isEmpty()) {
            return false;
        } else {
            this.osListOperator.deleteLast();
            this.modCount++;
            return true;
        }
    }

    @Override // java.util.List, java.util.AbstractList
    @Nullable
    public E get(int i) {
        if (!isManaged()) {
            return this.unmanagedList.get(i);
        }
        checkValidRealm();
        return this.osListOperator.get(i);
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
        if (isManaged()) {
            checkValidRealm();
            if (!this.osListOperator.isEmpty()) {
                return get(0);
            }
        } else if (this.unmanagedList != null && !this.unmanagedList.isEmpty()) {
            return this.unmanagedList.get(0);
        }
        if (!z) {
            return e;
        }
        throw new IndexOutOfBoundsException("The list is empty.");
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
        if (isManaged()) {
            checkValidRealm();
            if (!this.osListOperator.isEmpty()) {
                return get(this.osListOperator.size() - 1);
            }
        } else if (this.unmanagedList != null && !this.unmanagedList.isEmpty()) {
            return this.unmanagedList.get(this.unmanagedList.size() - 1);
        }
        if (!z) {
            return e;
        }
        throw new IndexOutOfBoundsException("The list is empty.");
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str) {
        return sort(str, Sort.ASCENDING);
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str, Sort sort) {
        if (isManaged()) {
            return where().sort(str, sort).findAll();
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str, Sort sort, String str2, Sort sort2) {
        return sort(new String[]{str, str2}, new Sort[]{sort, sort2});
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String[] strArr, Sort[] sortArr) {
        if (isManaged()) {
            return where().sort(strArr, sortArr).findAll();
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.OrderedRealmCollection
    public void deleteFromRealm(int i) {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.delete(i);
            this.modCount++;
            return;
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    public int size() {
        if (!isManaged()) {
            return this.unmanagedList.size();
        }
        checkValidRealm();
        return this.osListOperator.size();
    }

    @Override // io.realm.RealmCollection
    public RealmQuery<E> where() {
        if (isManaged()) {
            checkValidRealm();
            if (this.osListOperator.forRealmModel()) {
                return RealmQuery.createQueryFromList(this);
            }
            throw new UnsupportedOperationException(ALLOWED_ONLY_FOR_REALM_MODEL_ELEMENT_MESSAGE);
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Number min(String str) {
        return where().min(str);
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Number max(String str) {
        return where().max(str);
    }

    @Override // io.realm.RealmCollection
    public Number sum(String str) {
        return where().sum(str);
    }

    @Override // io.realm.RealmCollection
    public double average(String str) {
        return where().average(str);
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Date maxDate(String str) {
        return where().maximumDate(str);
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Date minDate(String str) {
        return where().minimumDate(str);
    }

    @Override // io.realm.RealmCollection
    public boolean deleteAllFromRealm() {
        if (isManaged()) {
            checkValidRealm();
            if (this.osListOperator.isEmpty()) {
                return false;
            }
            this.osListOperator.deleteAll();
            this.modCount++;
            return true;
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.RealmCollection
    public boolean contains(@Nullable Object obj) {
        if (!isManaged()) {
            return this.unmanagedList.contains(obj);
        }
        this.realm.checkIfValid();
        if (!(obj instanceof RealmObjectProxy) || ((RealmObjectProxy) obj).realmGet$proxyState().getRow$realm() != InvalidRow.INSTANCE) {
            return super.contains(obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, java.lang.Iterable
    @Nonnull
    public Iterator<E> iterator() {
        if (isManaged()) {
            return new RealmItr();
        }
        return super.iterator();
    }

    @Override // java.util.List, java.util.AbstractList
    @Nonnull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List, java.util.AbstractList
    @Nonnull
    public ListIterator<E> listIterator(int i) {
        if (isManaged()) {
            return new RealmListItr(i);
        }
        return super.listIterator(i);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void checkValidRealm() {
        this.realm.checkIfValid();
    }

    @Override // io.realm.OrderedRealmCollection
    public OrderedRealmCollectionSnapshot<E> createSnapshot() {
        if (isManaged()) {
            checkValidRealm();
            if (!this.osListOperator.forRealmModel()) {
                throw new UnsupportedOperationException(ALLOWED_ONLY_FOR_REALM_MODEL_ELEMENT_MESSAGE);
            } else if (this.className != null) {
                return new OrderedRealmCollectionSnapshot<>(this.realm, OsResults.createFromQuery(this.realm.sharedRealm, this.osListOperator.getOsList().getQuery()), this.className);
            } else {
                return new OrderedRealmCollectionSnapshot<>(this.realm, OsResults.createFromQuery(this.realm.sharedRealm, this.osListOperator.getOsList().getQuery()), this.clazz);
            }
        } else {
            throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        if (!isManaged()) {
            sb.append("RealmList<?>@[");
            int size = size();
            while (i < size) {
                E e = get(i);
                if (e instanceof RealmModel) {
                    sb.append(System.identityHashCode(e));
                } else if (e instanceof byte[]) {
                    sb.append("byte[");
                    sb.append(((byte[]) e).length);
                    sb.append("]");
                } else {
                    sb.append((Object) e);
                }
                sb.append(",");
                i++;
            }
            if (size() > 0) {
                sb.setLength(sb.length() - ",".length());
            }
            sb.append("]");
        } else {
            sb.append("RealmList<");
            if (this.className != null) {
                sb.append(this.className);
            } else if (isClassForRealmModel(this.clazz)) {
                sb.append(this.realm.getSchema().getSchemaForClass(this.clazz).getClassName());
            } else if (this.clazz == byte[].class) {
                sb.append(this.clazz.getSimpleName());
            } else {
                sb.append(this.clazz.getName());
            }
            sb.append(">@[");
            if (!isAttached()) {
                sb.append("invalid");
            } else if (isClassForRealmModel(this.clazz)) {
                while (i < size()) {
                    sb.append(get(i).realmGet$proxyState().getRow$realm().getIndex());
                    sb.append(",");
                    i++;
                }
                if (size() > 0) {
                    sb.setLength(sb.length() - ",".length());
                }
            } else {
                while (i < size()) {
                    E e2 = get(i);
                    if (e2 instanceof byte[]) {
                        sb.append("byte[");
                        sb.append(((byte[]) e2).length);
                        sb.append("]");
                    } else {
                        sb.append((Object) e2);
                    }
                    sb.append(",");
                    i++;
                }
                if (size() > 0) {
                    sb.setLength(sb.length() - ",".length());
                }
            }
            sb.append("]");
        }
        return sb.toString();
    }

    public Flowable<RealmList<E>> asFlowable() {
        if (this.realm instanceof Realm) {
            return this.realm.configuration.getRxFactory().from((Realm) this.realm, this);
        }
        if (this.realm instanceof DynamicRealm) {
            return this.realm.configuration.getRxFactory().from((DynamicRealm) this.realm, this);
        }
        throw new UnsupportedOperationException(this.realm.getClass() + " does not support RxJava2.");
    }

    public Observable<CollectionChange<RealmList<E>>> asChangesetObservable() {
        if (this.realm instanceof Realm) {
            return this.realm.configuration.getRxFactory().changesetsFrom((Realm) this.realm, this);
        }
        if (this.realm instanceof DynamicRealm) {
            return this.realm.configuration.getRxFactory().changesetsFrom((DynamicRealm) this.realm, this);
        }
        throw new UnsupportedOperationException(this.realm.getClass() + " does not support RxJava2.");
    }

    private void checkForAddRemoveListener(@Nullable Object obj, boolean z) {
        if (!z || obj != null) {
            this.realm.checkIfValid();
            this.realm.sharedRealm.capabilities.checkCanDeliverNotification("Listeners cannot be used on current thread.");
            return;
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    public void addChangeListener(OrderedRealmCollectionChangeListener<RealmList<E>> orderedRealmCollectionChangeListener) {
        checkForAddRemoveListener(orderedRealmCollectionChangeListener, true);
        this.osListOperator.getOsList().addListener(this, orderedRealmCollectionChangeListener);
    }

    public void removeChangeListener(OrderedRealmCollectionChangeListener<RealmList<E>> orderedRealmCollectionChangeListener) {
        checkForAddRemoveListener(orderedRealmCollectionChangeListener, true);
        this.osListOperator.getOsList().removeListener(this, orderedRealmCollectionChangeListener);
    }

    public void addChangeListener(RealmChangeListener<RealmList<E>> realmChangeListener) {
        checkForAddRemoveListener(realmChangeListener, true);
        this.osListOperator.getOsList().addListener(this, realmChangeListener);
    }

    public void removeChangeListener(RealmChangeListener<RealmList<E>> realmChangeListener) {
        checkForAddRemoveListener(realmChangeListener, true);
        this.osListOperator.getOsList().removeListener(this, realmChangeListener);
    }

    public void removeAllChangeListeners() {
        checkForAddRemoveListener(null, false);
        this.osListOperator.getOsList().removeAllListeners();
    }

    /* access modifiers changed from: private */
    public class RealmItr implements Iterator<E> {
        int cursor;
        int expectedModCount;
        int lastRet;

        private RealmItr() {
            this.cursor = 0;
            this.lastRet = -1;
            this.expectedModCount = RealmList.this.modCount;
        }

        public boolean hasNext() {
            RealmList.this.checkValidRealm();
            checkConcurrentModification();
            return this.cursor != RealmList.this.size();
        }

        @Override // java.util.Iterator
        @Nullable
        public E next() {
            RealmList.this.checkValidRealm();
            checkConcurrentModification();
            int i = this.cursor;
            try {
                E e = (E) RealmList.this.get(i);
                this.lastRet = i;
                this.cursor = i + 1;
                return e;
            } catch (IndexOutOfBoundsException unused) {
                checkConcurrentModification();
                throw new NoSuchElementException("Cannot access index " + i + " when size is " + RealmList.this.size() + ". Remember to check hasNext() before using next().");
            }
        }

        public void remove() {
            RealmList.this.checkValidRealm();
            if (this.lastRet >= 0) {
                checkConcurrentModification();
                try {
                    RealmList.this.remove(this.lastRet);
                    if (this.lastRet < this.cursor) {
                        this.cursor--;
                    }
                    this.lastRet = -1;
                    this.expectedModCount = RealmList.this.modCount;
                } catch (IndexOutOfBoundsException unused) {
                    throw new ConcurrentModificationException();
                }
            } else {
                throw new IllegalStateException("Cannot call remove() twice. Must call next() in between.");
            }
        }

        /* access modifiers changed from: package-private */
        public final void checkConcurrentModification() {
            if (RealmList.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }
    }

    /* access modifiers changed from: private */
    public class RealmListItr extends RealmList<E>.RealmItr implements ListIterator<E> {
        RealmListItr(int i) {
            super();
            if (i < 0 || i > RealmList.this.size()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Starting location must be a valid index: [0, ");
                sb.append(RealmList.this.size() - 1);
                sb.append("]. Index was ");
                sb.append(i);
                throw new IndexOutOfBoundsException(sb.toString());
            }
            this.cursor = i;
        }

        public boolean hasPrevious() {
            return this.cursor != 0;
        }

        @Override // java.util.ListIterator
        @Nullable
        public E previous() {
            checkConcurrentModification();
            int i = this.cursor - 1;
            try {
                E e = (E) RealmList.this.get(i);
                this.cursor = i;
                this.lastRet = i;
                return e;
            } catch (IndexOutOfBoundsException unused) {
                checkConcurrentModification();
                throw new NoSuchElementException("Cannot access index less than zero. This was " + i + ". Remember to check hasPrevious() before using previous().");
            }
        }

        public int nextIndex() {
            return this.cursor;
        }

        public int previousIndex() {
            return this.cursor - 1;
        }

        @Override // java.util.ListIterator
        public void set(@Nullable E e) {
            RealmList.this.realm.checkIfValid();
            if (this.lastRet >= 0) {
                checkConcurrentModification();
                try {
                    RealmList.this.set(this.lastRet, e);
                    this.expectedModCount = RealmList.this.modCount;
                } catch (IndexOutOfBoundsException unused) {
                    throw new ConcurrentModificationException();
                }
            } else {
                throw new IllegalStateException();
            }
        }

        @Override // java.util.ListIterator
        public void add(@Nullable E e) {
            RealmList.this.realm.checkIfValid();
            checkConcurrentModification();
            try {
                int i = this.cursor;
                RealmList.this.add(i, e);
                this.lastRet = -1;
                this.cursor = i + 1;
                this.expectedModCount = RealmList.this.modCount;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    private static boolean isClassForRealmModel(Class<?> cls) {
        return RealmModel.class.isAssignableFrom(cls);
    }

    private ManagedListOperator<E> getOperator(BaseRealm baseRealm, OsList osList, @Nullable Class<E> cls, @Nullable String str) {
        if (cls == null || isClassForRealmModel(cls)) {
            return new RealmModelListOperator(baseRealm, osList, cls, str);
        }
        if (cls == String.class) {
            return new StringListOperator(baseRealm, osList, cls);
        }
        if (cls == Long.class || cls == Integer.class || cls == Short.class || cls == Byte.class) {
            return new LongListOperator(baseRealm, osList, cls);
        }
        if (cls == Boolean.class) {
            return new BooleanListOperator(baseRealm, osList, cls);
        }
        if (cls == byte[].class) {
            return new BinaryListOperator(baseRealm, osList, cls);
        }
        if (cls == Double.class) {
            return new DoubleListOperator(baseRealm, osList, cls);
        }
        if (cls == Float.class) {
            return new FloatListOperator(baseRealm, osList, cls);
        }
        if (cls == Date.class) {
            return new DateListOperator(baseRealm, osList, cls);
        }
        throw new IllegalArgumentException("Unexpected value class: " + cls.getName());
    }
}
