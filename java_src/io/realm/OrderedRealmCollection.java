package io.realm;

import java.util.List;
import javax.annotation.Nullable;

public interface OrderedRealmCollection<E> extends List<E>, RealmCollection<E> {
    OrderedRealmCollectionSnapshot<E> createSnapshot();

    boolean deleteFirstFromRealm();

    void deleteFromRealm(int i);

    boolean deleteLastFromRealm();

    @Nullable
    E first();

    @Nullable
    E first(@Nullable E e);

    @Nullable
    E last();

    @Nullable
    E last(@Nullable E e);

    RealmResults<E> sort(String str);

    RealmResults<E> sort(String str, Sort sort);

    RealmResults<E> sort(String str, Sort sort, String str2, Sort sort2);

    RealmResults<E> sort(String[] strArr, Sort[] sortArr);
}
