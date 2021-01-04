package com.polidea.rxandroidble2.internal.scan;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.RxBleDeviceProvider;

public final class InternalToExternalScanResultConverter_Factory implements Factory<InternalToExternalScanResultConverter> {
    private final Provider<RxBleDeviceProvider> deviceProvider;

    public InternalToExternalScanResultConverter_Factory(Provider<RxBleDeviceProvider> provider) {
        this.deviceProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public InternalToExternalScanResultConverter get() {
        return new InternalToExternalScanResultConverter(this.deviceProvider.get());
    }

    public static InternalToExternalScanResultConverter_Factory create(Provider<RxBleDeviceProvider> provider) {
        return new InternalToExternalScanResultConverter_Factory(provider);
    }
}
