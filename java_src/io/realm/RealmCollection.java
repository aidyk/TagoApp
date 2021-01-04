package io.realm;

import io.realm.internal.ManagableObject;
import java.util.Collection;
import java.util.Date;
import javax.annotation.Nullable;

public interface RealmCollection<E> extends Collection<E>, ManagableObject {
    double average(String str);

    boolean contains(@Nullable Object obj);

    boolean deleteAllFromRealm();

    boolean isLoaded();

    @Override // io.realm.internal.ManagableObject
    boolean isManaged();

    @Override // io.realm.internal.ManagableObject
    boolean isValid();

    boolean load();

    @Nullable
    Number max(String str);

    @Nullable
    Date maxDate(String str);

    @Nullable
    Number min(String str);

    @Nullable
    Date minDate(String str);

    Number sum(String str);

    RealmQuery<E> where();
}
