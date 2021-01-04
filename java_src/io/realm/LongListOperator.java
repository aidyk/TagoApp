package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;

/* access modifiers changed from: package-private */
/* compiled from: RealmList */
public final class LongListOperator<T> extends ManagedListOperator<T> {
    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    LongListOperator(BaseRealm baseRealm, OsList osList, Class<T> cls) {
        super(baseRealm, osList, cls);
    }

    @Override // io.realm.ManagedListOperator
    @Nullable
    public T get(int i) {
        T t = (T) ((Long) this.osList.getValue((long) i));
        if (t == null) {
            return null;
        }
        if (this.clazz == Long.class) {
            return t;
        }
        if (this.clazz == Integer.class) {
            return (T) this.clazz.cast(Integer.valueOf(t.intValue()));
        }
        if (this.clazz == Short.class) {
            return (T) this.clazz.cast(Short.valueOf(t.shortValue()));
        }
        if (this.clazz == Byte.class) {
            return (T) this.clazz.cast(Byte.valueOf(t.byteValue()));
        }
        throw new IllegalStateException("Unexpected element type: " + this.clazz.getName());
    }

    /* access modifiers changed from: protected */
    @Override // io.realm.ManagedListOperator
    public void checkValidValue(@Nullable Object obj) {
        if (obj != null && !(obj instanceof Number)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Long, java.lang.Integer, java.lang.Short, java.lang.Byte", obj.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object obj) {
        this.osList.addLong(((Number) obj).longValue());
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int i, Object obj) {
        this.osList.insertLong((long) i, ((Number) obj).longValue());
    }

    /* access modifiers changed from: protected */
    @Override // io.realm.ManagedListOperator
    public void setValue(int i, Object obj) {
        this.osList.setLong((long) i, ((Number) obj).longValue());
    }
}
