package io.realm;

public interface OrderedRealmCollectionChangeListener<T> {
    void onChange(T t, OrderedCollectionChangeSet orderedCollectionChangeSet);
}
