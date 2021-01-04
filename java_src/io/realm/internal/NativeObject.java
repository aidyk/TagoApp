package io.realm.internal;

public interface NativeObject {
    public static final long NULLPTR = 0;

    long getNativeFinalizerPtr();

    long getNativePtr();
}
