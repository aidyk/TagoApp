package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;

/* access modifiers changed from: package-private */
/* compiled from: RealmList */
public final class FloatListOperator extends ManagedListOperator<Float> {
    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    FloatListOperator(BaseRealm baseRealm, OsList osList, Class<Float> cls) {
        super(baseRealm, osList, cls);
    }

    @Override // io.realm.ManagedListOperator
    @Nullable
    public Float get(int i) {
        return (Float) this.osList.getValue((long) i);
    }

    /* access modifiers changed from: protected */
    @Override // io.realm.ManagedListOperator
    public void checkValidValue(@Nullable Object obj) {
        if (obj != null && !(obj instanceof Number)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Number", obj.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object obj) {
        this.osList.addFloat(((Number) obj).floatValue());
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int i, Object obj) {
        this.osList.insertFloat((long) i, ((Number) obj).floatValue());
    }

    /* access modifiers changed from: protected */
    @Override // io.realm.ManagedListOperator
    public void setValue(int i, Object obj) {
        this.osList.setFloat((long) i, ((Number) obj).floatValue());
    }
}
