package io.realm;

public interface RealmChangeListener<T> {
    void onChange(T t);
}
