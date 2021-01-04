package io.fabric.sdk.android;

public interface InitializationCallback<T> {
    public static final InitializationCallback EMPTY = new Empty();

    void failure(Exception exc);

    void success(T t);

    public static class Empty implements InitializationCallback<Object> {
        @Override // io.fabric.sdk.android.InitializationCallback
        public void failure(Exception exc) {
        }

        @Override // io.fabric.sdk.android.InitializationCallback
        public void success(Object obj) {
        }

        private Empty() {
        }
    }
}
