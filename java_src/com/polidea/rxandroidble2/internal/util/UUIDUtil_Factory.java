package com.polidea.rxandroidble2.internal.util;

import bleshadow.dagger.internal.Factory;

public final class UUIDUtil_Factory implements Factory<UUIDUtil> {
    private static final UUIDUtil_Factory INSTANCE = new UUIDUtil_Factory();

    @Override // bleshadow.javax.inject.Provider
    public UUIDUtil get() {
        return new UUIDUtil();
    }

    public static UUIDUtil_Factory create() {
        return INSTANCE;
    }
}
