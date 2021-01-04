package com.polidea.rxandroidble2.internal;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;

public final class DeviceModule_ProvideMacAddressFactory implements Factory<String> {
    private final DeviceModule module;

    public DeviceModule_ProvideMacAddressFactory(DeviceModule deviceModule) {
        this.module = deviceModule;
    }

    @Override // bleshadow.javax.inject.Provider
    public String get() {
        return (String) Preconditions.checkNotNull(this.module.provideMacAddress(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static DeviceModule_ProvideMacAddressFactory create(DeviceModule deviceModule) {
        return new DeviceModule_ProvideMacAddressFactory(deviceModule);
    }

    public static String proxyProvideMacAddress(DeviceModule deviceModule) {
        return (String) Preconditions.checkNotNull(deviceModule.provideMacAddress(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
