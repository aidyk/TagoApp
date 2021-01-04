package io.realm;

public interface RealmAsyncTask {
    void cancel();

    boolean isCancelled();
}
