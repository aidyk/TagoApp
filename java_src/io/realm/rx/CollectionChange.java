package io.realm.rx;

import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollection;
import javax.annotation.Nullable;

public class CollectionChange<E extends OrderedRealmCollection> {
    private final OrderedCollectionChangeSet changeset;
    private final E collection;

    public CollectionChange(E e, @Nullable OrderedCollectionChangeSet orderedCollectionChangeSet) {
        this.collection = e;
        this.changeset = orderedCollectionChangeSet;
    }

    public E getCollection() {
        return this.collection;
    }

    @Nullable
    public OrderedCollectionChangeSet getChangeset() {
        return this.changeset;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CollectionChange collectionChange = (CollectionChange) obj;
        if (!this.collection.equals(collectionChange.collection)) {
            return false;
        }
        if (this.changeset != null) {
            return this.changeset.equals(collectionChange.changeset);
        }
        if (collectionChange.changeset == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.collection.hashCode() * 31) + (this.changeset != null ? this.changeset.hashCode() : 0);
    }
}
