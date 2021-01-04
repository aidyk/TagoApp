package com.polidea.rxandroidble2.internal.scan;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;

public final class AndroidScanObjectsConverter_Factory implements Factory<AndroidScanObjectsConverter> {
    private final Provider<Integer> deviceSdkProvider;

    public AndroidScanObjectsConverter_Factory(Provider<Integer> provider) {
        this.deviceSdkProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public AndroidScanObjectsConverter get() {
        return new AndroidScanObjectsConverter(this.deviceSdkProvider.get().intValue());
    }

    public static AndroidScanObjectsConverter_Factory create(Provider<Integer> provider) {
        return new AndroidScanObjectsConverter_Factory(provider);
    }
}
