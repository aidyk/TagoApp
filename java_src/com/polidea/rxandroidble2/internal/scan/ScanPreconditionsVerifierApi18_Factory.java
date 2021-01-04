package com.polidea.rxandroidble2.internal.scan;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.util.LocationServicesStatus;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;

public final class ScanPreconditionsVerifierApi18_Factory implements Factory<ScanPreconditionsVerifierApi18> {
    private final Provider<LocationServicesStatus> locationServicesStatusProvider;
    private final Provider<RxBleAdapterWrapper> rxBleAdapterWrapperProvider;

    public ScanPreconditionsVerifierApi18_Factory(Provider<RxBleAdapterWrapper> provider, Provider<LocationServicesStatus> provider2) {
        this.rxBleAdapterWrapperProvider = provider;
        this.locationServicesStatusProvider = provider2;
    }

    @Override // bleshadow.javax.inject.Provider
    public ScanPreconditionsVerifierApi18 get() {
        return new ScanPreconditionsVerifierApi18(this.rxBleAdapterWrapperProvider.get(), this.locationServicesStatusProvider.get());
    }

    public static ScanPreconditionsVerifierApi18_Factory create(Provider<RxBleAdapterWrapper> provider, Provider<LocationServicesStatus> provider2) {
        return new ScanPreconditionsVerifierApi18_Factory(provider, provider2);
    }
}
