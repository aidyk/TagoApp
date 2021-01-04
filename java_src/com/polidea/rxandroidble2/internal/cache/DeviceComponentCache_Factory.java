package com.polidea.rxandroidble2.internal.cache;

import bleshadow.dagger.internal.Factory;

public final class DeviceComponentCache_Factory implements Factory<DeviceComponentCache> {
    private static final DeviceComponentCache_Factory INSTANCE = new DeviceComponentCache_Factory();

    @Override // bleshadow.javax.inject.Provider
    public DeviceComponentCache get() {
        return new DeviceComponentCache();
    }

    public static DeviceComponentCache_Factory create() {
        return INSTANCE;
    }
}
