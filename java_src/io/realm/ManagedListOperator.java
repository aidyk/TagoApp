package io.realm;

import io.realm.internal.OsList;
import javax.annotation.Nullable;

/* access modifiers changed from: package-private */
/* compiled from: RealmList */
public abstract class ManagedListOperator<T> {
    static final String INVALID_OBJECT_TYPE_MESSAGE = "Unacceptable value type. Acceptable: %1$s, actual: %2$s .";
    static final String NULL_OBJECTS_NOT_ALLOWED_MESSAGE = "RealmList does not accept null values.";
    @Nullable
    final Class<T> clazz;
    final OsList osList;
    final BaseRealm realm;

    /* access modifiers changed from: protected */
    public abstract void appendValue(Object obj);

    /* access modifiers changed from: protected */
    public abstract void checkValidValue(@Nullable Object obj);

    public abstract boolean forRealmModel();

    @Nullable
    public abstract T get(int i);

    /* access modifiers changed from: protected */
    public abstract void insertValue(int i, Object obj);

    /* access modifiers changed from: protected */
    public abstract void setValue(int i, Object obj);

    ManagedListOperator(BaseRealm baseRealm, OsList osList2, @Nullable Class<T> cls) {
        this.realm = baseRealm;
        this.clazz = cls;
        this.osList = osList2;
    }

    public final OsList getOsList() {
        return this.osList;
    }

    public final boolean isValid() {
        return this.osList.isValid();
    }

    public final int size() {
        long size = this.osList.size();
        if (size < 2147483647L) {
            return (int) size;
        }
        return Integer.MAX_VALUE;
    }

    public final boolean isEmpty() {
        return this.osList.isEmpty();
    }

    public final void append(@Nullable Object obj) {
        checkValidValue(obj);
        if (obj == null) {
            appendNull();
        } else {
            appendValue(obj);
        }
    }

    private void appendNull() {
        this.osList.addNull();
    }

    public final void insert(int i, @Nullable Object obj) {
        checkValidValue(obj);
        if (obj == null) {
            insertNull(i);
        } else {
            insertValue(i, obj);
        }
    }

    /* access modifiers changed from: protected */
    public void insertNull(int i) {
        this.osList.insertNull((long) i);
    }

    @Nullable
    public final T set(int i, @Nullable Object obj) {
        checkValidValue(obj);
        T t = get(i);
        if (obj == null) {
            setNull(i);
        } else {
            setValue(i, obj);
        }
        return t;
    }

    /* access modifiers changed from: protected */
    public void setNull(int i) {
        this.osList.setNull((long) i);
    }

    /* access modifiers changed from: package-private */
    public final void move(int i, int i2) {
        this.osList.move((long) i, (long) i2);
    }

    /* access modifiers changed from: package-private */
    public final void remove(int i) {
        this.osList.remove((long) i);
    }

    /* access modifiers changed from: package-private */
    public final void removeAll() {
        this.osList.removeAll();
    }

    /* access modifiers changed from: package-private */
    public final void delete(int i) {
        this.osList.delete((long) i);
    }

    /* access modifiers changed from: package-private */
    public final void deleteLast() {
        this.osList.delete(this.osList.size() - 1);
    }

    /* access modifiers changed from: package-private */
    public final void deleteAll() {
        this.osList.deleteAll();
    }
}
