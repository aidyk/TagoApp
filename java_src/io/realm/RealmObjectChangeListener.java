package io.realm;

import io.realm.RealmModel;
import javax.annotation.Nullable;

public interface RealmObjectChangeListener<T extends RealmModel> {
    void onChange(T t, @Nullable ObjectChangeSet objectChangeSet);
}
